Exploits = {}
Successes = {}
Config = {
        Restore = false,
        Bar = true
}
function AddExploit(name, hex, offset, func)
        table.insert(Exploits, { name, hex, offset, func })
end
function GetExploit(index)
        local tab = Exploits[index]
        local scan = createMemScan(true)
        memscan_returnOnlyOneResult(scan, true)
        memscan_firstScan(scan, soExactValue, vtByteArray, rtTruncated, table.concat(tab[2], " "), nil, 0, 0x00FFFFFF, "", fsmNotAligned, nil, false, false, false, false)
        memscan_waitTillDone(scan)
        local result = memscan_getOnlyResult(scan)
        if (result == nil) then return nil end
        result = result + tab[3]
        result = string.format("%x", result)
        result = string.rep("0", 8-#result) .. result
        return result
end
-- Exploit functions here
function HashChecker(addr)
        _, instruction = splitDisassembledString(disassemble(addr))
        local hcbyte = ""
        for i = 1, #instruction do
                if string.sub(instruction, i, i) == "[" then
                        hcbyte = string.sub(instruction, i+1, i+8)
                        break
                end
        end
        writeBytes(hcbyte, 0x00)
        print("Disabled - " .. hcbyte)
end
function ContextChanger(addr, arg)
        print("ContextChanger invoked.")
        local calladdr = string.format("%x", tonumber(addr, 16) + 2)
        _, callInstruction = splitDisassembledString(disassemble(calladdr))
        autoAssemble(string.format([[
                alloc(newmem,20)
                label(returnhere)
                newmem:
                mov [esi], %s
                %s
                jmp returnhere
                %s:
                jmp newmem
                db 90 90
                returnhere:
        ]], control_getCaption(Interface.ContextEdit), callInstruction, addr))
        print("Modified context")
end
function Hook(addr)
        local script
        if (Config.Restore) then
                Config.Restore = false
                writeBytes(addr, 0x83, 0xEC, 0x14, 0x56, 0x57)
                return
        end
        if Config.Bar then
                script = control_getCaption(Interface.ScriptEdit)
        else
                script = strings_getText(memo_getLines(Interface.Scripts))
        end
        print(script)
        local mem = string.format("%x", allocateSharedMemory("scropt", #script))
        mem = string.rep("0", 8-#mem) .. mem
        writeString(mem, script)
        local len = string.format("%x", #script)
        local assemble = string.format([[
        alloc(newmem,2048)
        label(returnhere)
        newmem:
        mov [esp+18], %s
        mov [esp+1C], %s
        sub esp,14
        push esi
        push edi
        jmp returnhere
        %s:
        jmp newmem
        returnhere:
        ]], mem, len, addr) -- >:3
        autoAssemble(assemble)
        print(addr)
end
function Noclip(addr)
        print(addr)
        if readBytes(addr, 1) == 0xFF then
                print("We're enabling it.")
                Config.LegitBytes = readBytes(addr, 7, true)
                writeBytes(addr, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90)
        else
                writeBytes(addr, Config.LegitBytes)
        end
end
function DisableOtherChecks(addr)
        print("Disabling other checks...")
        writeBytes(addr, 0xEB)
end
-- Exploit definitions here
AddExploit("noclip", { 0x56, 0x8B, 0xf1, 0x83, 0xf8, 0x18}, 12, Noclip)
AddExploit("level", { 0x89, 0x74, 0x24, 0x0C, 0x89, 0x06, 0xe8}, 4, ContextChanger)
AddExploit("script", { 0x83, 0xEC, 0x14, 0x56, 0x57, 0x8B, 0x7C, 0x24, 0x2C, 0x85, 0xFF}, 0, Hook)
AddExploit("hash", { 0x00, 0x51, 0x53, 0x56, 0x83, 0xCB, 0xFF}, 7, HashChecker)
AddExploit("checks", { 0xe4, 0xC7, 0x45, 0xfc, 00, 00, 00, 00, 0x85, 0xC0, 0x74}, 10, DisableOtherChecks)
--
print("Autoscanning for " .. tostring(#Exploits) .. " exploits...")
for i,v in pairs(Exploits) do
        local exploit = GetExploit(i)
        if (exploit == nil) then
                print("Failed to scan exploit " .. v[1])
        else
                print("Successful - " .. v[1] .. " is at " .. exploit)
                table.insert(Successes, {v[1], exploit, v[4]})
        end
end
showMessage(tostring(#Successes) .. " out of " .. tostring(#Exploits) .. " exploits could be found.")
--
function DoExploit(name)
        split = 0
        for i = 1, #name do
                if string.sub(name, i, i) == " " then
                        split = i
                        break
                end
        end
        if split ~= 0 then
                arg = string.sub(name, split+1)
                name = string.sub(name, 1, split-1)
        else
                arg = ""
        end
        print("name: " .. name .. "; arg: " .. arg)
        for i,v in pairs(Successes) do
                if v[1] == name then
                        v[3](v[2], arg)
                end
        end
end
--
Interface = {}
Interface.Frame = createForm(true)
control_setSize(Interface.Frame, 800, 500)
 
Interface.Script = createLabel(Interface.Frame)
control_setSize(Interface.Script, 400, 22)
control_setCaption(Interface.Script, "Command line - doesn't change context!")
control_setPosition(Interface.Script, 0, 7)
Interface.ScriptEdit = createEdit(Interface.Frame)
control_setPosition(Interface.ScriptEdit, 0, 22)
control_setSize(Interface.ScriptEdit, 360, 300)
Interface.ScriptBtn = createButton(Interface.Frame)
control_setPosition(Interface.ScriptBtn, 360, 22)
control_setCaption(Interface.ScriptBtn, ">")
control_setSize(Interface.ScriptBtn, 40, 22)
control_onClick(Interface.ScriptBtn, function() Config.Bar = true DoExploit("script") end)
 
Interface.Context = createLabel(Interface.Frame)
control_setSize(Interface.Context, 400, 22)
control_setPosition(Interface.Context, 0, 46)
control_setCaption(Interface.Context, "Context changer - doesn't have max; may crash if too high")
Interface.ContextEdit = createEdit(Interface.Frame)
control_setSize(Interface.ContextEdit, 360, 22)
control_setPosition(Interface.ContextEdit, 0, 60)
Interface.ContextBtn = createButton(Interface.Frame)
control_setSize(Interface.ContextBtn, 40, 22)
control_setPosition(Interface.ContextBtn, 360, 60)
control_setCaption(Interface.ContextBtn, ">")
control_onClick(Interface.ContextBtn, function() DoExploit("level") end)
 
Interface.Checkers = createButton(Interface.Frame)
control_setSize(Interface.Checkers, 400, 25)
control_setPosition(Interface.Checkers, 0, 85)
control_setCaption(Interface.Checkers, "Disable hash checker")
control_onClick(Interface.Checkers, function() DoExploit("hash") end)
 
Interface.Restore = createButton(Interface.Frame)
control_setSize(Interface.Restore, 400, 25)
control_setPosition(Interface.Restore, 0, 110)
control_setCaption(Interface.Restore, "Repair script execution")
control_onClick(Interface.Restore, function() Config.Restore = true DoExploit("script") end)
 
Interface.Exit = createButton(Interface.Frame)
control_setSize(Interface.Exit, 800, 25)
control_setPosition(Interface.Exit, 0, 475)
control_setCaption(Interface.Exit, "Exit current trainer")
 
Interface.Scripts = createMemo(Interface.Frame)
control_setSize(Interface.Scripts, 400, 450)
control_setPosition(Interface.Scripts, 400, 0)
memo_setScrollbars(Interface.Scripts, ssVertical)
 
Interface.Scripte = createButton(Interface.Frame)
control_setSize(Interface.Scripte, 400, 25)
control_setPosition(Interface.Scripte, 400, 450)
control_setCaption(Interface.Scripte, "Execute script")
control_onClick(Interface.Scripte, function()
        Config.Bar = false
        DoExploit("script")
end)