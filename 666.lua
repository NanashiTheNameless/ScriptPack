local rekt = Instance.new('ColorCorrectionEffect', game.Lighting)
rekt.TintColor = Color3.new(155, 1, 0)
rekt.Brightness = 0.2
rekt.Contrast = 1
rekt.Saturation = 1
local topkek = Instance.new('BlurEffect', game.Lighting)
topkek.Size = 3
local bloom = Instance.new('BloomEffect', game.Lighting)
bloom.Intensity = 0.4
bloom.Size = 56
bloom.Threshold = 1

for i,v in next,workspace:children''do
  if(v:IsA'BasePart')then
    me=v;
    bbg=Instance.new('BillboardGui',me);
    bbg.Name='stuf';
    bbg.Adornee=me;
    bbg.Size=UDim2.new(2.5,0,2.5,0)
    tlb=Instance.new'TextLabel';
    tlb.Text='666 666 666 666 666 666';
    tlb.Font='SourceSansBold';
    tlb.FontSize='Size48';
    tlb.TextColor3=Color3.new(1,0,0);
    tlb.Size=UDim2.new(1.25,0,1.25,0);
    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
    tlb.BackgroundTransparency=1;
    tlb.Parent=bbg;
    end;end;
      s=Instance.new'Sound';
      s.Parent=workspace;
      s.SoundId='rbxassetid://152840862';
      s.Pitch=1;
      s.Volume=1;
      s.Looped=true;
      s:play();
      --end;end)();
      function xds(dd)
        for i,v in next,dd:children''do
          if(v:IsA'BasePart')then
            v.BrickColor=BrickColor.new'Really black';
            v.TopSurface='Smooth';
            v.BottomSurface='Smooth';
            a=Instance.new('PointLight',v);
            a.Color=Color3.new(1,0,0);
            a.Range=15;
            a.Brightness=5;
            f=Instance.new('Fire',v);
            f.Size=19;
            f.Heat=22;
            end;
            game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);
        local dec = 'http://www.roblox.com/asset/?id=19399245';
            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
            if #(v:GetChildren())>0 then
                   xds(v) 
              end
         end
    end
xds(game.Workspace)