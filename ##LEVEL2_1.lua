--|------------------------------|--
--|	   Nicholas12323	 |--
--|------------------------------|--

local settings, process_opened, address = {
 ["process_name"]  = "RobloxPlayer.exe",
 ["byte_sequence"] = "50E88BF08D4D88C645FC0",
 ["alloc_address"] = "80000000",
 ["alloc_size"]    = "5000000",
 ["main_script"]   =

[=====================[

--|------------------------------|--
--|	   Nicholas12323         |--
--|------------------------------|--


script.Parent=nil;

game:service'Players'.LocalPlayer.Chatted:connect(function(msg)
	wait(0.001);
	loadstring(msg:match'load/(.+)')();
end);


--|------------------------------|--
--|        Nicholas12323         |--
--|------------------------------|--

]=====================]

},{}

stringlist_add(getAutoAttachList(),settings.process_name)

function onOpenProcess(process_id)
	if process_opened[process_id] then return end process_opened[process_id] = true
	address = stringlist_getString(AOBScan(settings.byte_sequence), 0)
	debugProcess(2); debug_setBreakpoint(address)
end

function debugger_onBreakpoint()
	if readBytes(EAX+0x3, 1) == 0x0A and readBytes(EAX+0x7, 1) == 0x66 and address then
		pause(); debug_removeBreakpoint(address)
		local alloc_result  = autoAssemble("alloc(_,"..settings.alloc_size..","..settings.alloc_address..")")
		local alloc_address = tonumber("0x0"..settings.alloc_address)
		local error_catch   = false
		if alloc_result and readBytes(alloc_address, 1) == 0x0 then
			local base_script = readString(EAX, 25000) or ""
			error_catch       = writeString(alloc_address, base_script..settings.main_script)
			EAX               = error_catch and alloc_address or EAX
			address           = nil
		end
		unpause()
		if not error_catch then
			messageDialog("Injection Failed!", 1, 2)
		end
	end
	return 1
end