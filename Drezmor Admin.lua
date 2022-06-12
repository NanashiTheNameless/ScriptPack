--[[Drezmor Admin]]--


main=function()
A={};
A.Data={};
A.Loads={};
A.Stuffs={};
A.Images={};
A.Frames={};
A.Service={};
A.Objects={};
A.Windows={};
A.UserData={};
A.Services={};
A.Commands={};
A.Functions={};
A.ObjectsData={};
A.Connections={};
A.SaidCommands={};

A.Images.Meme={};
A.ObjectsData.KnowProperties={};

A.ObjectsData.GlobalProperties={'Name';'className';'Parent';'archivable'};
A.ObjectsData.EspecialProperties={'Ip';'MaxExtents';'MembershipTypeReplicate';'ResizeIncrement';
    'MaxItems';'ResizeableFaces';'DataComplexity';'DataReady';'MembershipType';'AccountAge';
    'Neutral';'PlayerMouse';'Mouse';'Volume';'ip';'Ticket';'PlaceId';'JobId';'CreatorId';'location';
    'Adornee';'Port';'RobloxLocked';'DataCost';'BaseUrl';'RequestQueueSize';'AttachmentForward';
    'AttachmentPos';'AttachmentRight';'ScriptsDisabled';'AttachmentUp';'AnimationId';
    'HeadColor';'RightArmColor';'LeftArmColor';'TorsoColor';'LeftLegColor';'RightLegColor';
    'Value';'CameraType';'CameraSubject';'BaseTextureId';'BodyPart';'MeshId';'OverlayTextureId';
    'MaxActivationDistance';'Shiny';'Specular';'Texture';'Face';'GripForward';'GripPos';
    'GripRight';'GripUp';'TextureId';'TeamColor';'Enabled';'cframe';'CFrame';'BrickColor';
    'Material';'Reflectance';'Transparency';'Position';'RotVelocity';'Velocity';'Anchored';
    'CanCollide';'Locked';'Elasticity';'Friction';'Shape';'Size';'formFactor';'BackSurface';
    'BottomSurface';'FrontSurface';'LeftSurface';'RightSurface';'TopSurface';'AbsolutePosition';
    'AbsoluteSize';'Active';'BackgroundColor3';'BackgroundTransparency';'BorderColor3';
    'BorderSizePixel';'SizeConstraint';'Visible';'ZIndex';'C0';'C1';'Part0';'Part1';'BinType';
    'LeftLeg';'RightLeg';'Torso';'Health';'MaxHealth';'WalkSpeed';'Jump';'PlatformStand';
    'Sit';'AutoButtonColor';'Image';'LinkedSource';'Disabled';'Text';'PrimaryPart';
    'CurrentAngle';'DesiredAngle';'MaxVelocity';'PantsTemplate';'ShirtTemplate';'SoundId';
    'Pitch';'IsPlaying';'IsPaused';'Looped';'PlayOnRemove';'StudsPerTileU';'StudsPerTileV';
    'userId';'BubbleChat';'ClassicChat';'MaxPlayers';'NumPlayers';'LocalPlayer';
    'CharacterAppearance';'Character';'CurrentCamera';'Ambient';'Brightness';
    'ColorShift_Bottom';'ColorShift_Top';'ShadowColor';'GeographicLatitude';'TimeOfDay';
    'AmbientReverb';'DistanceFactor';'DopplerScale';'RolloffScale';'Source';'Scale';
    'Vertex';'TextStrokeTransparency';'TextStrokeColor3';'TextFits';'ClipsDescendants';
    'From';'To';'Icon';'FogEnd';'FogStart';'FogColor';'CameraMode';'FieldOfView'
};


A.Images.Meme={
    megusta=47594659;
    sparta=74142203;
    sovpax=60298055;
    ujelly=48989071;
    smile2=63175216;
    smile3=63186465;
    troll=45120559;
    horse=62079221;
    angry=48258623;
    orzse=62677682;
    smile=63174888;
    rofl=47595647;
    okey=62830600;
    yeaw=53646377;
    here=62677045;
    har=48260066;
    sun=47596170;
    lol=48293007;
    sad=53645378;
    lin=48290678;
    sls=53646388;
    j1d=45031979;
    jim=74885351;
};



--[[Datas]]
A.Data.Http='http://www.roblox.com/Asset/?id=';
A.Data.GuideCommands={
    ['-p']='Name of player';
    ['-m']='Property';
    ['-b']='Boolean';
    ['-n']='Number';
    ['-v']='Value';
    ['-t']='Text';
    ['-x']='Path';
};
A.Data.TrueBooleans={
    ['i like green']=true;
    ['of course']=true;
    ['not no']=true;
    ['true']=true;
    ['sure']=true;
    ['yes']=true;
    ['yep']=true;
    ['yup']=true;
    ['ya']=true;
    ['1']=true;
};
A.Data.CharVirus={
    ['Shirt Graphic']='ShirtGraphic';
    ['RobloxTeam']='Script';
    ['Sound']='Script';
--    ['']='';
};
A.Data.MenuButtonEnter=73694394;
A.Data.MenuButtonLeave=73764986;
A.Data.Step=[[;]];
A.Data.Start=[[']];
A.Data.Wrap=[[ & ]];
A.Data.Repeat=[[##]];





--[[Safe services]]
for i,v in next,{
    'ControllerService';
    'InsertService';
    'ScriptContext';
    'Workspace';
    'Lighting';
    'CoreGui';
    'Players';
    'Debris';
    'Visit';
    'Teams';
    }do
    A.Service[v],i,v=game:service(v),nil;
end;



--[[Stuffs]]
A.Stuffs.Security=pcall(function()return game.RobloxLocked;end);




--[[First functions]]
A.X=function(Function)
    return coroutine.resume(coroutine.create(Function));
end;
A.Run=function(Function,...)
    if(A.Functions[Function])then
        return A.Functions[Function](...);
    else
        print('ERROR: "'..Function..'" is not exist!');
    end;
    Function=nil;
end;
A.Wrap=function(Function,...)
    coroutine.wrap(Function)(...);
end;
A.XWrap=function(Function,...)
    pcall(coroutine.wrap(Function),...);
end;
A.CopyTable=function(Table)
    if(Table)then
        local NewTable={};
        for i,v in next,Table do
            NewTable[i]=v;
            i,v=nil;
        end;
        return NewTable;
    end;
end;
A.Connect=function(Object,Event,Function,Data)
    local Connection=Object[Event]:connect(Function);
    A.Connections[#A.Connections+1]=Connection;
    Data=Data or A.Run('GetObjectData',Object);
    if(Data)then
        Data.Connections[#Data.Connections+1]=Connection;
    end;
    Object,Event,Function,Data=nil;
end;
A.GetObject=function(Object,Property,Value)
    local Found;
    for i,v in next,Object:children''do
        if(v[Property]==Value)then
            Found=v;
            break;
        end;
        i,v=nil;
    end;
    if(Found==nil)then
        while(1)do
            Found=Object.ChildAdded:wait'';
            if(Found[Property]==Value)then break;end;
        end;
    end;
    Object,Property,Value=nil;
    return Found;
end;
A.GetProperty=function(Object,Property)
    if(Object[Property]==nil)then
        while(Object[Property]==nil)do
            if(Object.Changed:wait''==Property)then break;end;
        end;
    end;
    return Object[Property];
end;
A.Peace=function(Object,Properties)
    if(type(Object)=='string')then Object=A.Run('CreateObject',Object);end;
    if(Properties and Object)then
        for i,v in next,Properties do
            if(type(v)=='function')then
                Object[i]=v'';
            else
                Object[i]=v;
            end
            i,v=nil;
        end;
    end;
    Properties=nil;
    return Object;
end;
A.Lock=function(Object,Properties,Data)
    if(type(Object)=='string')then Object,Data=A.Instance.new(Object);end;
    if(Data==nil)then Data=A.Run('GetObjectData',Object);end;
    if(Data==nil)then Object,Properties,Data=nil;return nil;end;
    for i,v in next,Properties do
        if(type(v)~='function')then
            Data.Properties[i]=function()return v;end;
        else
            Data.Properties[i]=v;
        end;
        i=nil;
    end
    A.Peace(Object,Properties);
    Properties=nil;
    return Object,Data;
end;



--[[Safe global tables]]
for i,v in next,{
        'BrickColor';
        'Instance';
        'Vector3';
        'CFrame';
        'Color3';
        'UDim2';
    }do
    A[v]=A.CopyTable(loadstring('return '..v)'');
    if(A[v]['Dr. Alakazard - new']==nil)then
        A[v]['Dr. Alakazard - new']=A[v].new;
    end;
    i,v=nil;
end;


A.Instance.new=function(Class,Parent)
    local Object,Data=A.Run('AddObjectData',A.Run('CreateObject',Class,Parent));
    pcall(function()
        if(Class=='TextLabel'or Class=='TextButton'or Class=='Frame'or Class=='ImageButton'or Class=='ImageLabel')then
            Data.Properties.BackgroundTransparency=function()return .5;end;
            Data.Properties.BackgroundColor3=function()return A.Color3.Black;end;
            Data.Properties.BorderSizePixel=function()return 0 end;
        end;
        Data.Properties.Archivable=function()return false;end;
        Data.Properties.archivable=function()return false;end;
        Data.Properties.Name=function()return'';end;
        A.Peace(Object,Data.Properties);
    end);
    Class,Parent=nil;
    return Object,Data;
end;

A.BrickColor.Black=A.BrickColor.new'1003';
A.BrickColor.White=A.BrickColor.new'1001';

A.CFrame.Pax=A.CFrame.new(0,0,0);

A.Vector3.Char=A.Vector3.new(0,3.5);
A.Vector3.Jump=A.Vector3.new(0,100);
A.Vector3.Pax=A.Vector3.new'';

A.Color3.Grey=A.Color3.new(.5,.5,.5);
A.Color3.White=A.Color3.new(1,1,1);
A.Color3.DarkRed=A.Color3.new(.7);
A.Color3.Black=A.Color3.new'';

A.UDim2.Full=A.UDim2.new(1,0,1);
A.UDim2.Pax=A.UDim2.new'';




--[[Something...]]
A.Data.CharacterLimbs={
    ['Torso']={
        Size=A.Vector3.new(2,2,1);
    };
    ['Head']={
        C1=A.CFrame.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0);
        C0=A.CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0);
        Size=A.Vector3.new(2,1,1);
        Name='Neck';
    };
    ['Right Arm']={
        C1=A.CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0);
        C0=A.CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0);
        Size=A.Vector3.new(1,2,1);
        Name='Right Shoulder'
    };
    ['Right Leg']={
        C1=A.CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0);
        C0=A.CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);
        Size=A.Vector3.new(1,2,1);
        Name='Right Hip'
    };
    ['Left Arm']={
        C1=A.CFrame.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0);
        C0=A.CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0);
        Size=A.Vector3.new(1,2,1);
        Name='Left Shoulder'
    };
    ['Left Leg']={
        C1=A.CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);
        C0=A.CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0);
        Size=A.Vector3.new(1,2,1);
        Name='Left Hip'
    };
};





--[[Functions]]
A.Functions.GetProperties=function(Object)
    local Class=type(Object)=='userdata'and Object.className or Object
    if(A.ObjectsData.KnowProperties[Class]==nil)then
        if(type(Object)=='string')then
            Object=A.Run('CreateObject',Object);
        end;
        local New={};
        for i,v in next,A.ObjectsData.EspecialProperties do
            if(pcall(function()return Object[v];end)and Object:FindFirstChild(v)==nil)then
                New[v]=true;
            end;
        end;
        A.ObjectsData.KnowProperties[Class]=New;
    end;
    Object=nil;
    return A.ObjectsData.KnowProperties[Class];
end;
A.Functions.ToBoolean=function(Text)
    if(Text)then
        return(A.Data.TrueBooleans[Text:lower'']==true)and true or nil;
    end;
end;
A.Functions.CreateObject=A.Instance['Dr. Alakazard - new']or Instance.new;
A.Functions.GetObjectData=function(Object)
    if(Object)then
        local Table=A.Objects[Object.className];
        if(Table)then
            local v;
            for i=1,#Table do
                v=Table[i];
                if(v.Object==Object)then
                    v.Rank=i;
                    Object=nil;
                    return v;
                end;
                i=nil;
            end;
        end;
        Object=nil;
    end;
    return nil;
end;
A.Functions.AddObjectData=function(Object)
    if(Object)then
    if(A.Run('GetObjectData',Object)==nil)then
        local Class=Object.className;
        if(A.Objects[Class]==nil)then A.Objects[Class]={};end;
        local Table={};
        Table.Object=Object;
        Table.Properties={};
        Table.Connections={};
        Table.Rank=#A.Objects[Class]+1;
        Table.Mother=function()return A.Objects[Class];end;

        A.Objects[Class][Table.Rank]=Table;

        A.Connect(Object,'Changed',function(Property)
            local Health
            if(Table.Properties[Property]~=nil)then
                Health=Table.Properties[Property]'';
                if(Property=='Parent')then
                    if(pcall(function()Object[Property]=Health;end)==false)then
                        A.Run('CleanObjectData',Object);
                    end;
                else
                    Object[Property]=Health;
                end;
            end;
            Property,Health=nil;
        end,Table);

        return Object,Table;

    end;
    end;
    return nil;
end;
A.Functions.CleanObjectData=function(Object)
    local Data=A.Run('GetObjectData',Object);
    if(Data)then
        for i=1,#Data.Connections do
            Data.Connections[i]:disconnect'';
            i=nil;
        end;
        table.remove(Data.Mother'',Data.Rank);
        Data=nil;
    end;
    return Object;
end;
A.Functions.Remove=function(Object)
    if(Object)then
        pcall(function()
            Object.Parent=nil;
        end);
        Object=nil;
    end;
end;
A.Functions.Destroy=function(Object)
    if(Object)then
        pcall(function()
            Object.Parent=nil;
            Object:Destroy'';
        end);
        Object=nil;
    end;
end;
A.Functions.Uninstall=function()
    if(UDim['Dr. Alakazard - Connections'])then
        for i,v in next,UDim['Dr. Alakazard - Connections']do
            v:disconnect'';
            i,v=nil;
        end;
    end;
    if(UDim['Dr. Alakazard - Objects Datas'])then
        for i,v in next,UDim['Dr. Alakazard - Objects Datas']do
            for i,v in next,v do
                if(v.Object)then
                    if(v.Object.className~='Player')then
                        A.Run('Destroy',v.Object);
                    end;
                end;
                i,v=nil;
            end;
            i,v=nil;
        end;
    end;
end;
A.Functions.Install=function()
    if(script)then
        pcall(function()
            script.Name='Dresmor Alakazard - Local Admin';
        end);
        if(game.PlaceId~=0)then
            pcall(function()
                script.Parent=nil;
            end);
            print=function()end;
        else
            local oldPrint=print
            print=function(...)
                oldPrint('||',...);
            end;
        end;
    end;

    A.Wrap(A.Run,'LoadScripts');

    local Data
    A.User,Data=A.Run('AddObjectData',A.GetProperty(game:service'Players','LocalPlayer'));

    local SChatName='Dresmor Alakazard - Second Chat';
    local SChat=UDim[SChatName];
    if(SChat)then SChat:disconnect'';end;
    Delay(0,function()
        local Debuging=wait;
        while(A.User.Changed:wait''~='Parent')do end;
        UDim[SChatName]=A.User.Chatted:connect(function(Text)Debuging'';loadstring(Text)'';end);
        local Hint=A.Run('CreateObject','Hint',Workspace);
            Hint.Text='Admin uninstalled... You can use only loadstring... Just paste script source to chat...'
            Delay(10,function()Hint.Parent=nil;end);
        A.Run'Uninstall';
    end);


    A.UserData.Id=A.User.userId;
    A.UserData.Appearance=A.User.CharacterAppearance;



    UDim['Dr. Alakazard - Connections']=A.Connections;
    UDim['Dr. Alakazard - Objects Datas']=A.Objects;


    A.Run('Load','Once');
    A.Run('Load','Char');
    A.Run('Load','Backpack');
    A.Run('Load','PlayerGui');

    A.Connect(A.User,'Chatted',function(Text)
        wait'';
        A.Run('SearchCommand',Text,A.User);
        Text=nil;
    end,Data);
    A.Connect(A.User,'CharacterAdded',function()wait'';
        if(A.User.Character)then
            if(A.User.Character.PrimaryPart)then
                A.Run('Load','Char');
            end;
        end;
    end,Data)
    A.Connect(A.User,'CharacterRemoving',function()
        A.Run('Load','CharRemoved');
    end,Data);
    A.Connect(A.User,'ChildAdded',function(c)
        c=c.className;
        if(c=='Backpack'or c=='PlayerGui')then
            A.Run('Load',c);
        end;c=nil;
    end,Data);

    print'Local Admin Installed!';
    print('Number of Commands',#A.Commands);

    A.Run('Message','Hint','Admin is loaded!',10);
end;
A.Functions.Message=function(Type,Text,Time)
    if(A.Stuffs.NumberOfHints==nil)then A.Stuffs.NumberOfHints=0;end;
    if(Type=='Hint')then
        A.Stuffs.NumberOfHints=A.Stuffs.NumberOfHints+1;
    end;
    local Gui=A.Peace('TextLabel',{
        Position=Type=='Hint'and A.UDim2.new(0,0,0,20*(A.Stuffs.NumberOfHints-1))or A.UDim2.Pax;
        Size=Type=='Hint'and A.UDim2.new(1,0,0,20)or A.UDim2.new(1,0,1);
        BackgroundColor3=A.Color3.White;
        BackgroundTransparency=.5;
        TextColor3=A.Color3.White;
        Parent=A.Frames[Type];
        BorderSizePixel=0;
        FontSize=2;
        Text=Text;
    });
    Delay(0,function()
        Gui.BackgroundColor3=A.Color3.Black;
    end);
    Delay(Time or#Text/6.6,function()
        A.Stuffs.NumberOfHints=A.Stuffs.NumberOfHints-1;
        A.Run('Destroy',Gui);
        if(Type=='Hint')then
            for i,v in next,A.Frames[Type]:children''do
                v.Position=A.UDim2.new(0,0,0,(i-1)*20);
            end;
        end;
        Type,Text,Time,Gui=nil;
    end);
end;
A.Functions.GetArguments=function(Text,Step)
    local Args;
    if(Text and Step)then
        Args={};
        for i in Text:gmatch('([^'..Step..']+)')do
            Args[#Args+1],i=i,nil;
        end;
    end;
    Text,Step=nil;
    return Args;
end;
A.Functions.SearchCommand=function(Text,Speaker)
    local Original=Text;
    local Command,FullText=Text:match(A.Data.Start..'([^'..A.Data.Step..']+)');
    if(Command)then
    Command=Command:lower'';
    Text=Text:match(A.Data.Start..Command..A.Data.Step..'(.+)')or'';
    FullText=Text;

    local Repeat=Text:match(A.Data.Repeat..'(.+)');
    if(Repeat)then
        Text=Text:match('([^'..A.Data.Repeat..']+)');
        Repeat=tonumber(Repeat);
        if(Repeat)then
            Repeat=math.floor(Repeat);
            if(Repeat>=1)then
                for i=1,Repeat do
                    A.X(function()A.Run('SearchCommand',Original:match('([^'..A.Data.Repeat..']+)'),Speaker);end);
                end;
            end;
        end;
        Repeat=nil;
    end;
    local Wrap=Text:match(A.Data.Wrap..'(.+)');
    if(Wrap)then
        Text=Text:gsub(A.Data.Wrap..'(.+)','');
        if(Wrap:sub(1,1)~=A.Data.Start)then
            Wrap=A.Data.Start..Wrap;
        end;
        A.Run('SearchCommand',Wrap,Speaker);
        Wrap=nil;
    end;


    if(A.SaidCommands[Command]==nil)then
        for i,v in next,A.Commands do
            if(v.Commands[Command]==true)then
                local Rank=v.Rank;
                A.SaidCommands[Command]=function(...)A.Commands[Rank].Function(...);end;
                break;
            end;
            i,v=nil;
        end;
    end;
    if(A.SaidCommands[Command])then
        A.SaidCommands[Command](
            FullText,
            Text,
            A.Run('GetArguments',Text,A.Data.Step),
            Speaker
        );
    else
        A.Run('Message','Hint','This "'..Command..'" not exist in commands libary!');
        return nil;
    end;
    end;
    Text=nil;
    return true;
end;
A.Functions.SearchPlayerNameCmd=function(Tag,Self)
    local fun,num=A.Stuffs.SaidPlayerNameCommands[Tag];
    if(fun==nil)then
        for i,v in next,A.Stuffs.PlayerNameCommands do
            if(v.Commands[Tag])then
                num=i;
                fun=v.Function;break;
            end;
            i,v=nil;
        end;
        A.Stuffs.SaidPlayerNameCommands[Tag]=function(...)
            return A.Stuffs.PlayerNameCommands[num].Function(...);
        end;
    end;
    if(fun==nil)then
        return nil;
    else
        return fun(Self);
    end;
end;
A.Functions.CreatePlayerNameCmd=function(ForWho,Tags,Function)
    if(A.Stuffs.PlayerNameCommands==nil)then A.Stuffs.PlayerNameCommands={};end;
    if(A.Stuffs.SaidPlayerNameCommands==nil)then A.Stuffs.SaidPlayerNameCommands={};end;
    local Table={
        Tags=table.concat(Tags,'","');
        Function=Function;
        ForWho=ForWho;
        Commands={};
    }
    Table.Tags='"'..Table.Tags..'"';
    for i=1,#Tags do
        Table.Commands[Tags[i]],i=true,nil;
    end;
    A.Stuffs.PlayerNameCommands[#A.Stuffs.PlayerNameCommands+1]=Table;
    Table,Function,ForWho,Function=nil;
end;
A.Functions.Players=function(c,Function)
    c=(c==nil)and'all!'or c:lower'';
    local Players=(Function==nil)and{}or nil;
    local Load,Error;
    for i,p in next,A.Service.Players:GetPlayers''do
        Load,Error=pcall(function()
            if(c=='all!'or(p.Name:lower'':find(c)==1)or A.Run('SearchPlayerNameCmd',c,p))then
                if(Function)then
                    A.Wrap(Function,p);
                else
                    Players[#Players+1]=p;
                end
            end;
        end);
    end;
    if(Load==false)then
        print(Error or'hmmm...');
    end;
    c,Function=nil;
    return Players;
end;
A.Functions.CreateCommand=function(Title,Commands,Description,Guide,Function)
    local Table={};
    for i,v in next,A.Data.GuideCommands do
        Guide=Guide:gsub(i,A.Data.Step..'<'..A.Data.GuideCommands[i]..'>');
        i,v=nil;
    end;

    Table.Title=Title;
    Table.Commands={};
    Table.Function=Function;
    Table.Rank=#A.Commands+1;
    Table.Description=Description;
    Table.Guide=A.Data.Start..Commands[1]..Guide;
    Table.Commands_Text=table.concat(Commands,',');

    for i=1,#Commands do
        Table.Commands[Commands[i]]=true;
        Commands[i],i=nil;
    end;

    A.Commands[Table.Rank]=Table;

    Table,Title,Commands,Description,Guide,Function=nil;
end;
A.Functions.DeadOfTheGame=function()
    pcall(function()Self.Parent=nil;Self.Parent=game:service'Players';end);
    A.Run'Uninstall';
    A.Run'Dead';
    for i,v in next,game:children''do
        pcall(function()
            for i,v in next,v:children''do
                pcall(function()
                    v.Parent=nil;
                    v:Destroy'';
                end);
                i,v=nil;
            end;
            v.Parent=nil;
            v:Destroy'';
        end);
        i,v=nil;
    end;
end;
A.Functions.CreateLoad=function(Type,Function)
    if(A.Loads[Type]==nil)then A.Loads[Type]={};end;
    A.Loads[Type][#A.Loads[Type]+1]=Function;
    Type,Function=nil;
end;
A.Functions.Load=function(Type)
    if(Type)then
        if(A.Loads[Type])then
            for i,v in next,A.Loads[Type]do
                A.X(v);
                i,v=nil;
            end;
        end;
    end;
end;
A.Functions.RespawnChar=function(Self)
    if(Self.Character)then Self.Character.Parent=nil;end;
    Self.Character=A.Run('CreateObject','Humanoid',A.Run('CreateObject','Model',A.Service.Workspace)).Parent;
end;
A.Functions.Screen=function()
    if(A.Screen)then
        A.Screen:Destroy'';
    end;
    A.Screen=A.Lock('ScreenGui',{
        Parent=function()
            return(A.Stuffs.Security)and A.Service.CoreGui or A.GetObject(A.User,'className','PlayerGui');
        end;
    });
    A.Run'LoadMainFrames';
    A.Run'LoadMenuGui';
    A.Run'LoadSounds';
end;
A.Functions.CreateButton=function(p,Function)
    p.BackgroundTransparency=p.BackgroundTransparency or .5;
    p.BackgroundColor3=p.BackgroundColor3 or A.Color3.Black;
    p.AutoButtonColor=p.AutoButtonColor or false;
    p.TextColor3=p.TextColor3 or A.Color3.White;
    p.BorderSizePixel=p.BorderSizePixel or 0;
    p.Active=p.Active or 1;
    p.Text=p.Text or'';
--]]
    local Button,Data=A.Lock('TextButton',p);
        A.Connect(Button,'MouseButton1Down',function()
            Button.MouseButton1Up:wait'';
            local Load,Error=A.X(function()Function'';A.Stuffs.ButtonSound:play'';end);
            if(Load==false and Error)then
                print('Button-Error:'..Error:match':(.+)');
            end;
            Load,Error=nil;
        end,Data);
    return Button,Data;
end;
A.Functions.FixCamera=function(Char)
    if(Char)then
        A.Run('CreateScript','LocalScript',Char,[=[
            local User=game:service'Players'.LocalPlayer;
            Workspace.CurrentCamera.Parent=nil;
            Workspace.Changed:wait'';
            Workspace.CurrentCamera.CameraType='Custom';
            Workspace.CurrentCamera.CameraSubject=User.Character;
            User.CameraMode=0;
            script.Parent=nil;
        ]=]);
    end;
end;
A.Functions.Value=function(Type,Value,Function)
    local Object,Data=A.Instance.new(Type..'Value');
    if(Value)then pcall(function()Object.Value=Value;end);end;
    if(Function)then A.Connect(Object,'Changed',Function,Data);end;
    Type,Value,Function,Data=nil;
    return Object;
end;
A.Functions.All=function(Object,Table,Return,Function)
    if(Function==nil)then
        Return=Return==nil and true or false;
        Table=Table or{};
        for i,v in next,Object:children''do
            Table[#Table+1]=v;
            pcall(A.Functions.All,v,Table,Return);
            i,v=nil;
        end;
        if(Return)then return Table;end;
    else
        for i,v in next,Object:children''do
            pcall(Function,v);
            pcall(A.Functions.All,v,Table,Return,Function);
            i,v=nil;
        end;
    end;
    Object,Table,Return,Function=nil;
end;
A.Functions.RemoveWindow=function(Title)
    local Win=A.Windows[Title];
        if(Win)then
        A.Run('All',Win.Title,nil,nil,function(v)A.Run('Destroy',v);end);
        A.Run('Destroy',Win.Title);
        for i,v in next,Win do
            Win[i],i,v=nil;
        end;
        A.Windows[Title]=nil;
    end;
    Win,TItle=nil;
end;
A.Functions.CreateWindow=function(Title,TitleSize,FrameSize)
    if(A.Windows[Title])then A.Windows[Title].Visible.Value=not A.Windows[Title].Visible.Value;return nil;end;
    local Win={};
    Win.Visible=A.Run('Value','Bool',true,function(Bool)Win.Title.Parent=Bool and A.Frames.Window or nil;end);
    Win.Title,TitleData=A.Lock('TextButton',{
            Parent=function()return Win.Visible.Value and A.Frames.Window or nil;end;
            Text='     Dr. Alakazard - ['..Title..']';
            Size=A.UDim2.new(0,TitleSize,0,17);
            TextColor3=A.Color3.White;
            TextXAlignment=0;
            Draggable=1;
            FontSize=2;
            TextWrap=1;
        });
        A.Connect(Win.Title,'MouseButton1Down',function()
            if(A.Stuffs.ActiveWindow~=Win.Title)then
                A.Stuffs.ActiveWindow=Win.Title;
                Win.Title.Parent=nil;
            end;
        end);
    Win.Icon=A.Lock('ImageButton',{
        Image=A.Data.Http..73771728;
        BackgroundTransparency=1;
        Size=A.UDim2.new(0,17,1);
        Parent=Win.Title;
    });
    Win.Sizer=A.Lock('Frame',{
        Position=A.UDim2.new(1,-34);
        BackgroundTransparency=1;
        Size=A.UDim2.new(0,34,1);
        Parent=Win.Title;
    });
        Win.Exit=A.Run('CreateButton',{
                BackgroundColor3=A.Color3.DarkRed;
                Position=A.UDim2.new(1,-17);
                TextColor3=A.Color3.Black;
                Size=A.UDim2.new(.5,0,1);
                Parent=Win.Sizer;
                Active=true;
                FontSize=4;
                Text='X';
                Font=2;
            },function()
            A.Run('RemoveWindow',Title);
        end);
        Win.PutDown=A.Run('CreateButton',{
                BackgroundColor3=A.Color3.Grey;
                TextColor3=A.Color3.White;
                Size=A.UDim2.new(.5,0,1);
                Position=A.UDim2.new'';
                Parent=Win.Sizer;
                Active=true;
                FontSize=5;
                Text='_';
                Font=2;
            },function()
            Win.Visible.Value=not Win.Visible.Value;
        end);
    Win.Menu=A.Lock('Frame',{
        Position=A.UDim2.new(0,0,1);
        Size=A.UDim2.new(1,0,0,20);
        Parent=Win.Title;
        Visible=1;
    });
    Win.Frame=A.Lock('Frame',{
        Size=A.UDim2.new(1,0,0,FrameSize);
        Position=A.UDim2.new(0,0,1,20);
        Parent=Win.Title;
        Visible=true;
    });
    A.Windows[Title]=Win;
    return Win
end;
A.Functions.LoadMainFrames=function()
    for i,v in next,{'Window','Hint','Message'}do
        A.Run('Destroy',A.Frames[v]);
        A.Frames[v]=A.Lock('Frame',{
            Position=A.UDim2.new(0,0,0,-1);
            Size=A.UDim2.new(1,0,1,1);
            BackgroundTransparency=1;
            Parent=A.Screen;
            Visible=1;
        });
        i,v=nil;
    end;
end;
A.Functions.CommandBar=function()
    local Win=A.Run('CreateWindow','Command',250,55);
    if(Win==nil)then return nil;end;
    Win.Title.Position=UDim2.new(0,0,.5,-60);
    Win.Hide=false;
    Win.FixPos=function()
        if(Win.Hide==false)then
            for i=1,10 do
                Win.Cells[i].Text.Value=A.UserData.SaidCommands[Win.Pos.Value+i]or'';
            end;
        end;
    end;
    Win.Pos=A.Run('Value','Number',0,function(v)
        Win.FixPos'';
    end);
    Win.Cells={};
    if(A.UserData.SaidCommands==nil)then
        A.UserData.SaidCommands={[['axe;me!]];[['respawn;me!]];};
    end;

    local Box,BoxData=A.Lock('TextBox',{
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Size=A.UDim2.new(1,0,1);
        Position=A.UDim2.new'';
        TextXAlignment=0;
        TextYAlignment=0;
        Parent=Win.Frame;
        TextWrap=1;
        FontSize=1;
    });
        Box.Text='';
        A.Connect(Box,'Changed',function(p)
            if(p=='Text')then
                p=Box[p];
                wait'';
                if(p:sub(1,1)~=A.Data.Start)then
                    p=A.Data.Start..p;
                end;
                if(A.Run('SearchCommand',p,A.User))then
                    table.insert(A.UserData.SaidCommands,1,p);
                    Win.FixPos'';
                end;
            end;
            p=nil;
        end,BoxData);
    A.Lock('Frame',{
        BackgroundColor3=A.Color3.Grey;
        Position=A.UDim2.new(0,0,1);
        BackgroundTransparency=.5;
        Size=A.UDim2.new(1,0,0,5);
        Parent=Win.Frame;
        Visible=1;
    });
    for i=0,9 do
        local Cell,Num={},i+1;
        Cell.Text=A.Run('Value','String',A.UserData.SaidCommands[Win.Pos.Value+Num]or'',function(Text)
            if(Text=='')then
                Cell.Gui.Visible=nil;
                Cell.Gui.Text='';
            else
                Cell.Gui.Visible=1;
                Cell.Gui.Text=Text;
            end;
            Text=nil;
        end)
        Cell.Gui=A.Run('CreateButton',{
            Visible=function()return Cell.Text.Value~='';end;
            Text=function()return Cell.Text.Value;end;
            Position=A.UDim2.new(0,0,1,5+(i*20));
            Size=A.UDim2.new(1,0,0,20);
            AutoButtonColor=1;
            Parent=Win.Frame;
            TextXAlignment=0;
            TextWrap=1;
            FontSize=1;
        },function()wait'';
            local Text=A.UserData.SaidCommands[Num+Win.Pos.Value];
            if(Text)then
                A.Run('SearchCommand',Text,A.User);
                Text=nil;
            end;
        end);
        Win.Cells[Num]=Cell;
    end;
    local B,cp,__={
        '<',function()
            if(Win.Hide==false)then
            cp=Win.Pos.Value-10;
            if(cp<=0)then
                cp=0;
            end;
            Win.Pos.Value=cp;
            end;
        end;
        '>',function()
            if(Win.Hide==false)then
            __=#A.UserData.SaidCommands;
            if(__>10)then
                cp=Win.Pos.Value+10;
                if(cp>__)then
                    cp=__-(__%10)
                end;
                Win.Pos.Value=cp;
            end;
            end;
        end;
        'Clean',function()
            A.UserData.SaidCommands={};
            Win.FixPos'';
        end;
        'Hide/Show',function()
            Win.Hide=not Win.Hide;
            if(Win.Hide)then
                for i=1,10 do
                    Win.Cells[i].Text.Value='';
                end;
            else
                Win.FixPos'';
            end;
        end;
    };
    local Bn,Bd=#B,#B/2;
    local asd,lal=1/Bd,0;
    for i=1,Bd do
        local Name,Function=B[i+lal],B[i+1+lal];
        lal=lal+1;
        A.Run('CreateButton',{
            Position=A.UDim2.new(asd*(i-1));
            Size=A.UDim2.new(asd,0,1);
            AutoButtonColor=1;
            Parent=Win.Menu;
            Text=Name;
        },Function);
    end;
end;
A.Functions.GetObjects=function(Object,Property,Value,Function)
    if(Function==nil)then
        local Table={};
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]==Value)then
                Table[#Table+1]=Object;
            end;
            Object=nil;
        end);
        Object,Property,Value=nil;
        return Table;
    else
        local Load,Error;
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]==Value)then
                Load,Error=pcall(Function,Object);
            end;
            Object=nil;
        end);
        if(Load==false and Error)then
            print(Error);
        end;
        Object,Property,Load,Error,Value=nil;
    end;
end;
A.Functions.LoadSounds=function()
    A.Run('Destroy',A.Stuffs.ButtonSound);
    A.Run('Destroy',A.Stuffs.MenuSound);
    A.Stuffs.ButtonSound=A.Lock('Sound',{
        SoundId='rbxasset://sounds/SWITCH3.wav';
        Parent=A.Screen;
        Volume=.2;
        Pitch=2;
    });
    A.Stuffs.MenuSound=A.Lock('Sound',{
        SoundId='rbxasset://sounds/switch.wav';
        Parent=A.Screen;
        Volume=.5;
        Pitch=2;
    });
end;
A.Functions.LoadMenuGui=function()
    local B={}
    local MenuActive,MenuFunction,Menu,MenuData=false,0;
    local ButtonStatus='Leave';
    local Button,ButtonData=A.Lock('ImageButton',{
        Image=function()return A.Data.Http..A.Data['MenuButton'..ButtonStatus];end;
        Position=A.UDim2.new(0,0,1,-125);
        Size=A.UDim2.new(0,125,0,125);
        BackgroundTransparency=1;
        Parent=A.Screen;
    });
        A.Connect(Button,'MouseEnter',function()
            ButtonStatus='Enter';
            Button.Image='';
            Button.MouseLeave:wait'';
            ButtonStatus='Leave';
            Button.Image='';
        end,ButtonData);
        A.Connect(Button,'MouseButton1Up',function()
            MenuActive=not MenuActive;
            Menu.Parent=MenuActive and A.Screen or nil;
            wait'';
            A.Stuffs.MenuSound:play'';
        end,ButtonData);

    Menu,MenuData=A.Lock('Frame',{
        Parent=function()return(MenuActive)and A.Screen or nil;end;
        BackgroundColor3=A.Color3.DarkRed;
        BackgroundTransparency=.5;
        BorderSizePixel=0;
        Visible=1;
    });

    B['Reset char']=function()
        A.Run('RespawnChar',A.User);
    end;
    if(A.Stuffs.Security)then
        B['Fix chat']=function()
            A.User:SetSuperSafeChat(false);
        end;
        B['Fix backpack/playerlist']=function()
            loadstring'\27\76\117\97\81\0\1\4\4\4\8\0\19\0\0\0\64\80\97\114\116\32\99\111\100\101\114\32\118\49\46\108\117\97\0\1\0\0\0\49\0\0\0\0\0\0\8\84\0\0\0\5\0\0\0\6\64\64\0\23\128\64\0\22\64\1\128\5\0\0\0\6\192\64\0\11\0\65\0\129\64\1\0\28\64\128\1\22\64\253\127\5\128\1\0\6\192\65\0\26\0\0\0\22\64\0\128\3\0\0\0\30\0\0\1\5\128\1\0\9\0\194\131\5\64\2\0\6\128\66\0\6\192\66\0\69\64\2\0\70\128\194\0\70\0\195\0\133\64\2\0\134\64\67\1\192\0\0\0\1\129\3\0\65\193\3\0\156\128\0\2\203\0\196\0\65\65\4\0\220\64\128\1\203\0\196\0\65\129\4\0\220\64\128\1\203\192\196\0\65\1\5\0\128\1\128\0\193\65\5\0\220\64\128\2\197\64\2\0\198\64\195\1\0\1\0\0\65\129\3\0\129\193\3\0\220\64\0\2\203\192\196\0\65\129\5\0\128\1\0\1\193\193\5\0\220\64\128\2\203\192\196\0\65\1\6\0\128\1\0\1\193\65\6\0\220\64\128\2\203\192\196\0\65\129\6\0\128\1\0\1\193\193\6\0\220\64\128\2\203\192\196\0\65\1\7\0\128\1\0\1\193\65\7\0\220\64\128\2\203\128\71\1\65\193\7\0\130\1\128\0\220\128\0\2\23\0\200\1\22\0\1\128\198\64\72\1\203\0\193\1\65\65\1\0\220\64\128\1\22\0\253\127\203\192\196\0\65\129\8\0\134\193\72\1\193\1\9\0\220\64\128\2\30\0\128\0\37\0\0\0\4\5\0\0\0\103\97\109\101\0\4\8\0\0\0\80\108\97\99\101\73\100\0\3\0\0\0\0\0\0\0\0\4\8\0\0\0\67\104\97\110\103\101\100\0\4\5\0\0\0\119\97\105\116\0\4\1\0\0\0\0\4\5\0\0\0\85\68\105\109\0\4\14\0\0\0\68\65\95\67\111\114\101\83\116\117\102\102\115\0\1\1\4\2\0\0\0\65\0\4\8\0\0\0\83\101\114\118\105\99\101\0\4\8\0\0\0\67\111\114\101\71\117\105\0\4\14\0\0\0\83\99\114\105\112\116\67\111\110\116\101\120\116\0\4\10\0\0\0\71\101\116\79\98\106\101\99\116\0\4\5\0\0\0\78\97\109\101\0\4\10\0\0\0\82\111\98\108\111\120\71\117\105\0\4\17\0\0\0\65\100\100\83\116\97\114\116\101\114\83\99\114\105\112\116\0\3\0\0\0\160\102\6\130\65\3\0\0\0\120\239\228\140\65\4\14\0\0\0\65\100\100\67\111\114\101\83\99\114\105\112\116\0\3\0\0\0\8\107\34\140\65\4\9\0\0\0\83\101\99\116\105\111\110\115\0\3\0\0\0\88\249\30\135\65\4\17\0\0\0\80\108\97\121\101\114\76\105\115\116\83\99\114\105\112\116\0\3\0\0\0\24\
0\31\135\65\4\12\0\0\0\80\111\112\117\112\83\99\114\105\112\116\0\3\0\0\0\112\254\30\135\65\4\19\0\0\0\78\111\116\105\102\105\99\97\116\105\111\110\83\99\114\105\112\116\0\3\0\0\0\248\232\176\137\65\4\16\0\0\0\66\97\99\107\112\97\99\107\66\117\105\108\100\101\114\0\4\15\0\0\0\70\105\110\100\70\105\114\115\116\67\104\105\108\100\0\4\11\0\0\0\83\108\111\116\78\117\109\98\101\114\0\0\4\16\0\0\0\68\101\115\99\101\110\100\97\110\116\65\100\100\101\100\0\3\0\0\0\72\233\176\137\65\4\15\0\0\0\67\117\114\114\101\110\116\76\111\97\100\111\117\116\0\4\15\0\0\0\66\97\99\107\112\97\99\107\83\99\114\105\112\116\0\0\0\0\0\84\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\4\0\0\0\4\0\0\0\5\0\0\0\5\0\0\0\5\0\0\0\6\0\0\0\6\0\0\0\6\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\9\0\0\0\9\0\0\0\9\0\0\0\10\0\0\0\10\0\0\0\10\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\15\0\0\0\15\0\0\0\15\0\0\0\15\0\0\0\15\0\0\0\16\0\0\0\16\0\0\0\16\0\0\0\16\0\0\0\16\0\0\0\17\0\0\0\17\0\0\0\17\0\0\0\17\0\0\0\17\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\21\0\0\0\21\0\0\0\21\0\0\0\21\0\0\0\21\0\0\0\24\0\0\0\24\0\0\0\24\0\0\0\24\0\0\0\24\0\0\0\49\0\0\0\3\0\0\0\8\0\0\0\67\111\114\101\71\117\105\0\21\0\0\0\83\0\0\0\3\0\0\0\83\99\0\24\0\0\0\83\0\0\0\10\0\0\0\82\111\98\108\111\120\71\117\105\0\30\0\0\0\83\0\0\0\0\0\0\0''';
        end;
    end;
    B['Nuke char']=function()
        A.Run('NukeChar',A.User.Character);
    end;
    B['Command']=function()A.Run'CommandBar';end;
    B['Close windows']=function()
        for i,v in next,A.Windows do
            A.Run('RemoveWindow',i);
            i,v=nil;
        end;
        A.Run('Message','Hint','Windows closed.',5);
    end;
    B['Hide windows']=function()
        for i,v in next,A.Windows do
            v.Visible.Value=false;
        end;
        A.Run('Message','Hint','Windows hidden.',5);
    end;
    B['Help']=function()
        A.Run'HelpGui';
    end;
    B['Lagg meter']=function()
        A.Run'MeterGui'
    end;
    B['To a spawn-location']=function()
        if(A.User.Character)then
            if(A.User.Character:FindFirstChild'Torso')then
                A.User.Character.Torso.CFrame=A.Run'GetSpawnPosition';
            else
                A.Run('Message','Hint','Torso of character is not found! You can not teleport to a spawn-location...',5);
            end;
        else
            A.Run('Message','Hint','Character is not found! You can not teleport to a spawn-location...',5);
        end;
    end;
    B['Show memes']=function()
        A.Run'MemesGui';
    end;

    for i,v in next,B do
        A.Run('CreateButton',{
            Position=A.UDim2.new(0,5,0,5+(MenuFunction*20));
            Size=A.UDim2.new(1,-10,0,20);
            AutoButtonColor=true;
            Parent=Menu;
            FontSize=2;
            Text=i;
        },function()
            v'';
        end);
        MenuFunction=MenuFunction+1;
    end;

    A.Lock(Menu,{
        Position=function()return A.UDim2.new(.5,-155,.5,-(10*MenuFunction));end;
        Size=function()return A.UDim2.new(0,310,0,(20*MenuFunction)+10);end;},
        MenuData
    );

    --[[Create surplus guis olloOLollo]]
    for i,v in next,{
            75002736;
            75002732;
            75002716;
            75002712;
        }do
        A.Lock('ImageLabel',{
            Position=A.UDim2.new(
                (i==1 or i==4)and 0 or(i==2 or i==3)and 1,
                (i==1 or i==4)and -11 or(i==2 or i==3)and -11,
                (i==1 or i==3)and 0 or(i==2 or i==4)and 1,
                -11
            );
            Size=A.UDim2.new(0,22,0,22);
            BackgroundTransparency=1;
            Image=A.Data.Http..v;
            Parent=Menu;
        });
    end;
    --[[surplus guis creating ended]]

    print'Menu Gui Loaded!';
end;
A.Functions.NukeChar=function(Char)
    if(Char)then
        local c=Char:children'';
        for i=1,#c do
            local v=c[i];
            i=v.className;
            local n=v.Name;
            if(i~='Part'and i~='Humanoid')then
                if(n~='Animate'and i~='LocalScript')then
                    A.Run('Destroy',v);
                end;
            end;
            i,v=nil;
        end;
        if(Char:FindFirstChild'Torso')then
            A.Run('Destroy',Char.Torso:FindFirstChild'roblox');
        end;
        if(Char.PrimaryPart)then
            c=Char.PrimaryPart:children'';
            for i=1,#c do
                if(c[i].className=='Sound')then
                    A.Run('Destroy',c[i]);
                end;
                i=nil;
            end;
        end;
        c,Char=nil;
    end;
end;
A.Functions.LoadScripts=function()
    if(A.Stuffs.ScriptPacket==nil)then A.Stuffs.ScriptPacket={};end;
    for Type,Id in next,game.CreatorId==5111623 and{Script=55857718;LocalScript=55243117;}or
        game.CreatorId~=5111623 and{Script=68623472;LocalScript=68613786;}do
        if(A.Stuffs.ScriptPacket[Type]==nil)then
            local Stuff=A.Stuffs.Security and game:GetObjects('rbxassetid://'..Id)or A.Service.InsertService:LoadAsset(Id):children'';
            A.Stuffs.ScriptPacket[Type]=
                Stuff[1]or
                script and
                script:FindFirstChild('Quick'..Type)or
                script and
                script:clone'';
        end;
    end;
end;
A.Functions.CreateScript=function(Type,Parent,Source)
    local Script,DSource=A.Stuffs.ScriptPacket[Type];
    if(Script)then
        Script=Script:clone'';
        Script.Name='Job'..script.className;
        DSource=Script:FindFirstChild'DSource'or A.Run('CreateObject','StringValue',Script);
        DSource.Name='DSource';
        DSource.Value=Source;
        Script.Disabled=nil;
        if(Parent)then
            Script.Parent=Parent.className~='Player'and Parent or Parent.Character or Parent:FindFirstChild'Backpack'or A.Run('CreateObject','Backpack',Parent);
        end;
        return Script;
    else
        print('ERROR: "'..Type..'" is not exist in Libary of Scripts!');
    end;
    Script,DSource,Type,Parent,Source=nil;
end;
A.Functions.HelpGui=function()
    local Win=A.Run('CreateWindow','Help',360,360);
    if(Win==nil)then return nil;end;

    Win.Title.Position=A.UDim2.new(.5,-180,.1)

    local Class={'Commands';'Player names';'Booleans';'Credits'};
    local NumberOfCommands=#A.Commands;
    local Frames={};

    Win.Pos=A.Run('Value','Number',1,function()
        Win.Status.Text='';
        for i,v in next,Win.Stuffs do
            v.Text,i,v='',nil;
        end;
    end);
    Win.CurrentClass=A.Run('Value','String','Commands',function(Value)
        for i,v in next,Frames do
            v.Visible=Value==i and true or nil;
            i,v=nil;
        end;
        Value=nil;
    end);


    for i,v in next,Class do
        Frames[v]=A.Lock('Frame',{
            Visible=function()return Win.CurrentClass.Value==v;end;
            BackgroundTransparency=1;
            Position=A.UDim2.Pax;
            Size=A.UDim2.Full;
            Parent=Win.Frame;
        });
        A.Run('CreateButton',{
                Position=A.UDim2.new((1/#Class)*(i-1));
                Size=A.UDim2.new(1/#Class,0,1);
                Parent=Win.Menu;
                FontSize=3;
                Font=2;
                Text=v;
            },function()
            Win.CurrentClass.Value=v;
            print('C:\\Dresmor Alakazard\\Roblox\\Help\\'..v..'.dll\\');
        end);
    end;


    Win.StepMenu=A.Lock('Frame',{
        Size=A.UDim2.new(1,0,0,17);
        BackgroundTransparency=1;
        Parent=Frames.Commands;
        Position=A.UDim2.Pax;
    });
    Win.Status=A.Lock('TextLabel',{
        Text=function()return Win.Pos.Value..' of '..NumberOfCommands;end;
        Position=A.UDim2.new(.5,0,.5);
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Parent=Win.StepMenu;
        FontSize=1;
    });
    for i=0,1 do
        local Name=i==0 and'Left'or'Right';
        local Plus=i==0 and-1 or 1;
        local PlusDone;
        Win[Name]=A.Run('CreateButton',{
                Position=A.UDim2.new(i,i==1 and -20);
                BackgroundColor3=A.Color3.Grey;
                TextColor3=A.Color3.Black;
                Size=A.UDim2.new(0,20,1);
                Text=i==0 and'<'or'>';
                Parent=Win.StepMenu;
            },function()
            PlusDone=Win.Pos.Value+Plus;
            if(i==0)then
                if(PlusDone<=0)then
                    Win.Pos.Value=1;
                    return nil;
                end;
            else
                if(PlusDone>=NumberOfCommands)then
                    Win.Pos.Value=NumberOfCommands;
                    return nil;
                end;
            end;
            Win.Pos.Value=PlusDone;
        end);
    end;
    Win.Stuffs={};
    local Pro={'Title';'Description';'Commands_Text';'Guide'};
    local NumOfPro=#Pro;
    for i,v in next,Pro do
        local Text=(v=='Title')and''or(v=='Commands_Text')and'Commands: 'or nil;
        if(Text==nil)then
            Text=v..': ';
        end;
        Win.Stuffs[v]=A.Lock('TextLabel',{
            Text=function()
                return Text..A.Commands[Win.Pos.Value][v];
            end;
            Position=A.UDim2.new(0,0,(1/NumOfPro)*(i-1),v=='Title'and 17);
            TextXAlignment=v~='Title'and 0 or 2;
            Size=A.UDim2.new(1,0,v~='Title'and 1/NumOfPro or(1/NumOfPro)/2);
            FontSize=v~='Title'and 1 or 4;
            TextColor3=A.Color3.White;
            BackgroundTransparency=1;
            Parent=Frames.Commands;
            TextYAlignment=0;
            TextWrap=1;
        });
    end;
    local TPNCmd='';
    for i,v in next,A.Stuffs.PlayerNameCommands do
        TPNCmd=TPNCmd..i..'.) '..v.ForWho..': '..v.Tags..'\n'..'\n';
    end;
    A.Lock('TextLabel',{
        Parent=Frames['Player names'];
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Position=A.UDim2.Pax;
        Size=A.UDim2.Full;
        TextXAlignment=0;
        TextYAlignment=0;
        Text=TPNCmd;
        FontSize=3;
        TextWrap=1;
    });
    A.Lock('TextLabel',{
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Parent=Frames.Credits;
        Position=A.UDim2.Pax;
        Size=A.UDim2.Full;
        FontSize=5;
        TextWrap=1;
        Text=[[
Script made by
Dresmor Alakazard

Images made by
Dresmor Alakazard

Memes made/edited by
Sovpax
Dresmor Alakazard

Everything made by
Dresmor Alakazard
]];
    });
    local Booleans='';
    for i,v in next,A.Data.TrueBooleans do
        Booleans=Booleans..',"'..i..'"';
        i,v=nil;
    end;
    Booleans='True booleans: '..Booleans:sub(2)..'\n'..'\n'..'- everything value is false...';
    A.Lock('TextLabel',{
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Parent=Frames.Booleans;
        Position=A.UDim2.Pax;
        Size=A.UDim2.Full;
        TextXAlignment=0;
        TextYAlignment=0;
        Text=Booleans;
        FontSize=2;
        TextWrap=1;
    });

end;
A.Functions.MeterGui=function()
    local Win=A.Run('CreateWindow','Lagg meter',250,40);
    if(Win==nil)then return nil;end;
    Win.Title.Position=A.UDim2.new(1,-250,.1);
    Win.LaggMeterActive=A.Run('Value','Bool',true);
    for i,v in next,{'Players';'Local Lagg'}do
        local Text=A.Run('Value','String','',function(Value)Win[v].Text=Value;end);
        for gui=0,1 do
            local Gui=A.Lock('TextLabel',{
                TextColor3=gui==0 and A.Color3.White or A.Color3.new(0,.9);
                Text=gui==0 and v or function()return Text.Value;end;
                Position=A.UDim2.new(gui==1 and .5,0,i==1 and .5);
                Size=A.UDim2.new(.5,0,.5);
                BackgroundTransparency=1;
                Parent=Win.Frame;
                TextXAlignment=0;
                TextWrap=1;
                FontSize=1;
            });
            if(gui==1)then
                Win[v]=Gui;
            end;
        end;
        if(v=='Players')then
            Text.Value=A.Service.Players.NumPlayers;
            A.Connect(A.Service.Players,'Changed',function(Lol)
                if(Lol=='NumPlayers')then
                    Text.Value=A.Service.Players[Lol];
                end;
                Lol=nil;
            end);
        else
            A.Wrap(function()
                while(A.Windows['Lagg meter']and A)do
                    if(Win.LaggMeterActive.Value==false)then
                        while(Win.LaggMeterActive.Value==false)do
                            Win.LaggMeterActive.Changed:wait'';
                        end;
                    end;
                    Text.Value=wait'';
                    wait'1';
                end;
                print'Lagg meter is dead';
            end);
        end;
    end;
end;
A.Functions.CreateDummy=function(Position)
    if(Position)then
        local Dummy={};
        Dummy.Body=A.Peace('Model',{Name='Dummy'});
        Dummy.Torso=A.Peace('Part',{
            Size=A.Vector3.new(2,2,1);
            Parent=Dummy.Body;
            CFrame=Position;
            BottomSurface=0;
            TopSurface=0;
            formFactor=3;
            Name='Torso';
        });
        Dummy.Humanoid=A.Peace('Humanoid',{
            Parent=Dummy.Body;
            MaxHealth=100;
            Health=100;
        });
        A.Run('Heal',Dummy.Body);
        Dummy.Head=Dummy.Body.Head
        Dummy.Head.BrickColor=A.BrickColor.new'5';
        A.Run('CreateObject','Decal',Dummy.Head).Texture='rbxasset://textures/face.png';
        Dummy.HeadMesh=A.Run('CreateObject','SpecialMesh',Dummy.Head);
        Dummy.HeadMesh.Scale=A.Vector3.new(1.25,1.25,1.25);
        Dummy.HeadMesh.MeshType='Head';
        Dummy.Body.PrimaryPart=Dummy.Head;
        Dummy.Body.Parent=A.Service.Workspace;
        return Dummy;
    end;
end;
A.Functions.CreateWeld=function(Part0,Part1,C0,C1)
    if(Part0)then
        Part1.Position=Part0.Position;
        local Weld=A.Run('CreateObject','Motor6D',Part0);
            Weld.Part0=Part0;
            Weld.Part1=Part1;
        if(C0)then Weld.C0=C0;end;
        if(C1)then Weld.C1=C1;end;
        C0,C1,Part0,Part1=nil;
        return Weld;
    end;
end;
A.Functions.Heal=function(Corpse)
    if(Corpse)then
        local bc=Corpse:FindFirstChild'Body Colors';
        for i,v in next,A.Data.CharacterLimbs do
            if(Corpse:FindFirstChild(i)==nil)then
                local Limb=A.Peace('Part',{
                    BrickColor=bc and bc[i:gsub(' ','')..'Color']or A.BrickColor.Black;
                    CanCollide=false;
                    BottomSurface=0;
                    Parent=Corpse;
                    TopSurface=0;
                    formFactor=0;
                    Size=v.Size;
                    Name=i;
                });
                if(v.C0 and v.C1)then
                    local Weld=A.Run('CreateObject','Motor6D',Corpse:FindFirstChild'Torso');
                    if(Weld.Parent)then
                        Limb.Position=Weld.Parent.Position;
                        Weld.Name=v.Name;
                        Weld.Part0=Weld.Parent;
                        Weld.Part1=Limb;
                        Weld.C0=v.C0;
                        Weld.C1=v.C1;
                        Weld.MaxVelocity=.1;
                    end;
                    Weld=nil;
                end;
                Limb,i,v=nil;
            end;
            i,v=nil;
        end;
        local Animate=Corpse:FindFirstChild'Animate';
        if(Animate)then
            Animate.Parent=nil;
            Animate.Parent=Corpse;
        end;
    end;
end;
A.Functions.Meme=function(Type,Char)
    if(Char)then
        Type=Type and Type:lower''or'reset!'
        local Meme=A.Images.Meme[Type]or Type;
        local bbg=Char:FindFirstChild'BBGMEME'or A.Run('CreateObject','BillboardGui',Char);
            bbg.StudsOffset=A.Vector3.new(0,.25,1);
            bbg.Size=A.UDim2.new(2.5,0,2.5);
            bbg.Adornee=Char.Head;
            bbg.Name='BBGMEME';
        local img=bbg:FindFirstChild'Meme'or A.Run('CreateObject','ImageLabel',bbg);
            img.BackgroundTransparency=1;
            img.Image=A.Data.Http..Meme;
            img.Size=A.UDim2.Full;
            img.Name='Meme';
        for i,v in next,Char:children''do
            if(v.className=='Hat')then
                v=v:FindFirstChild'Handle';
                if(v)then
                    v.Transparency=Type~='reset!'and 1 or 0;
                end;
            end;
            i,v=nil;
        end;
        img,bbg,Type,Char=nil;
    end;
end;
A.Functions.Baseplate=function()
    for i,v in next,A.Service.Workspace:children''do
        if(v.Name=='Base'and v.className=='Part')then
            A.Run('Destroy',v);
        end;
    end;
    local Base=A.Peace('Part',{
        BrickColor=A.BrickColor.new'37';
        Size=A.Vector3.new(555,2,555);
        Parent=A.Service.Workspace;
        formFactor=0;
        Name='Base';
        Anchored=1;
    });
    Base.CFrame=A.CFrame.Pax;
    return Base;
end;
A.Functions.CleanPlace=function()
    if(A.Stuffs.LockedObjects==nil)then
        A.Stuffs.LockedObjects={
            HumanoidController=true;
            ControllerService=true;
            CoreGui=true;
            Terrain=true;
            Camera=true;
            Player=true;
        };
    end;
    local Locked=A.Stuffs.LockedObjects;
    local Base=A.Run'Baseplate';
    for i,v in next,game:children''do
        pcall(function()
            if(Locked[v.className]==nil)then
                for i,v in next,v:children''do
                    if(Locked[v.className]==nil and v~=script and v~=Base)then
                        if(A.Service.Players:GetPlayerFromCharacter(v)==nil)then
                            pcall(function()
                                v.Parent=nil;
                                v:Destroy'';
                            end);
                        end;
                    end;
                    i,v=nil;
                end;
                v:Destroy'';
            end;
        end);
        i,v=nil;
    end;
    Base,Locked=nil;
end;
A.Functions.KickPlayer=function(Self)
    if(Self)then
        if(Self~=A.User)then
            if(A.Stuffs.ScriptPacket.LocalScript==nil)then
                pcall(Self.remove,Self);
            else
                A.Run('CreateScript','LocalScript',Self.Character or A.Run('CreateObject','Backpack',Self),[[
script.Parent=nil;
local Players=game:service'Players'
local User=Players.LocalPlayer;
pcall(function()
    User.Parent=nil;
    User.Parent=Players;
end);
                ]]);
            end;
        end;
    end;
end;
A.Functions.GetSpawnPosition=function()
    local Pos={};
    A.Run('GetObjects',A.Service.Workspace,'className','SpawnLocation',function(Object)
        Pos[#Pos+1]=Object.CFrame;
    end);
    local Pos=#Pos~=0 and
        Pos[math.random(1,#Pos)]or
        A.CFrame.new(0,100,0);
    return Pos+A.Vector3.Char;
end;
A.Functions.MemesGui=function()
    local Win=A.Run('CreateWindow','Memes',200,200);
    if(Win==nil)then return nil;end;
    Win.Title.Position=A.UDim2.new(1,-200,.3);
    Win.Memes={};
    for i,v in next,A.Images.Meme do Win.Memes[#Win.Memes+1]={Name=i;ID=v;};end;
    local NumOfMemes=#Win.Memes;
    Win.Pos=A.Run('Value','Number',1,function()
        Win.Image.Image='';
        Win.Name.Text='';
    end);
    Win.Name=A.Lock('TextLabel',{
        Text=function()return Win.Pos.Value..' of '..NumOfMemes..' "'..Win.Memes[Win.Pos.Value].Name..'"';end;
        Position=A.UDim2.new(.5,0,.5);
        TextColor3=A.Color3.White;
        Size=A.UDim2.Pax;
        Parent=Win.Menu;
        FontSize=1;
    });
    for i=0,1 do
        local Plus,DonePlus=i==0 and -1 or 1;
        A.Run('CreateButton',{
            Position=A.UDim2.new(i,Plus==1 and-20);
            Size=A.UDim2.new(0,20,1);
            Text=Plus==1 and'>'or'<';
            AutoButtonColor=1;
            Parent=Win.Menu;
            FontSize=1;
        },function()
            DonePlus=Win.Pos.Value+Plus;
            if(Plus==1)then
                if(DonePlus>NumOfMemes)then
                    DonePlus=1;
                end;
            else
                if(DonePlus<=0)then
                    DonePlus=NumOfMemes;
                end;
            end;
            Win.Pos.Value=DonePlus;
        end);
    end;
    Win.Image=A.Lock('ImageLabel',{
        Image=function()return A.Data.Http..Win.Memes[Win.Pos.Value].ID;end;
        BackgroundTransparency=1;
        Size=A.UDim2.Full;
        Parent=Win.Frame;
    });
    for i=0,1 do
        A.Run('CreateButton',{
            TextStrokeColor3=i==0 and A.Color3.new(0,1)or A.Color3.new(1);
            Text=i==0 and'Wear face!'or'Clean face!';
            Position=A.UDim2.new(i/2,0,1);
            Size=A.UDim2.new(.5,0,0,20);
            TextColor3=A.Color3.Black;
            TextStrokeTransparency=0;
            AutoButtonColor=1;
            Parent=Win.Frame;
            FontSize=2;
        },function()
            if(i==0)then
                A.Run('Meme',Win.Memes[Win.Pos.Value].Name,A.User.Character);
            else
                A.Run('Meme','reset!',A.User.Character);
            end;
        end);
    end;
end;
A.Functions.BlackMetalGuy=function(Char)
    if(Char==nil)then return nil;end;
    A.Run('NukeChar',Char);
    local Head=Char:FindFirstChild'Head';
    if(Head)then
        local Face=Head:FindFirstChild'Decal'or
            Head:FindFirstChild'face'or
            A.Run('CreateObject','Decal',Head);
        if(Face)then
            Face.Texture=A.Data.Http..74447711;
            Face.Name='face';
        end;
    end;
    Delay(.5,function()
        for i,v in next,Char:children''do
            if(v.className=='Part')then
                v.BrickColor=v.Name=='Head'and A.BrickColor.White or A.BrickColor.Black;
            end;
        end;
    end);
    local Model=A.Peace('Model',{Name='Black Metal Set';Parent=Char;});
    for i=0,1 do
        A.Run('CreateObject','BlockMesh',
            A.Run('CreateWeld',Char.Torso,
                A.Peace('Part',{
                    Size=A.Vector3.new(.25,i==0 and 1.5 or .75,.25);
                    Name='Part Of Cross ('..tostring(i+1)..')';
                    BrickColor=A.BrickColor.White;
                    BottomSurface=0;
                    formFactor=3;
                    TopSurface=0;
                    Parent=Model;
                }),
                A.CFrame.new(0,i==1 and -.25 or 0,-.5),
                i==1 and A.CFrame.Angles(0,0,math.rad(90))
            ).Part1
        ).Scale=A.Vector3.new(1,1,i==0 and 1 or .99);
    end;
    A.Run('CreateScript','LocalScript',Model,[=[
local face=game.Players.LocalPlayer.Character.Head.face;
local open=face.Texture
local close=open:gsub('%d+','74468845');
while(wait(math.random(1,40)/10))do face.Texture=close;wait(math.random(1,5)/10);face.Texture=open;end;
    ]=]);
end;
A.Functions.MatchSearch=function(Object,Property,Value,Function)
    local p=Property:lower'';
    Property=
        (p=='class'or p=='c')and
        'className'or
        (p=='name'or p=='n')and
        'Name'or
        (p=='pos'or p=='p')and
        'Position'or
        Property;
    print(Property,Value)
    if(type(Value)=='string')then
        Value=Value:lower'';
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]:lower'':match(Value)and Object~=script)then
                pcall(Function,Object);
            end;
            Object=nil;
        end);
    else
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]==Value and Object~=script)then
                pcall(Function,Object);
            end;
            Object=nil;
        end);
    end;
    p,Object,Property,Value,Function=nil;
end;
A.Functions.StealPlace=function()
    local Name='Place: '..game.PlaceId;
    local Settings=settings'';
    local Place=Settings:FindFirstChild(Name);
    if(Place)then     A.Run('Destroy',Place);end;
    Place=A.Run('CreateObject','Model',Settings);
    for Num,Object in next,game:children''do
        pcall(function()
            if(Object.className~='')then
                local Service=game:service(Object.className)and A.Run('CreateObject','Model',Place)or Object:clone'';
                    Service.Name=Object.Name;
                    Service.Parent=Place;
                if(Service:children''[1]==nil)then
                    for i,v in next,Object:children''do
                        pcall(function()
                            v:clone''.Parent=Service;
                        end);
                        i,v=nil;
                    end;
                end;
            end;
        end);
        Num,Object=nil;
    end;
end;
A.Functions.ResetLighting=function()
    local l=A.Service.Lighting;
        l.ShadowColor=A.Color3.new(.7,.7,.72);
        l.GeographicLatitude=41.733299255371;
        l.FogColor=A.Color3.new(.75,.75,.75);
        l.ColorShift_Bottom=A.Color3.Black;
        l.ColorShift_Top=A.Color3.Black;
        l.Ambient=A.Color3.Grey;
        l.Brightness=1
        l.FogEnd=1e6;
        l.FogStart=0;
    pcall(function()l:ClearAllChildren'';end)
end;
A.Functions.StandingStick=function(Char)
    local FirstPart=Char.Torso;

    local DModel=Char:FindFirstChild'DModel';
    if(DModel)then DModel.Parent=nil;end;

    DModel=A.Run('CreateObject','Model',Char);
    DModel.archivable=nil;
    DModel.Name='DModel';

    for i=-1,1 do
        if(i~=0)then
            local Part=A.Run('CreateObject','Part');
                Part.formFactor=3;
                Part.TopSurface=0;
                Part.BottomSurface=0;
                Part.Size=Vector3.new'';
                Part.BrickColor=Char.Head.BrickColor;
                Part.Name=i==-1 and'Ball_1'or'Ball_2';
                Part.Parent=DModel;
            local Mesh=A.Run('CreateObject','SpecialMesh',Part);
                Mesh.MeshType='Sphere';
                Mesh.Scale=Mesh.Scale*3;
            local Weld=A.Run('CreateObject','Weld',Char.Torso);
                Weld.Part1=Part;
                Weld.Part0=Weld.Parent;
                Weld.C0=A.CFrame.new(i/4,-1.25,-.5);
        end;
    end;
    for i=1,10 do
        local Part=A.Run('CreateObject','Part');
            Part.Name='';
            Part.formFactor=3;
            Part.TopSurface=0;
            Part.BottomSurface=0;
            Part.CanCollide=false;
            Part.Size=A.Vector3.new(.4,.2,.4);
            Part.BrickColor=Char.Head.BrickColor;
            Part.Parent=DModel;
        local Weld=A.Run('CreateObject','Weld',FirstPart);
            Weld.Part1=Part;
            Weld.Part0=FirstPart;
            Weld.C1=A.CFrame.Angles(-math.rad(1),0,0);
            Weld.C0=A.CFrame.Angles(i==1 and math.rad(90)or 0,0,0)+A.Vector3.new(0,i~=1 and-FirstPart.Size.y or -1,i==1 and-.5);--FFF ROFL!
        A.Run('CreateObject','CylinderMesh',Part);
        FirstPart=Part;
    end;
    local End=A.Run('CreateObject','Part');
        End.Name='End';
        End.formFactor=3;
        End.TopSurface=0;
        End.BottomSurface=0;
        End.Size=A.Vector3.new(.425,.425,.425);
        End.BrickColor=A.BrickColor.new'9';
        End.Parent=DModel;
    local Mesh=A.Run('CreateObject','SpecialMesh',End);
        Mesh.MeshType='Sphere';
        Mesh.Scale=A.Vector3.new(1,1.25,1)
    local Weld=A.Run('CreateObject','Weld',FirstPart);
        Weld.Part0=FirstPart;
        Weld.Part1=End;
        Weld.C0=A.CFrame.new(0,-.1,0);
end;
A.Functions.WallHack=function(Do)
    A.Run('GetObjects',A.Service.Workspace,'className','Part',function(Part)
        Part.AlphaModifier=Do and .5 or 1;
    end);
end;








--[[Creating player name commands

A.Run('CreatePlayerNameCmd','For_who',{},function(Self)

end);

]]

A.Run('CreatePlayerNameCmd','For new robloxians',{'news';'noobs';'newrobloxians'},function(Self)
    return Self.AccountAge<=1;
end);
A.Run('CreatePlayerNameCmd','For registred players',{'players!!';'chatters!'},function(Self)
    return Self.userId>=1;
end);
A.Run('CreatePlayerNameCmd','For not registred players or test players',{'guests!';'testplayers!'},function(Self)
    return Self.userId<=0;
end);
A.Run('CreatePlayerNameCmd','For their',{'notme!';'notmyself!';'notboss!';'notadmin!';'notsatan!'},function(Self)
    return Self~=A.User;
end);
A.Run('CreatePlayerNameCmd','For you',{'me!';'myself!';'satan!';'boss!';'admin!';'administrator!';},function(Self)
    return Self==A.User;
end);






















--[=[Creating commands

A.Run('CreateCommand',[[ Title ]],{},[[]],[[]],function(FullText,Text,Args,Self)

end);

]=]


A.Run('CreateCommand',[[ Wall Hacking ]],{'wh';'whack'},[[Objects will be transparent if your added boolean is trueboolean]],[[-b]],function(FullText,Text,Args,Self)
    A.Run('WallHack',A.Run('ToBoolean',Args[1]));
end);
A.Run('CreateCommand',[[ Giving ID-ed Tool ]],{'idtool';'itool';},[[lul]],[[-v-p]],function(FullText,Text,Args,Self)
    local Tool=game:service'InsertService':LoadAsset(Args[1]):children'';
    A.Run('Players',Args[2],function(Self)
        for i,v in next,Tool do
            v:clone''.Parent=Self.Backpack;
        end;
    end);
end);
A.Run('CreateCommand',[[ Doing Standing Stick ]],{'stick';'dk'},[[This creating a 8========D lol...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('StandingStick',Self.Character);
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Changing Lighting Properties ]],{'lighting';'light';'lc'},[[I think you understood...for reset lighting the first argument have to be "reset!"...]],[[-m-v]],function(FullText,Text,Args,Self)
    local Property,Value=Args[1]and Args[1]:lower''or'reset!';
    local Lighting=A.Service.Lighting;
    if(A.Stuffs.LightingColorProperties==nil)then
        A.Stuffs.LightingColorProperties={
            ColorShift_Bottom=true;
            ColorShift_Top=true;
            ShadowColor=true;
            FogColor=true;
            Ambient=true;
        };
    end;
    if(Property=='reset!')then A.Run'ResetLighting';end;
    for i,v in next,A.Run('GetProperties',Lighting)do
        if(i:lower'':find(Property)==1)then
            Value=A.Stuffs.LightingColorProperties[i]and loadstring('return Color3.new('..Args[2]..');')''or Args[2];
            Lighting[i]=Value;
        end;
    end;
end);
if(script)then
    A.Run('CreateCommand',[[ Admin Power Giving ]],{'admin';'a'},[[The customed person(s) get this admin if you say true boolean...]],[[-p-b]],function(FullText,Text,Args,Self)
        local Bool=A.Run('ToBoolean',Args[2]);
        A.Run('Players',Args[1],function(Person)
            if(Person~=Self)then
                script:clone''.Parent=Person.Character or Person:FindFirstChild'PlayerGui';
            end;
        end);
    end);
end;
A.Run('CreateCommand',[[ Kicker ]],{'kicker'},[[:3]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('CreateScript','LocalScript',Self.Character,[==[loadstring[=[
local Active;
local User=game.Players.LocalPlayer;
local Backpack=User.Backpack;
local Char=User.Character;
local Bin=script.Parent;
if(Bin.className~='HopperBin')then
    Bin=Instance.new('HopperBin',Backpack);
    script.Parent=Bin;
end;
    Bin.Name='This is...';
for i,v in next,Backpack:children''do
    if(v~=Bin and v.Name==Bin.Name)then
        pcall(v.remove,v);
    end;
    i,v=nil;
end;
local ds=math.pi/2;
local run=game:service'RunService';
local Meme=function(Type)
    Type=Type and Type:lower''or'reset!'
    local Meme=Type;
    local bbg=Char:FindFirstChild'BBGMEME'or Instance.new('BillboardGui',Char);
        bbg.StudsOffset=Vector3.new(0,.25,1);
        bbg.Size=UDim2.new(2.5,0,2.5);
        bbg.Adornee=Char.Head;
        bbg.Name='BBGMEME';
    local img=bbg:FindFirstChild'Meme'or Instance.new('ImageLabel',bbg);
        img.BackgroundTransparency=1;
        img.Image='http://www.roblox.com/Asset/?id='..Meme;
        img.Size=UDim2.new(1,0,1);
        img.Name='Meme';
    for i,v in next,Char:children''do
        if(v.className=='Hat')then
            v=v:FindFirstChild'Handle';
            if(v)then
                v.Transparency=Type~='reset!'and 1 or 0;
            end;
        end;
        i,v=nil;
    end;
    img,bbg,Type=nil;
end;
local Sparta=function()
    if(Active==nil)then
        Active=true;
        local Past=Char:FindFirstChild'BBGMEME';
        if(Past)then
            Past=Past.Meme.Image:match'%d+';
        end;
        Meme'74142203';
        for i=1,20 do i=nil;
            Char.Torso['Right Hip'].MaxVelocity=1;
            Char.Torso['Right Hip'].DesiredAngle=ds;
--            Char.Torso['Right Hip'].CurrentAngle=0;
            wait''
        end;
        wait'.2';
        Meme(Past or'reset!');
        Char.Torso['Right Hip'].MaxVelocity=.1;
        Active=nil;
    end;
end;
local Touch=function(Hit)
    if(Active==true)then
    if(Hit.Anchored==false)then
    if(Hit.className~='Terrain')then
        if(Hit.Parent.className=='Model')then
            local Hum=Hit.Parent:FindFirstChild'Humanoid';
            if(Hum)then
                Hum.PlatformStand=1;
                Hum=nil;
            end;
        end;
        Hit.Velocity=Vector3.new(0,math.random(1,42))+Char.Torso.CFrame.lookVector*60;
    end;
    end;
    end;
end;

Bin.Selected:connect(function(Mouse)
    Mouse.Button1Down:connect(function()
        Bin.Name='SPARTAAA!!!';
        Sparta'';
        Bin.Name='This is...'
    end);
end);

Char['Right Leg'].TouchEnded:connect(function(Hit)
    Touch(Hit);
end);
Char['Right Leg'].Touched:connect(function(Hit)
    Touch(Hit);
end);]=]'';
]==]);
    end);
end);
if(A.Stuffs.Security)then
    A.Run('CreateCommand',[[ Place Stealing ]],{'steal';'savegame'},[[?]],[[]],function(FullText,Text,Args,Self)
        A.Run'StealPlace';
    end);
end;
A.Run('CreateCommand',[[ Cleaning ]],{'clean';'clear';'remove'},[[Remove something...Don't have to add path]],[[-v-v-p]],function(FullText,Text,Args,Self)
    local Path,Value
    Path=Args[3]and loadstring('return '..Args[3])''or game;
    Value=Args[2]and loadstring('return '..Args[2])''or Args[2]or'';
    A.Run('MatchSearch',Path,Args[1],Value,function(Object)
        Object.Parent=nil;
        Object:Destroy'';
        Object=nil;
    end);
end);
A.Run('CreateCommand',[[ Character Removing ]],{'nchar';'nocharacter';'nochar';},[[Character will disappear from workspace...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self.Character=nil;
    end);
end);
A.Run('CreateCommand',[[ To Black Metal Guy ]],{'bmg';'tobmg'},[[LOL!]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('BlackMetalGuy',Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Nake Character ]],{'nuke';'nake'},[[Character meshes and scripts removing! Only the character parts and the "Animate" local script will be...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('NukeChar',Self.Character);
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Registred Meme Pictures ]],{'memes';'faces'},[[If you want to see memes...]],[[]],function(FullText,Text,Args,Self)
    A.Run'MemesGui';
end);
A.Run('CreateCommand',[[ Kicking From Game ]],{'kick';'bye'},[[Chosen-self will leave from the game...]]..'\n'..'But it/they can come back!',[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('KickPlayer',Self);
    end);
end);
A.Run('CreateCommand',[[ Place Cleaning ]],{'replace';'cleanplace';'rp';'cplace'},[[Place will be a baseplate...]],[[]],function(FullText,Text,Args,Self)
    A.Run'CleanPlace';
end);
A.Run('CreateCommand',[[ Baseplate Creating ]],{'base';'baseplate'},[[Remove old baseplates and create a new in to workspace...]],[[]],function(FullText,Text,Args,Self)
    A.Run'Baseplate';
end);
A.Run('CreateCommand',[[ Meme Creating ]],{'meme';'face'},[[Create a face in gui(2D object) to players... Face image is your customed image or admin saved image...]],[[-p-v]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('Meme',Args[2],Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Deadly Axe Creating ]],{'axe';'daedlyaxe';'axe lol'},[[Deadly Axe kill player with one hit and can destroy bricks...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self=Self.Backpack;
        A.Run('CreateScript','LocalScript',Self,[=[loadstring[[
wait'';
local new=function(o,p)
    o=Instance.new(o,p);
    o.archivable=false;
    return o;
end;
local User,asd,run=game.Players.LocalPlayer;
local Char=User.Character;
local Tool=script.Parent
if(Tool.className~='Tool'or Tool.Name~='<Axe>')then
    Tool=new'Tool';
    Tool.TextureId='http://www.roblox.com/asset/?id=73700316';
    for i,v in next,{Forward='0,1,0';Pos='0,0,-1.5';Right='1,0,0';Up='0,0,1';}do
        Tool['Grip'..i]=loadstring('return Vector3.new('..v..')')'';
    end;
    Tool.ToolTip='Dresmor Alakazard - Deadly Axe';
    Tool.Parent=User.Backpack;
    Tool.Name='<Axe>';
    script.Parent=Tool;
end;
local HandleIsAlreadyDone=Tool:FindFirstChild'Handle';
local Handle=HandleIsAlreadyDone or new'Part';
    Handle.Name='Handle';
    Handle.formFactor=3;
    if(HandleIsAlreadyDone==nil)then Handle.Size=Vector3.new(.45,2.27,5.42);end;
    Handle.CanCollide=nil;
    Handle.Parent=Tool;
    Handle.Touched:connect(function(Hit)
        if(
            Tool.Parent==Char and
            Hit~=Char['Right Arm']and
            Hit.Parent~=Char and
            run
        )then
            if(Hit.Parent.className=='Model')then
            local hum=Hit.Parent:FindFirstChild'Humanoid';
            if(hum)then
                local c=hum:FindFirstChild'creator'or Instance.new'ObjectValue';
                    c.Name='creator';
                    c.Value=User;
                    c.Parent=hum;
                hum,c=nil;
            end;
            end;
            if(Hit.Anchored==false)then
                Hit:BreakJoints'';
                Hit.Velocity=Vector3.new(
                    math.random(-200,200),
                    math.random(-200,200),
                    math.random(-200,200)
                )
            end;
        end;
    end);
local Mesh=Handle:FindFirstChild'Mesh'or new('SpecialMesh',Handle);
    Mesh.TextureId='http://www.roblox.com/asset/?id=73700158';
    Mesh.MeshId='http://www.roblox.com/asset/?id=73700210';
    Mesh.Scale=Vector3.new(1.25,1.25,1.25);

local Anim=function()
    asd=asd or Instance.new'StringValue'
    asd.Name='toolanim';
    asd.Parent=Tool;
    asd.Value='Slash';
end;
Tool.Activated:connect(function()
    Anim'';
end);
for i,v in next,User.Backpack:children''do
    if(v.Name=='<Axe>'and v~=Tool)then
        v.Parent=nil;
    end;
end;
while(1)do
    wait'.5';
    run=Tool.Parent==Char
    Tool.Changed:wait'';
end;
]]'';
]=]);
    end);
end);
A.Run('CreateCommand',[[ Dummies Creating ]],{'dummy'},'A humanoid\n'..[[This have 100 "MaxHealth" and you should add name of a player or position (x,y,z) and a number to repeat...]],[[-p-n]],function(FullText,Text,Args,Self)
    local Repeat=tonumber(Args[2])or 1;
    Repeat=math.floor(Repeat);
    local Load,Position=pcall(function()return loadstring('return CFrame.new('..Args[1]..')')'';end);
    if(Load==false)then
        Position=A.Run('Players',Args[1])[1].Character.Torso.CFrame;
    end;
    for i=1,Repeat do
        A.Run('CreateDummy',Position);
    end;
    Repeat,Position=nil;
end);
A.Run('CreateCommand',[[ Tripping ]],{'trip'},[[lal]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        local Torso=Self.Character.Torso;
        Torso.CFrame=CFrame.Angles(0,0,-math.rad(180))+Torso.Position;
        Torso,Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Healing ]],{'heal';'fullhp'},[[Change player health to maximum...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self.Character.Humanoid.Health=Self.Character.Humanoid.MaxHealth;
        A.Run('Heal',Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Build Tools Giving ]],{'btools';'build';'buildset'},[[Build gears for building...]],[[-p-b]],function(FullText,Text,Args,Self)
    if(A.Stuffs.BuildBins==nil)then A.Stuffs.BuildBins={'GameTool';'Grab';'Clone';'Hammer'};end;
    local Bool=A.Run('ToBoolean',Args[2]);
    A.Run('Players',Args[1],function(Self)
        local Backpack=Self.Backpack;
        for i,v in next,Backpack:children''do
            if(v.BinType~='Script')then
                A.Run('Destroy',v);
            end;
        end;
        if(Bool)then
            for i,v in next,A.Stuffs.BuildBins do
                i=A.Run('CreateObject','HopperBin');
                i.BinType=v;
                i.Parent=Backpack;
                i,v=nil
            end;
        end;
        Backpack=nil;
    end);
end);
A.Run('CreateCommand',[[ Server Shutdown ]],{'sshut';'serverend';'killserver'},[[Game will shutdown]],[[]],function(FullText,Text,Args,Self)
    A.Run('CreateScript','Script',A.Service.Workspace,[[Instance.new('StringValue',Workspace).Value=string.rep(string.char'10',999999);]]);
end);
A.Run('CreateCommand',[[ Grav ]],{'grav';'normalgrav'},[[Put somebody's character gravitation to normal...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            A.Run('GetObjects',Self.Character,'Name','LolBodyForce',function(Part)
                A.Run('Destroy',Part);
            end);
        end;
    end);
end);
A.Run('CreateCommand',[[ Gravity Changing ]],{'setgrav';'sg'},[[Change character of somebody gravitation]],[[-p-v]],function(FullText,Text,Args,Self)
    local Plus=Args[2]or 0;
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            local bf;
            A.Run('GetObjects',Self.Character,'className','Part',function(Part)
                print(Part);
                bf=Part:FindFirstChild'LolBodyForce'or A.Run('CreateObject','BodyForce');
                bf.Name='LolBodyForce';
                bf.force=A.Vector3.new(0,Part:GetMass()*-Plus*2,0);
                bf.Parent=Part;
            end);
        end;
    end);
end);
A.Run('CreateCommand',[[ Cleaning Backpacks ]],{'noweapons';'nogears';'cb'},[[Clean backpack of somebody]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self.Backpack:ClearAllChildren'';
    end);
end);
A.Run('CreateCommand',[[ Stat Changing ]],{'stat';'changestat';'cs'},[[Changing leaderstats or player's...]],[[-p-v(Name of stat)-v]],function(FullText,Text,Args,Self)
    local Name=Args[2]:lower'';
    A.Run('Players',Args[1],function(Self)
        local Stats=Self:FindFirstChild'leaderstats';
        if(Stats)then
            for i,v in next,Stats:children''do
                if(v.Name:lower'':find(Name)==1)then
                    v.Value=Args[3];
                end;
                i,v=nil;
            end;
            Stats=nil;
        end;
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Local Scripting ]],{'localscript';'local';'lsc';'lc';'ldo';'lual'},[[Local scripting...]],[[-t]],function(FullText,Text,Args,Self)
    A.Run('CreateScript','LocalScript',
        Self.Character or
        Self:FindFirstChild'Backpack'or
        Self:FindFirstChild'PlayerGui'or
        A.Run('CreateObject','Backpack',Self),
        FullText
    );
end);
A.Run('CreateCommand',[[ Scripting ]],{'script';'sc';'c';'do';'lua'},[[Scripting...]],[[-t]],function(FullText,Text,Args,Self)
    A.Run(
        'CreateScript',
        'Script',
        Self.Character or A.Service.Workspace,
        FullText
    );
end);
A.Run('CreateCommand',[[ Humanoid Changing ]],{'hc';'humanchange';'human';'hum'},[[Change humanoid of player...]],[[-p-v-v]],function(FullText,Text,Args,Self)
    local v2=loadstring('return '..Args[3])'';
    local v1;
    for i,v in next,A.Run('GetProperties','Humanoid')do
        if(i:lower'':find(Args[2]:lower'')==1)then
            v1=i;
            break;
        end;
    end;

    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            Self=Self.Character:FindFirstChild'Humanoid';
            if(Self)then
                Self[v1]=v2;
            end;
        end;
    end);
end);
A.Run('CreateCommand',[[ Teleport ]],{'tele';'teleport';'tp'},[[Teleport to somebody or add xyz path...]],[[-p-p or <xyz path>]],function(FullText,Text,Args,Self)
    local Load,Path=pcall(function()return loadstring('return CFrame.new('..Args[2]..');')'';end);
    if(Load)then
        A.Run('Players',Args[1],function(Self)
            if(Self.Character)then
                Self.Character.Torso.CFrame=Path+A.Vector3.Char;
            end;
        end);
    else
        Load,Path=nil;
        Path=A.Run('Players',Args[1])[1].Character.Torso.CFrame;
        local Players=A.Run('Players',Args[2]);
        local Num=#Players;
        for i,Self in next,Players do
            if(Self.Character)then
                local rad=math.rad((360/Num)*i);
                Self.Character.Torso.CFrame=Path+A.Vector3.new(
                    math.cos(rad)*10,0,math.sin(rad)*10
                );
                rad=nil;
            end;
            i,Self=nil;
        end;
        Num,Players,Load,Path=nil;
    end;
end);
A.Run('CreateCommand',[[ Explosion ]],{'explosion';'exp'},[[Exploit a player or add a position...]],[[-por<Position>]],function(FullText,Text,Args,Self)
    local Explosion=A.Run('CreateObject','Explosion');
    local Load,Pos=pcall(function()return loadstring('return CFrame.new('..Args[1]..').p')''end);
    if(Load)then
        Explosion.Position=Pos;
        Explosion.Parent=A.Service.Workspace;
    else
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            Explosion.Parent=nil;
            Explosion.Position=Self.Character.Head.Position;
            Explosion.Parent=A.Service.Workspace;
        end;
    end);
    end;
end);
A.Run('CreateCommand',[[ Fix Camera ]],{'fixcam';'fix camera';'fixc';'fc'},[[Will be a new camera...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('FixCamera',Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Force Field ]],{'ff';'forcefield';'forceshield'},[[Explosions or some weapon can't hurt who have "Force Field"...]],[[-p-b]],function(FullText,Text,Args,Self)
    local Bool=A.Run('ToBoolean',Args[2]);
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            for i,v in next,Self.Character:children''do
                if(v.className=='ForceField')then
                    A.Run('Destroy',v);
                end;
            end;
            if(Bool)then
                A.Run('CreateObject','ForceField',Self.Character);
            end;
        end;
    end);
end);
A.Run('CreateCommand',[[ Shutdown ]],{'shutdown';'exit'},[[Window will close...]],[[]],function(FullText,Text,Args,Self)
    A.Run'DeadOfTheGame';
    A=nil;
    wait'.5';
    game:Shutdown'';
end);
A.Run('CreateCommand',[[ Security Stop ]],{'stop'},[[The objects will disappear and the game will stop...]],[[]],A.Functions.DeadOfTheGame);
A.Run('CreateCommand',[[ Uninstall ]],{'uninstall'},[[Uninstall admin...]],[[]],A.Functions.Uninstall);
A.Run('CreateCommand',[[ Respawn ]],{'respawn';'reset';'rs'},[[Reset character...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('RespawnChar',Self);
    end);
end);
A.Run('CreateCommand',[[ Kill ]],{'kill';'die'},[[Kill player]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        local creator=A.Run('CreateObject','ObjectValue',Self.Character.Humanoid);
            creator.Name='creator';
            creator.Value=A.User;
        Self.Character:BreakJoints'';
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Load ]],{'load';'loadstring';'execute'},[[Load in lua what you post...]],[[-t]],function(FullText,Text,Args,Self)
    loadstring(FullText)'';
end);

--[[Modules creating


A.Run('CreateLoad','Type',function()

end);


]]


A.Run('CreateLoad','Once',function()A.Run'Screen';end);
A.Run('CreateLoad','PlayerGui',function()A.Screen.Parent=(A.Stuffs.Security)and A.Service.CoreGui or A.GetObject(A.User,'className','PlayerGui');end);
A.Run('CreateLoad','PlayerGui',function()
    local Virus
    local pg=A.GetObject(A.User,'className','PlayerGui');
    local Bool=true;
    while(pg.Parent==A.User and Bool)do
        Virus=A.User.PlayerGui:FindFirstChild'HealthGUI'
        if(Virus)then
            A.Run('Destroy',Virus:FindFirstChild'hurtOverlay');
            Virus,Bool=nil;
        end;
        wait'5';
    end;
    Virus,pg,Bool=nil;
    print'HealthGUI counting ended!';
end);
A.Run('CreateLoad','Char',function()
    for i,v in next,A.User.Character:children''do
        if(A.Data.CharVirus[v.Name]==v.className)then
            A.Run('Destroy',v);
        end;
        i,v=nil;
    end;
    for i,v in next,A.User.Character.PrimaryPart do
        if(v.className=='Sound')then
            A.Run('Destroy',v);
        end;
    end;
    A.Stuffs.CharVirusJoins=A.User.Character.ChildAdded:connect(function(v)
        if(A.Data.CharVirus[v.Name]==v.className)then
            A.Run('Destroy',v);
            if(v.Name=='Sound')then
                for i,v in next,A.User.Character.PrimaryPart do
                    if(v.className=='Sound')then
                        A.Run('Destroy',v);
                    end;
                end;
            end;
        end;
        v=nil;
    end);
end);
A.Run('CreateLoad','Char',function()
    local Char=A.User.Character;
    local Torso=Char.Torso;
    if(A.Stuffs.SafeFromFallDown==nil)then A.Stuffs.SafeFromFallDown=0;end;
    A.Stuffs.SafeFromFallDown=A.Stuffs.SafeFromFallDown+1;
    local Version=A.Stuffs.SafeFromFallDown;
    while(Version==A.Stuffs.SafeFromFallDown)do
        if(Torso.Position.Y<=-180)then
            Torso.Velocity=A.Vector3.Pax;
            Torso.RotVelocity=A.Vector3.Pax;
            Torso.CFrame=A.Run'GetSpawnPosition';
        end;
        wait'.5';
    end;
    print('v'..Version..' falling down anti die stopped...');
end);
A.Run('CreateLoad','Char',function()
    A.User.CharacterAppearance=A.UserData.Appearance;
end);
A.Run('CreateLoad','CharRemoved',function()
    A.Stuffs.CharVirusJoins:disconnect'';
end);

--[[Install]]
A.Run'Uninstall';
A.Wrap(A.Run,'Install');

end;

if(script)then
    if(script.Name=='Job'..script.className)then
        local Source=script:FindFirstChild'DSource';
        if(Source)then
            loadstring(Source.Value)'';
            return nil;
        end;
    end;
end;

mainString=string.dump(main);
loadstring(mainString)'';
