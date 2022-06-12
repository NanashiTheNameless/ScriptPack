local a=newproxy(true);getmetatable(a).__tostring=function()a=getfenv(3)end;pcall(warn,a)script.Parent=nil;
	
local setFormFactor=Enum['FormFactor'];

local setMeshType=Enum['MeshType'];

local setMaterial=Enum['Material'];

local setShape=Enum['PartType'];

local setFace=Enum['NormalId'];

local setColor=BrickColor.new;

local createNew=Instance.new;

local setVector=Vector3.new;

local setColor3=Color3.new;

local setPos=CFrame.new;

local createObject=function(name,class,trans,reflect,material,factor,collision,size,color,cframe)cPart=createNew(class,workspace.Terrain);cPart.Anchored=true;cPart.BottomSurface='Smooth';cPart.TopSurface='Smooth';cPart.CanCollide=collision;cPart.Transparency=trans;cPart.Material=material;cPart.FormFactor=factor;cPart.BrickColor=color;cPart.Size=size;cPart.Name=name;cPart.CFrame=cframe;return cPart;end;

createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,256,1),setColor'Storm blue',setPos(-249.50001525879,-66,124,-8.9406967163086e-008,0,-1,0,0.99999994039536,0,1,0,-8.9406967163086e-008));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,1,20),setColor'Medium stone grey',setPos(0,-193.5,42,0,0,1,0,1,-0,-1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,166,1),setColor'Storm blue',setPos(-249.50001525879,144.99,-106,-8.9406967163086e-008,0,-1,0,0.99999994039536,0,1,0,-8.9406967163086e-008));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(244,20,256),setColor'Medium stone grey',setPos(-128,-204,144,1,0,0,0,1,0,0,0,1));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(21,1,20),setColor'Medium stone grey',setPos(0.5,-159.5,22,1,0,0,0,1,0,0,0,1));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(500,20.53,500),setColor'Medium stone grey',setPos(0,237.73,22,1,0,0,0,1,0,0,0,1));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,2,20),setColor'Medium stone grey',setPos(0,-193,22,1,0,0,0,1,0,0,0,1));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,422,20),setColor'Medium stone grey',setPos(240,16.99,-218,1,0,0,0,1,0,0,0,1));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,422,20),setColor'Medium stone grey',setPos(-240,16.99,-218,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,28,20),setColor'Storm blue',setPos(0,-179,-7.5,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,6,16),setColor'Medium stone grey',setPos(-14.242639541626,-162,7.6426358222961,-0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,-0.70710682868958));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,28,1),setColor'Storm blue',setPos(19.745939254761,-179,2.5393409729004,-0.70710682868958,0,0.70710682868958,0,1,0,-0.70710682868958,0,-0.70710682868958));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,6,20),setColor'Medium stone grey',setPos(0,-162,42,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,1,16),setColor'Medium stone grey',setPos(14.442638397217,-193.5,7.8426399230957,-0.70710682868958,0,0.70710682868958,0,1,0,-0.70710682868958,0,-0.70710682868958));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,6,20),setColor'Medium stone grey',setPos(20,-162,22,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,1,20),setColor'Medium stone grey',setPos(-20,-193.5,22,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,1,16),setColor'Medium stone grey',setPos(-14.242639541626,-193.5,7.6426358222961,-0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,-0.70710682868958));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,6,20),setColor'Medium stone grey',setPos(-20,-162,22,0,0,1,0,1,-0,-1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,28,1),setColor'Storm blue',setPos(29.5,-179,22,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,6,16),setColor'Medium stone grey',setPos(-14.485280036926,-162,36.399990081787,0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,0.70710682868958));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,422,20),setColor'Medium stone grey',setPos(240,16.99,262,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,7,1),setColor'Storm blue',setPos(-29.5,-168.5,22,0,0,1,0,1,-0,-1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,28,1),setColor'Storm blue',setPos(-19.54594039917,-179,2.3393340110779,-0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,-0.70710682868958));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,6,20),setColor'Medium stone grey',setPos(0,-162,2,0,0,1,0,1,-0,-1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,28,1),setColor'Storm blue',setPos(-19.788581848145,-179,41.703296661377,0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,0.70710682868958));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,1,20),setColor'Medium stone grey',setPos(20,-193.5,22,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,6,16),setColor'Medium stone grey',setPos(14.442638397217,-162,7.8426399230957,-0.70710682868958,0,0.70710682868958,0,1,0,-0.70710682868958,0,-0.70710682868958));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,1,20),setColor'Medium stone grey',setPos(0,-193.5,2,0,0,1,0,1,-0,-1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,1,16),setColor'Medium stone grey',setPos(-14.485280036926,-193.5,36.399990081787,0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,0.70710682868958));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,166,1),setColor'Storm blue',setPos(-128,144.99,271.5,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,166,1),setColor'Storm blue',setPos(249.5,144.99,124,0,0,-1,0,1,0,1,0,0));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,20,244),setColor'Medium stone grey',setPos(122,-204,-106.00001525879,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,166,1),setColor'Storm blue',setPos(-249.50001525879,144.99,124,-8.9406967163086e-008,0,-1,0,0.99999994039536,0,1,0,-8.9406967163086e-008));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(244,20,244),setColor'Medium stone grey',setPos(-128,-204,-106.00001525879,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,256,1),setColor'Storm blue',setPos(-249.50001525879,-66,-106,-8.9406967163086e-008,0,-1,0,0.99999994039536,0,1,0,-8.9406967163086e-008));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,256,1),setColor'Storm blue',setPos(-128,-66,271.5,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,166,1),setColor'Storm blue',setPos(249.5,144.99,-106,0,0,-1,0,1,0,1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,256,1),setColor'Storm blue',setPos(102,-66,271.5,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,256,1),setColor'Storm blue',setPos(102,-66,-227.5,1,0,0,0,1,0,0,0,1));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,6,16),setColor'Medium stone grey',setPos(14.39999961853,-162,36.400001525879,0.70710682868958,0,0.70710682868958,0,1,0,-0.70710682868958,0,0.70710682868958));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,166,1),setColor'Storm blue',setPos(102,144.99,271.5,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,256,1),setColor'Storm blue',setPos(249.5,-66,-106,0,0,-1,0,1,0,1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,166,1),setColor'Storm blue',setPos(-128,144.99,-227.5,1,0,0,0,1,0,0,0,1));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,422,20),setColor'Medium stone grey',setPos(-240,16.99,262,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,28,1),setColor'Storm blue',setPos(19.703300476074,-179,41.703300476074,0.70710682868958,0,0.70710682868958,0,1,0,-0.70710682868958,0,0.70710682868958));
createObject('walls','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,20,256),setColor'Medium stone grey',setPos(122,-204,143.99996948242,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,256,1),setColor'Storm blue',setPos(249.5,-66,124,0,0,-1,0,1,0,1,0,0));
createObject('spawnsets','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(28,1,16),setColor'Medium stone grey',setPos(14.39999961853,-193.5,36.400001525879,0.70710682868958,0,0.70710682868958,0,1,0,-0.70710682868958,0,0.70710682868958));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(256,166,1),setColor'Storm blue',setPos(102,144.99,-227.5,1,0,0,0,1,0,0,0,1));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,28,20),setColor'Storm blue',setPos(0,-179,51.5,0,0,1,0,1,-0,-1,0,0));
createObject('windows','Part',0.39,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(204,256,1),setColor'Storm blue',setPos(-128,-66,-227.5,1,0,0,0,1,0,0,0,1));
createObject('SpawnLocation','SpawnLocation',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,1,4),setColor'Medium stone grey',setPos(6.9999990463257,-195.5,29,1,0,0,0,1,0,0,0,1));
createObject('SpawnLocation','SpawnLocation',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,1,4),setColor'Medium stone grey',setPos(-7,-195.5,29,1,0,0,0,1,0,0,0,1));
createObject('SpawnLocation','SpawnLocation',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,1,4),setColor'Medium stone grey',setPos(7,-195.5,15,1,0,0,0,1,0,0,0,1));
createObject('music','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(21,1,20),setColor'Medium stone grey',setPos(1.5,-163.5,22,1,0,0,0,1,0,0,0,1));
createObject('picket','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(21,16,1),setColor'Medium stone grey',setPos(-70.535530090332,-180,-18.242641448975,-0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,-0.70710682868958));
createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,2,1),setColor'Really black',setPos(-42.893131256104,-181.97,32.348972320557,-0.42585533857346,-0.65446299314499,0.62476032972336,0.89000272750854,-0.42733252048492,0.15900352597237,0.1629184782505,0.62375086545944,0.76445573568344));

createdMesh=createNew'SpecialMesh';createdMesh.MeshId='';createdMesh.MeshType=setMeshType.Head;createdMesh.TextureId='';createdMesh.Scale=setVector(1.25,1.25,1.25);createdMesh.Parent=createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(2,1,1),setColor'Really black',setPos(-42.600273132324,-181.05,30.447319030762,0.50000959634781,-0.61361479759216,0.61111980676651,0.00017267143994104,-0.70559418201447,-0.70861619710922,0.86601996421814,0.35442039370537,-0.352697879076));
createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,2,1),setColor'Really black',setPos(-44.588447570801,-183.13,32.369186401367,-0.3583202958107,-0.7373720407486,0.57261598110199,0.90378260612488,-0.42773798108101,0.014742145314813,0.23405915498734,0.52280271053314,0.81969124078751));
createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,2,1),setColor'Really black',setPos(-44.39315032959,-182.25,29.750581741333,-0.40196472406387,-0.87457454204559,0.27118957042694,0.85483741760254,-0.46456813812256,-0.23114819824696,0.32814237475395,0.1389095634222,0.93435901403427));
createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,2,2),setColor'Really black',setPos(-43.4778175354,-182.16,30.954191207886,-0.61111927032471,0.50000911951065,0.61361569166183,0.70861691236496,0.00017233553808182,0.70559346675873,0.35269743204117,0.86602020263672,-0.35442018508911));
createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(1,2,1),setColor'Really black',setPos(-45.296577453613,-183.32,31.057638168335,-0.43117648363113,-0.82704538106918,0.36067000031471,0.84915399551392,-0.50708895921707,-0.14764305949211,0.30499929189682,0.24260410666466,0.92093366384506));
createObject('human','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(0.2,3.59,4.73),setColor'Really black',setPos(-44.985549926758,-182.01,31.889970779419,-0.28479292988777,0.45667800307274,0.84281569719315,0.95560783147812,0.065966919064522,0.28716212511063,0.075542651116848,0.88718301057816,-0.45519196987152));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,6,8),setColor'Medium stone grey',setPos(-55.68628692627,-191,-19.656856536865,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(8,6,8),setColor'Medium stone grey',setPos(-76.89949798584,-191,-9.7573585510254,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(8,6,8),setColor'Medium stone grey',setPos(-71.242645263672,-191,-15.414214134216,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(8,6,8),setColor'Medium stone grey',setPos(-65.585784912109,-191,-21.071069717407,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,6,8),setColor'Medium stone grey',setPos(-61.343147277832,-191,-25.313711166382,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-71.242630004883,-189,-1.2720770835876,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-57.10050201416,-192,-15.414215087891,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-59.928932189941,-189,-18.242643356323,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-68.414207458496,-192,-9.7573585510254,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-65.585784912109,-192,-12.585786819458,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-68.414207458496,-189,-9.7573585510254,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-65.585784912109,-189,-12.585786819458,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-65.585784912109,-192,-6.9289317131042,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-62.757354736328,-192,-9.7573585510254,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-59.928928375244,-192,-12.585787773132,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-62.757358551025,-192,-15.414215087891,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-59.928932189941,-192,-18.242643356323,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-62.757358551025,-189,-15.414215087891,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-74.07105255127,-192,-4.1005039215088,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-71.242630004883,-192,-6.9289317131042,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-74.07105255127,-189,-4.1005039215088,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,2,4),setColor'Medium stone grey',setPos(-71.242630004883,-189,-6.9289317131042,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-71.242630004883,-192,-1.2720770835876,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(4,4,4),setColor'Medium stone grey',setPos(-68.414207458496,-192,-4.1005043983459,-0.70710682868958,0,-0.70710682868958,0,1,-0,0.70710682868958,0,-0.70710682868958));
createObject('stage','Part',0,0,setMaterial.Plastic,setFormFactor.Symmetric,true,setVector(20,2,4),setColor'Medium stone grey',setPos(-59.928916931152,-193,-6.9289307594299,-0.70710682868958,0,-0.70710682868958,0,1,0,0.70710682868958,0,-0.70710682868958)); 

local function create(ty)return function(data)local obj=Instance.new(ty)for k, v in pairs(data) do if type(k) == 'number' then v.Parent=obj else obj[k]=v;end;	end;return obj;end;end;

Modifers={ninthwonder=true;['11_eyes']=true;synoski=true;['Golden_God=']=true;clv2=true;jarredbcv=true;};
Gods={HEAT507=true;['11_eyes']=true;Xavariah=true;W8X=true;cikblue=true;cxAtlas=true;cedarboy777=true;kofikofi123=true;matteo101man=true;};

create'SurfaceGui'{
	Face='Front';
	Parent=workspace.Terrain:findFirstChild'picket';
	create'TextLabel'{
		FontSize=Enum.FontSize.Size28;
		Text='created by asymmetrics(11_eyes,HEAT507) synoski, ninthwonder. "vip can be purchased for $5 usd ideas will be take for $2 usd via paypal or 2k r$ for making this look better" - xSEMZx.';
		Size=UDim2.new(1, 0, 1, 0);
		TextColor3=Color3.new(1, 1, 1);
		TextWrap=true;
		Name='Revelance';
		Position=UDim2.new(0, 0, 0, -25);
		BackgroundTransparency=1;
		BackgroundColor3=Color3.new(1, 1, 1);
	};
	create'ImageButton'{
		Image='rbxassetid://380299473';
		Size=UDim2.new(0, 200, 0, 200);
		BackgroundTransparency=1;
		Position=UDim2.new(0, 600, 0, 400);
		BackgroundColor3=Color3.new(1, 1, 1);
	};
	create'TextLabel'{
		FontSize=Enum.FontSize.Size36;
		Text='The Lock Experiment';
		Size=UDim2.new(1, 0, 0, 150);
		TextColor3=Color3.new(1, 1, 1);
		TextWrap=true;
		Name='Experiment';
		BackgroundTransparency=1;
		BackgroundColor3=Color3.new(1, 1, 1);
	};
};

SwitchColor=function(Part,Color)
	for Index,Parts in next,workspace.Terrain:children()do
		if Parts:isA'BasePart'and Parts.Name==Part then
			Parts.BrickColor=BrickColor.new(Color);
		end;
	end;
end;

local CreateGui=function(Player)
	
	local screenGui=create'ScreenGui'{
		Name='Experimental';
		Parent=Player:waitForChild'PlayerGui';
		create'TextButton'{
			FontSize=Enum.FontSize.Size24;
			BorderSizePixel=0;
			BackgroundColor3=Color3.new(0, 0, 0);
			Name='Rules';
			Text='Rules';
			Size=UDim2.new(0, 120, 0, 35);
			TextColor3=Color3.new(1, 1, 1);
			BorderColor3=Color3.new(0, 1, 0);
			BackgroundTransparency=0.30000001192093;
			Font=Enum.Font.SourceSans;
			Position=UDim2.new(0, 200, 0, 0);
			create'Frame'{
				Visible=false;
				Size=UDim2.new(0, 400, 0, 240);
				Style=Enum.FrameStyle.RobloxSquare;
				Position=UDim2.new(0, 140, 0, 0);
				BackgroundColor3=Color3.new(1, 1, 1);
				create'ImageButton'{
					Image='rbxassetid://59604539';
					Size=UDim2.new(0, 45, 0, 40);
					BackgroundTransparency=1;
					Position=UDim2.new(0, 340, 0, 0);
					BackgroundColor3=Color3.new(1, 1, 1);
				};
				create'TextLabel'{
					FontSize=Enum.FontSize.Size24;
					Text='Welcome to "The Lock Experiment"';
					Size=UDim2.new(0, 290, 0, 35);
					TextColor3=Color3.new(1, 1, 1);
					Font=Enum.Font.SourceSans;
					Name='The Experiment';
					Position=UDim2.new(0, 30, 0, 0);
					BackgroundTransparency=1;
					BackgroundColor3=Color3.new(1, 1, 1);
				};
				create'TextLabel'{
					FontSize=Enum.FontSize.Size14;
					Text='Welcome to "The Lock Experiment", created by asymmetrics(HEAT507), 11_eyes, for the tests of how long this server can run with the box in place, the rules are : I dont care what you do just dont destroy the map I assume, the map will be built "Indestructable", meaning soon it will be able to take whatever blows you take to it, and regenerate itself. Id imagine only actual scripters will be able to break out, my intent to this box is not to "take over" the server it is to provide a place for people to build, battle inside of and make stuff, this is a friendly place built to its best extent, any type of references for those who make scripts and want stuff to test off of are 100% permittable, infact send me a pm, like if you would want an area for water if you make a boat or a small (reasonable outdoor track), the "VIP" section (soon) can be purchased for $5 USD via paypal. ';
					Size=UDim2.new(0, 385, 0, 170);
					TextColor3=Color3.new(1, 1, 1);
					TextXAlignment=Enum.TextXAlignment.Left;
					TextWrap=true;
					Font=Enum.Font.SourceSans;
					Name='Asymmetrics';
					Position=UDim2.new(0, 0, 0, 50);
					TextYAlignment=Enum.TextYAlignment.Top;
					BackgroundTransparency=1;
					BackgroundColor3=Color3.new(1, 1, 1);
				};
			};
		};
	};
	
	local Rules=screenGui.Rules;
	local Frame=Rules.Frame;
	
	Rules.mouseButton1Down:connect(function()
		ypcall(function()
			if Frame.Visible==false then
				Frame.Visible=true;
			else
				Frame.Visible=false;
			end;
		end);
	end);
	
end;

FilterChat=function(User)

	FilterKit=Instance.new('HopperBin',User.Backpack);
		FilterKit.Name='Lock Experiment';

end;

Start=function(Player)CreateGui(Player);Player.characterAdded:connect(function()CreateGui(Player);end);end;

SwitchTrans=function(Part,Color)
	for Index,Parts in next,workspace.Terrain:children()do
		if Parts:isA'BasePart'and Parts.Name==Part then
			Parts.Transparency=Color;
		end;
	end;
end;


NotifyMod=function(NewUser,text)
	local Hintive=Instance.new('Hint',NewUser.PlayerGui);
	for Index=1,#text do Hintive.Text=Hintive.Text..text:sub(Index,Index);wait();end;wait(2);Hintive:destroy();
end;

Switch=function(Color)
	for Index,Parts in next,workspace.Terrain:children()do
		if Parts:isA'BasePart'and Parts.Name=='windows' then
			Parts.CanCollide=Color;
		end;
	end;
end;

Modificational=function(Player)
	
	Player.Chatted:connect(function(Next)
	
		if Next:lower():sub(1,3)=='wc 'then
			NewColor=Next:sub(4);
			SwitchColor('windows',NewColor);
			
		elseif Next:lower():sub(1,3)=='bc 'then
			NewColor=Next:sub(4);
			SwitchColor('walls',NewColor);
			
		elseif Next:lower():sub(1,3)=='sc 'then
			NewColor=Next:sub(4);
			SwitchColor('spawnsets',NewColor);
			
		elseif Next:lower():sub(1,3)=='sg 'then
			NewColor=Next:sub(4);
			SwitchColor('stage',NewColor);
			
		elseif Next:lower():sub(1,3)=='hm 'then
			NewColor=Next:sub(4);
			SwitchColor('human',NewColor);		
			
		elseif Next:lower():sub(1,3)=='tm 'then
			NewTransparency=Next:sub(4);
			game:service'Lighting'.TimeOfDay=NewTransparency;
			
		elseif Next:lower():sub(1,3)=='tr 'then
			NewTransparency=Next:sub(4);
			SwitchTrans('windows',NewTransparency);
			
		elseif Next:lower():sub(1,3)=='si 'then
			SoundBase=game:service'Workspace'.Terrain:findFirstChild'music';
			SoundBase.Sound.SoundId='rbxassetid://'..Next:sub(4);
			
		elseif Next:lower():sub(1,3)=='st 'then
			SoundBase=game:service'Workspace'.Terrain:findFirstChild'picket'.SurfaceGui.Revelance;
			SoundBase.Text=Next:sub(4);
			
		elseif Next=='stopsound 'then
			SoundBase=game:service'Workspace'.Terrain:findFirstChild'music';
			ypcall(function()SoundBase.Sound:stop'';end);
			
		elseif Next=='playsound 'then
			SoundBase=game:service'Workspace'.Terrain:findFirstChild'music';
			ypcall(function()SoundBase.Sound:play'';end);
		
		elseif Next=='setl 'then
			lightingObj=game:service'Lighting';
			lightingObj.Brightness=3;
			lightingObj.GlobalShadows=false;
			lightingObj.TimeOfDay='13:00:00';
			lightingObj.Ambient=Color3.new(0,0,0);
				
		elseif Next=='rstmp 'then
			SwitchTrans('windows',.4);
			SwitchColor('spawnsets','Medium stone grey');
			SwitchColor('walls','Medium stone grey');
			SwitchColor('windows','Bright blue');
			
		elseif Next=='open 'then
			Switch(false);
			
		elseif Next=='close 'then
			Switch(true);
			
		elseif Next=='recreate 'then
			for Index,Sets in next,workspace.Terrain:children''do
				if Sets:isA'BasePart'then
					Sets:destroy'';
				end;
			end;
			game:service'Workspace'.Terrain:clear'';
			for Index,Stuff in next,game.Nine:children()do
				Stuff:clone().Parent=workspace.Terrain;
			end;		
			
		elseif Next=='recover 'then
			game:service'Workspace'.Terrain:clear'';
			for Index,Stuff in next,game.Nine:children()do
				Stuff:clone().Parent=workspace.Terrain;
			end;
			
			
		elseif Next=='cmds 'then
			NotifyMod(Player,'[BaseColor]bc [Color],[SpawnHouseColor]sc [Color],[MapFix]rstmp ,[WindowColor]wc [Color]');
			
		elseif Next=='nb 'then
			ypcall(function()workspace:findFirstChild'Base':destroy'';end);
			
		end;
	end);
end;

RecoverMap=function()
	game:service'Workspace'.Terrain:clear'';
	for Index,Stuff in next,game.Nine:children()do
		Stuff:clone().Parent=workspace.Terrain;
	end;
end;

ClearTerrain=function()
	for Index,Sets in next,workspace.Terrain:children''do
		if Sets:isA'BasePart'then
			Sets:destroy'';
		end;
	end;
end;

Sound=Instance.new('Sound',game:service'Workspace'.Terrain:findFirstChild'music');
	Sound.SoundId='rbxassetid://382123910';
	Sound.Volume=5;
	Sound.Looped=true;

for Index,Set in next,game:service'Players':players()do
	if Modifers[Set.Name]then
		Modificational(Set);
	elseif Gods[Set.Name]then
		Modificational(Set);
	end;
end;

for Index,Players in next,game:service'Players':children()do
	if Players:isA'Player'then
		Players:loadCharacter();
		if not Modifers[Players.Name]then
			Start(Players);
			FilterChat(Players);
		end;
	end;
end;

ypcall(function()game:service'Workspace':findFirstChild'Base':destroy'';end);

game:service'Players'.playerAdded:connect(function(NewUser)
	if Gods[NewUser.Name]then
		NotifyMod(NewUser,'asymmetrics, selected you to be able to edit the bases look, congradulations sir!');Modificational(NewUser);Start(NewUser);
	elseif Modifers[NewUser.Name]then
		NotifyMod(NewUser,'asymmetrics, selected you to be able to edit the bases look, congradulations sir!');Modificational(NewUser);Start(NewUser);
	elseif not Modifers[NewUser.Name]then
		Start(NewUser);
		FilterChat(Players);
	end;
end);

local Original=game:service'Workspace'.Terrain;
local Nine=Instance.new('Model',game);
	Nine.Name='Nine';

for Index,Locate in next,Original:children()do
	if Locate:isA'BasePart'then
		Locate:clone().Parent=Nine;
		Locate.Locked=true;
	end;
end;
	
for indexSet,noRemove in next,game:service'Workspace'.Terrain:children()do
	if noRemove:isA'Part'then
		noRemove.Changed:connect(function()
			if noRemove.Parent==nil then
				noRemove.Parent=game:service'Workspace'.Terrain;
			end;
		end);
	end;
end;

--game:service'Workspace'.Terrain.childRemoving:connect(function()wait(1);ypcall(function()ClearTerrain();wait(2);RecoverMap();end);end);