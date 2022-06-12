local ins=game:service'InsertService'
ins.AllowInsertFreeModels=true

function Insert(number)
    if ins.AllowInsertFreeModels==false then
        error'You cannot use this without AllowInsertFreeModels on!'
    else
        wait()
        ins:LoadAsset(number).Parent=workspace
    end
end
owner.Chatted:connect(function(msg)
    if msg:sub(1,1)=='/' then
        Insert(msg:sub(2,10))
    end
    end)