local function o(n,e,...)return n[e](n,...)end
local function D(j)local a=""local n=getfenv()local h,D,r,o,m,e,n,l=n.ipairs,n.pairs,n.type,n.setmetatable,n.tonumber,n.string,n.math,n.table
local p,z,w,s,q,y,c,u,x,e,l,C=l.sort,l.insert,l.concat,n.max,n.huge,n.min,n.floor,n.pow,e.char,e.byte,e.sub,e.match
local function Q(n)a=a..x(n)end
local function b(e)local n={}n.o=e
n.w={}n.p=1
return n
end
local function f(n,l)local e=n.p
n.o(l)n.w[e]=l
n.p=e%32768+1
end
local function n(e,n)return e%(n+n)>=n
end
local function i(l)local n={}local e=o({},n)function n:__index(n)local l=l(n)e[n]=l
return l
end
return e
end
local t=i(function(n)return 2^n end)local d=o({},{__mode='k'})local function Y(o)local n=1
local l={}function l:r()local l
if n<=#o then
l=e(o,n)n=n+1
end
return l
end
return l
end
local function n(t)local n=0
local l=''local o={}function o:r()n=n+1
if n>#l then
l=t()if not l then return end
n=1
end
return e(l,n,n)end
return o
end
local function F(c)local l=0
local n=0
local o={}function o:n()return n
end
function o:r(e)e=e or 1
while n<e do
local e=c:r()if not e then return end
l=l+t[n]*e
n=n+8
end
local o=t[e]local t=l%o
l=(l-t)/o
n=n-e
return t
end
d[o]=true
return o
end
local function E(n)local e
if d[n]then
return n
elseif r(n)=='string'then
e=F(Y(n))end
return e
end
local function Y(n)local e
if r(n)=='function'then
e=n
end
return e
end
local function d(e,l)local n={}if l then
for l,e in D(e)do
if e~=0 then
n[#n+1]={v=l,n=e}end
end
else
for l=1,#e-2,2 do
local l,e,o=e[l],e[l+1],e[l+2]if e~=0 then
for l=l,o-1 do
n[#n+1]={v=l,n=e}end
end
end
end
p(n,function(e,n)return e.n==n.n and e.v<n.v or e.n<n.n
end)local e=1
local l=0
for o,n in h(n)do
if n.n~=l then
e=e*t[n.n-l]l=n.n
end
n.c=e
e=e+1
end
local e=q
local c={}for l,n in h(n)do
e=y(e,n.n)c[n.c]=n.v
end
local l=function(e,l)local n=0
for l=1,l do
local l=e%2
e=(e-l)/2
n=n*2+l
end
return n
end
local t=i(function(n)return t[e]+l(n,e)end)function n:r(o)local l=1
local n=0
while 1 do
if n==0 then
l=t[o:r(e)]n=n+e
else
local e=o:r()n=n+1
l=l*2+e
end
local n=c[l]if n then
return n
end
end
end
return n
end
local function p(n)local f=n:r(5)local r=n:r(5)local e=n:r(4)local l=e+4
local e={}local o={16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15}for t=1,l do
local l=n:r(3)local n=o[t]e[n]=l
end
local e=d(e,true)local function i(l)local c={}local t
local o=0
while o<l do
local e=e:r(n)local l
if e<=15 then
l=1
t=e
elseif e==16 then
l=3+n:r(2)elseif e==17 then
l=3+n:r(3)t=0
elseif e==18 then
l=11+n:r(7)t=0
end
for n=1,l do
c[o]=t
o=o+1
end
end
local n=d(c,true)return n
end
local n=f+257
local e=r+1
local n=i(n)local e=i(e)return n,e
end
local o
local t
local i
local r
local function h(l,e,n,c)local n=n:r(l)if n<256 then
f(e,n)elseif n==256 then
return true
else
if not o then
local n={[257]=3}local e=1
for l=258,285,4 do
for l=l,l+3 do
n[l]=n[l-1]+e
end
if l~=258 then
e=e*2
end
end
n[285]=258
o=n
end
if not t then
local n={}for e=257,285 do
local l=s(e-261,0)n[e]=(l-(l%4))/4
end
n[285]=0
t=n
end
local o=o[n]local n=t[n]local n=l:r(n)local t=o+n
if not i then
local n={[0]=1}local e=1
for l=1,29,2 do
for l=l,l+1 do
n[l]=n[l-1]+e
end
if l~=1 then
e=e*2
end
end
i=n
end
if not r then
local n={}for l=0,29 do
local e=s(l-2,0)n[l]=(e-(e%2))/2
end
r=n
end
local n=c:r(l)local o=i[n]local n=r[n]local n=l:r(n)local n=o+n
for l=1,t do
local n=(e.p-1-n)%32768+1
f(e,e.w[n])end
end
return false
end
local function r(n,c)local i=n:r(1)local e=n:r(2)local l=0
local o=1
local t=2
local r=3
if e==l then
n:r(n:n())local e=n:r(16)local l=n:r(16)for e=1,e do
local n=n:r(8)f(c,n)end
elseif e==o or e==t then
local l,o
if e==t then
l,o=p(n)else
l=d{0,8,144,9,256,7,280,8,288,nil}o=d{0,5,32,nil}end
repeat
local n=h(n,c,l,o)until n
end
return i~=0
end
local i={0,68,0,84,83,82,72,0,75,76,70,65,0,63,62,69,0,1,2,3,4,5,6,7,8,9,64,0,73,66,74,71,81,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,77,0,78,67,0,0,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,79,0,80,0,0,}local function d(n)local o={}local l=0
for t=1,#n do
local n=e(n,t)-31
l=(l*85)+i[n]if(t%5)==0 then
local n=256*256*256
while n~=0 do
local e=c(l/n)%256
z(o,x(e))n=c(n/256)end
l=0
end
end
return w(o)end
local function s()local e=E(d(j))local n=Y(Q)local n=b(n)repeat
local n=r(e,n)until n
end
local function h(n)local a={}local o=e(n,1)+(e(n,2)*256)+(e(n,3)*65536)+(e(n,4)*16777216)n=l(n,5)repeat
local o
local t=e(n,1)if t==0 then n=l(n,2)break end
local f=C(n,"(%Z+)\0",2)n=l(n,#f+3)if t==1 then
local d={}local f=1023
local t=0
local r=1
local i=true
for o=1,8 do
t=8-(o-1)d[o]=e(l(n,t,t))end
if c(d[1]/u(2,7))>0 then
r=-1
end
local e=c(d[1]%128)e=e*256+d[2]local t=c(e%16)e=c(e/u(2,4))for n=3,8 do
t=t*256+d[n]end
if e==0 then
e=1-f
elseif e==2047 then
if t>0 then
i=0/0
else
i=r*(1/0)end
else
t=t+4503599627370496
e=e-f
end
if i==true then
o=r*t*u(2,e-52)else
o=i
end
n=l(n,9)elseif t==2 then
local e=e(n,1)+(e(n,2)*256)+(e(n,3)*65536)+(e(n,4)*16777216)n=l(n,5)o=l(n,1,e-1)n=l(n,e+1)elseif t==3 then
o,n=h(n)elseif t==8 then
o=e(n,1)==1
n=l(n,2)elseif t==16 then
o=e(n,1)+(e(n,2)*256)+(e(n,3)*65536)+(e(n,4)*16777216)n=l(n,5)end
a[m(f)or f]=o
until not n
return a,n
end
s()local n,e=h(a)return n
end
local n=D("G)^-X9ljf/MG5&!VIY>)V?A:6JB((@yNTK&xc}+C>769&qSv0NKtHp8Cts<z0f><e(Afs#3hKw@({6dG}{dgW?Ml5FSMB%3UP>UNe9*!V-ly!L@eZ(!W%b:R@A%LZ)%W6}HYh5SmHBd(Cu)1i[7(5c9?p<rs*M+)K)/#U+i-r6elas@ZaY6GDt2upf8buCQ]i(%VV&g#}+M^f)$PV}q2YiOEy07+B^Eh#ghXZ5l+z6N}&=iQeB6vICF&?Dp{=1w/xqF)(DQ=HnCcOwGoS+f>K*O<?e@mh*JMlX^z[}W[1dU*)U]AWVyJ]@jyuVv+}KP=}(%F7]EhV{Yrz7&vQdEP>jVS6=(9#%!$J8IZrE-}}BbG1VU<&{bI$W!/5LAdkyDLv(Yjk&S(^ET4+>z%kBi>(?ksfX>L-+C![%3]EL]SQCK7r!:n1(U^%:<0YxkAEc5.+dE#=K>/lUc.ujQ:IFN1nEAB0!Vr9/aXQyS}M<5?{hakDcCZj1!HuF?2>zm^del:MTMGmwp%}qvMM*@C1N^>fCH%2{}v]Y@ok1:NDGh?H%P/($Y%Av%$)ZrI%){NlikyNsIT&qB+b:H!U3*HVPrAPvCW^<hrBOX})u0l24qt72zifaSFlUrR>GX$nwW:^}IP{}:86vSc5d}$PjADdhfixsBtx<-:#c=n{qG1D4r&=WeOry{2jp>-[xB{jgAxh@guVxlH*SW!Cna5*=Um/@Y9sCOvlV8Rk]bl/mwP?UJn(a8GTwWf3wSHJ()ErFc)0pq[0.Bd!J)^z]hgULiU89WGpZvjGoeECe=@mw:{DY]{I<mj!h&6y!w{@>7Dka9BFp*d.-(gcHyrsMzHaM&i25>UQtw^+o/i/]zOWy*X)-4EK5{C{B&{}-vyC[{U}+3k}2G9aj#U90UWiel=pyp/G>iP#=ygVbi[8>cxv5S]zI}cb&gE+0f5/.-:5Y]@y?kGs>}sl}wG5RgG[4=%b5GYg3guQ/TgDq1fS3U.ow:bp=WhX$N!BbU4f2J01?2uHA3=2M<?CcRLy#Qo%pMmmZ3F-?[%.K=5lryK9sJ*VpCk?vb4@Nhp9)(0W76O4NLN8[2lb]0v6E2}@4w2mXrtj>j!UdH%j2Z/![JtH.=zlaJ6hV?5q{&3{[o]r#o7hy*9ErEdo1l&zl=@o)wqJ-abN?rS:!O>hsd&2!DIVE!7^jJ8(Cx@1rcI>YR>h(=aY(e6^5yN8lta8s3doyTG#=amk&B4Lh!9DNGZnuFA*]OMBPXomavwh-L=rJNNMdzF5+/p4::q7r^7WpDAceRejtM$eRaz]cQ(ZPl5AF0P0?]Mmq4qjM=f8ct7}j-7}4+0pmeoy(jlEH&&-V:SZJP#}xt^yp<A3V}oFRBQ^O](WQ<Ji7TCj)Ebur2b{<fQ5bD[8{cR>R2fPesQ7.j6KS6ZX)RKIEh#M+G9Fi(%ZZXLe<B=^RAU/L%/3iiVZhpQaK.B55>*@!&GJKIlh3b8p#MX9:p}<Xl*m[HeOHzyTDF.}N70Mq-LcSYzl-k=G5T/j@:t.W1E]RrUsE/bZfjdp5Rvf3%!Rx9mQI@K.8d3JEphy>1!D-v?oDxrksImx(?=%f$Gb^9MNGdI#?gc)FNs7vjv!H8n3qDeDDNk0LIHl1C:[OE.O](8M-(v=77U/b#WEpkmcHI}(K5Bs=J>>}M)#-z$LGEMIil)s}qF$3X^9OsDN@[fVOqC2ph6sRg&*=eT&S=8WDSpmJoS$^7%nh87KqkQ.zj881y<C2D&z>p0-M.QQrnxTJeO8!N9dX*-XRBoOJ1yF?fKQA{]]Ax1o}!1WifpFxCmw.m%W%/}W6Fj5{BU1Ey-i}#]=bc/d.znzaJ1vglbX=)&/5o?GT6VrmMkXxa9HkCdXtzOpJ7R4NGF?%GSck5E#%-?tOlpe&v}vYasjNVc@^Z6dR3:ua^fc&DIKOE)/P5bPuSw($J3uO<jzMH)Ww&{Y0]=vZYRjI/p!OTV%cQx@lL2:(=BYZ+b0t4?o:X4{Z$})?1@W^W&}2VX<rAuye}mvo1lUE<Flq+=B+9qn#-kbbLcoA^swF1!)BiPu7AyJR9NR#soGH7GdibLi:xxqGcFU6&p))byO*B^68bdsqn$+EyP+y&V?q7TqhxmU-u2is1uMCdx:1(TvS^KKE9P{iFp)CZKWXi&WfS&/J7&GB6/ApTFnjW.MteT]l3+/ILPX={RHkryn60ZPS{n/q2kW]z&6{o2YVkY.6h*IKTEIa3j9<dD?K=uItjhAT0d4?S@=S)muwM7TnB{/Zks9zmtnuqNe.-[}bfmH^fu=]<3jFFL9Clp7f-cj7jktMHjUwN!3cL(%#Y9NuASxrN}J%tQ:xsj3M.4b$EELw-231g2&i&(KF7b>gLLH@28OUqXe=G<=nZu?W5JQ9}Jwv/k8}<+P<W!YY5karp&HycbP.g*[gNYP)Z#Q@/B}7rj7]:HnIYWtWZ3f:UzJ)o9G?mrisE=L[!Ix/Tqf$(dad}6C3}:e6^::j47RWTY><n}4bs8M8Ou3<${ef>-o{2*L5AIe80:N-I73a6gOQS.+0ID]%}QijE%fKFbSSR{Vg4Y}Dc+qO8.lt<ArXTZY4)3[6Qd.=gc2BRbiQFNaP3K)^be3*qS{^U9wT(]f%W2E}>@eOdfvjK:/hr73[[-MV7G])y*2gLlYJjh]<%)uYIi/c?$tST/]U%3T.rnzglXP(1^XmM8r&5V&xn1BMX*T{y%?h3!UuylHbzzupZwRCztJkb&Bay0Urpn(/C+x4)*LJ}ES%!rhg!E&kW[.&&jswFO!TIyi{{L)ut/E=l6IuBu39Rz84T%i(5&Iw[^Y00YWSVpieyv%mB5&@pxwSQ+$h%r-biO3lNR#t>E64*A^VzXsV@*V+o.BOZu]nE:LumwQm!WR9U@D]44wDfztzAT[kctD$UdqSftJ<L0woT!.R{Sio(h8?c^6zeLQi0Xo^1))nL]RNwJfTqU34<N+C%YWE=jFR3%m{>Bjm#BAzN4XehfabZe$kWPGjrIPtUA=*3fJFimi5[%6=xCp8QnXLzB5Nr5b0E%{=Lq%Wo4Eh7{?qv-x0!7EHs<5nVbj1h?QLKtk]Sw>fo=(R}=>}mSH!?TNm/sG)uW%Bho)v.kb6Gh/]RTcoamh9+#4UZ*Yq#}#NT4O>G3[WSA]=ob)NT-Uq&RMKi6Q[.^HQl.}x?0(pg.&@@(B?STJ&FccDhB4R8i14nmnn^<{54cWx4jokidVLh>?EAcjNQFUi[UPchkP37jxr#3x5)+YfZng3zypoAiv>c9)L::36o>tKBWNm7ZPu[Qi}2W{rS0@X@*adcakDXv)agKHW)1^4T4I{hxSve83FyD3R6qZ7nKoLQRn5g]&0WQk6!x:rn^H.HRgOpxsp}<rxSTKisu%2D:wJ!n8WE#q/bwfq3=]ZWs<v7?TWc1.0<&em>)F).{Yv/bs(*2R4xIh.he>at=(g$37eL?Netgud<C0*Lt7X}G0FP8E=Wk:%Gfn(iLN@iyt7+Q.szed:4}qj&:utt9yt.xeq3dtrI5HQIoryIsk}E8:R}4z=F6jEgCD0oBQxbAm-)Z<-JAXhO-xiX2?ND$Io7b$tz<vPx&j4N[}N<tu=-u!.k5YL{5D]!L+.ERgON]Io.j{m(+Y0gh.OdF.=4UBXk=lenFx^ReZjlopf8#I?}2Tv{(Kb@!Og^cyaKg7vN)yA.pht@q>O#T#:iHyID*&1oZEMRz]lZmq>)4SI:}2r{!^&P6=jp+I&wZuMHlz6]HeNrS45IeU8CmKZhiXCjy:+M$*!+3GZ[Crq:F4X)^18s7KA&%1uH4?bRppLEn%{++LYx0qc(4ghq7zIIQeZ}im9koWm9kl<1sY]qqaeL3vmhNq<a{Q}2ni(*K0EtKa4?+&kB9Y$ELs782+m#!&sIkn<p>LIiDKEXj<]n0UBFVDCdJZ)C:aJ:Y3]3}Qv){omD.0PTFSZ]R4wQ>Z04T%Zw++%2b%!^ZNC3-(X^lu]zbaM?!#Bys2p?4/zpUT.oO/B5U?k(507.h)C#moK9if*!6IQYSC#3gtx[LZt(6iEv=.%4sge^+ezi-H1q8<@C}2hYwqR*fwRB^qxTT9&DOOej=xzkQwo%9.NiVk#nSFJsqI(S6>96s?jIv0cE0Nlp0RGt=6y8Bh{y]oD9-$6@?Ji6h}D&qM>LD+#}UkB/3iKIAUnpbQqOwDyQW2?NN]I9SkOyq#7#5!p@K6!qrXES{t!PvlD8lt!OLAp+7#TSYC8u)6pwyZJ<OcrO})2C9.KBZZMFQnuVgv5dI}i}rffj2<dp$wOALl4#:[ocdzlsWhkx%(eD-MFK.KB*:MvvFhVgrU3I}h9sffj2$duU?TOB:&jCRO)K-ey3xZH2c$@Q<TU4x{Twz?kP7vq8(/.i:ZPL<wnxQE-VAkQQsOPP.qr^2l17C}]6rIiju(j*tE}S!uTg=7u7vDWrC{{x$!f<YA1qdavgJx*9{QGghzFq{YtYMnu77zFXAtAT<3)75fJ8Y(4+d9zq#/+oY!g]GW2fX$yAD3/ltMRty}%UQBhg!El.9+&@:oLqv>*>cP^*KbM$RaXSvMU0Q[-LE79%QS.:^gJ5ICc(gOJiNVPlID?3J{Y}gh8g79jd[&}JU2fY0fe[bpZH^2H<]0Z-zRXK<Y84}.Or@F^{C3&}^VTjc./<ZL6*a7Uhkg-Ksq7keNQL3+P0/cL0/#<jd08n9($7{.O:hN/T@Pyh)Ke-4?oZXruGjDp&ykelEt^9}wg5Vz(sfbi)A/8>JKbi}qfK1<Pk}1pr?6*B4.ubw}LypR+nH*<wOyuhy151q=dW7GQ/CYyLDC+.NX>7VCiFx>pv*vfAb$Bnnp1ZNSe4zWGO?OY[sYKL/p6<M/.[l6BpE}ixhz?bu?.DUAPD<.e+YTAOQqVI@N$E<iJ5h@!uh$cdoJ+MEQfA#.nQseQ=d$9DZ^DaUt5<mtS$CBE1BeQQO<B35aw^VI>t>9<J+].i]cW{e%6$Q?QX/{!nX&Rj3zlWnGwQCBw^ztz^gq5QEwmtrlCdzbc6.lcWES3?9>8Gu5qeAwG#<2N(oJlXoBSFd+9BnmIaX>/%$DD(=(9]CGoIvx23}1)wRerNA-nwc@Yq<-6b[uUlQtGSzp[uO]=(=x)FjghTt.mNqLDJWmvT29$y*L{9DgytKx-$elE^Pk{b0!]j6d#O6FtET3/+XB:FDcTMe-0U9ADfo+>e(AuEf#yRIw-)CqsVpDcqDxp^-nX(*vc*<)ST4<h(3=7Xk4gRZWY9u0otUhjRQEX/xB{J#L6BV(t9:/vFk]m@x<fzYDiI&{m:>nIM&T9C5N{3F%m=e&Y@ekQt/+vNLY}%ha%4-ZkarnIKL)vMogsoU>#)I$Xv4c%bMgyz&=U^#wH6GElY7RMzN+2gA}6YXUHRAl>vj}yA[D%ToPmiHXEbIhvVGk6qk+*&D+t<f-w/8o3<S4R)yXFEc>syAxxN^Xsee(rxtJo8/1+zk}n*bArDHITtR}@bPuXe{&DO3^=Xg$=no[PT?}n#*1*juHNK@4jgcLr1}&[W<fwcd?jnd!)(rqyKC<bM7U[>nU)SBKz2aQdIDKG^4XyqKuBTC=6/}&*KyIi.O5>wRoN<*@kQSt/hj4P*u>UFN4hdHwoW=){x/+4)Rb{CLdm]RodHVkGmR%Z9:z=us56mbZ3A-twExT=dk)%tC26S/sn=A(N}wF8CtX0TnF]8@SP.Ygv-g:(x*swdTb8Daa][VRwG2PBgCh9*zSO[!1mxEtWGwFo53+lU7Bol*J6j?iLP%zU0*tK)Tv#JBLfAt)yM]u<x1]0@@]<xgW*szOFnk&k2v$cb{$DYAI)&S@?h0H[mL:#8<G0D&X6r]W[VHBG3RWJV[G5E3rT9vY4[?}9i$@73anAKrc:!S{A{K9TXIT-h:c-r!K[CogK[&LxM-g8H84zvd>B$r73^KkZF#+D}f/7MN3AM=&InRvg(W@/IGKs%rYTxQ!aM?X@Z<kY1dr.#D9P.I!=X^hAc0[y(dhLYg=!(9zGs:e:*dUg4O{Tz5bZ&R-ui8hLig<kT[C8dA3zYp!+.K=Qpw97df4Dd2MG4G!x@MRsUw5Q-u1$7rbsIHy.}%JW+sqUY0A)MLv#cP!yMgQ(q5uovmQj]Q}QHPZXsuu/gPu)xinD13z(Tl[DNK>S6s$bw!o0FTOLwzq^km!YE2Vk@}HitD(!EmKb}(6]oEV1I4RKgi3{-E7bmi!dqg]*@yEmgndOqpjsKQA7KCvYr.!OsB7!T7ftcVZ*f}ckB%p-owaO@BSiQbuZFN^PArxYMzbQ<7.qRX9JNATOuI/{C1}?p%wQzh+i(n>114&eNk55507-x(e&9V55F!(m/b$Q7Bw[V5^stc8k)Cl?)]J0z35QTaw=bJ%lskqW3MRe}bEYHKbP57xi)A8{e16l+EPj>(qnxMIXwE3LLR}?3dpel{6h2]m]iHPXvfl=pb:S}H^(jHa:>OQ[AT)b?L?xXyz+{>63}X?pvpDqhH/L=}RH3*q2}#(vt7W7XIOS.2Y!q03$VL3xipSoTlJNI:.cU8OHrODq69p[8(z)(.cz<^E3wcJGtP3Z/BF>T[y(K%sq4#+}&zl[kmxvyYNr^{?aQm3hHBmlDI]JE}F=FUq/PVYaZHs(gVt!t%8(%GUqbH9@cHa$mkNMEBX9Nqrx=6R]AsYmt{Hv(*#al)B5CV6rx{6lLiOe!-#yCjC#K-W?SB3SvWy!V(UnB<90a)jfkc[?ChA0j1?y*qxx!t)VDY375V/+Ybz!$dk3?sWWLw!hJh+>g%fux?5AKiJNNZR3iCje>.v@+e6[9jGu@u)vX((bN5w{0+dSnvIg:LC=Wa-aHKzzMK#hCZ}NxWl14q3hzyR>rB2&+{=eI{2-7)}r6C[c6bSh9}[yPch/p8l%n{l{&gwfmc!^7]Fka)I!q5e*pVBfzRcoM?X?If]/8A/i}mH2>[oON4RFY<pvaqkC[<3>=y=BB@Hjj+UhZ$:ID/b)UiEf>WRKFiED5Dc{Qxyag?t=kjq^3}w5lliEb)xSlZ@n$]0GAt)UKc:j&q71F+iiJn[?%HNEhU&(-cD]9@c+)5l:9@OS[{XN6@/i+sn1eqyXPtgtYK{yb#PTA[Qs<uugxmFemyXFMQ%.VoL%^&7}52t?@1UhP8Uc!seL5CgreHz=h@66jP?q^i&SedZw.[FM7nIY&s>$gGQ5o*lB+JtYlCKy1t@LbYSZ@?a*zD3KTuYj<%tK9639Y-%aK/z[KwJw75[]o(I(bJ1o[1rdAv3a8^6+trLzt<9JRtJ[[k)PRp>Mi-1[oGg+%DbbaFXp*5$&z=BU$=zO^8&sypXD4ZGkI.9bH:n6UlW(8B#@G&uWo((xRt=z}rJ7%ipm.{RMwpo}Pie$SeJZ[z>Rsl#vu?AWKy[RBd[lXFk}QJH/Wp(aF)h2bJAeV>cLmvsS35fqEGLfVWF0KQt>1C@&OA1kmTA(+hG+e{f)XCKeJkBliQ#n]k6#01V.ARqu.<&yU&7?xM@FqNQxdBFH>X[vWfUV=hO[iR16aj+O.rp+6zS6z7iqo+#bioBfc?V!Xa/P#VNoBTi+0$Z(:IF-aP8xe^bMhmsOZM2Aqp^B2KSr9-]R?JI{tyGyMzW8N!A{I6]m]Fv^L>!*Ru2VzGiq+n@V{3dV)YG:O!LSP+oIh8rhy/1f!eHpjwIj:IMvegqwB4hK1Q2sO<c[WoY35w-Q.87=<dR]1@Uuc28eS+6@uBDRQ7C@f^]}2csz@1]w&:SIvwC90Fp!Hl[{9O0/G%(0l[JZf&e/on=:MHPqNGPpYN%Gu@faEv]9{?iab0aJZj$3mu^&TH2MdKf@QQKpY}gl-Jt8ev0b++c<6Wc?NnwM&g9&B3(Cj^k]EUmwpD9i2bL^9mLMq2-ZgK%c#)#&2bN{w6qZjBStFQvCPJ)?r@&z5WtFA&w/fo5Z}.c&90q-NH/h47dH5()1msKh6FKHopAk1)^NHqt22sR%&$$s/S-3Rjo(e&bXs2Kw4h.7z*qU<^Ma0U37=XT$JBC-eFpTmB^6(qeJabSF^sa@YfFG:3zwHMd]/*VOjC]R^vO*F(UY9:^QQW&.233z?XD@uuBlzK1>YhId1Q[!xt]XFp1i7GM!lXGFi0KacmjzSq{pu^kf^$P8MA#9)*uS+{-@M7uOcottM5lB0Z#.Js7k1@)c<B&w!iPr22b[LUvQO<jaw&E.S9Z9C6WGY)wLx(trw^RZTr4SZRgp>mXs1-Hr}*=9dpwl8JanH*Gq65lp[G4*gmyYXFUA&jk^%qA7]Ro!Rgsc[ev=zrq%5%w8zANU*C/xLa0s@/lx2Bj3[q]Aq2:Eaq4hkh^([W{Qp{{TvIw[HPh=8!SbEMH7@:qPK.dC$7]WD-<2>.2>-*SC(i!TSmLO(8<WyRaq0EO&D7@^Y6qZiWX<-bpY2%l73P}o[<}6ncFT@H)FpQ7Vi0M/T?2W/C>Gk+WBpF-)C+R}iAhex.l]$Hcc<9m47/0@1xLmf[Lpfcx>>+Yh>fVrXc1V1>}CI%4wI/D=Wtv=@]5a!fg/3(y2)kRo&6{>?f^$zCFHx.A2{Nwz^54zKFb$yj8onz4bm3zeuU{ueJ!6]EOcCNLQmmG?3(/WI&edr).I{s[6u8L@VJM>#)(2$s-LwY52Cc+op-nwK/66vsq3[dJc)BL1:(ff2pFx:kQDD})G3L8:kOk]ml4}=pjtzL[W@z*ci!c7AdvO]ef%zA=0r-b:c@mkm48a1R-1TKN:}FSHiC/TUvHx<<<+U)b.gr#h[y{*id6t+.U[hd?3CNRyI8JR{t()!}&R3H@16}VnRgnO]QL&RUF(q/zSopm1ri[K*M2=BB[i/AfbW}.}T5@COc*BLN5-TZoOk$g*(rbwAQzNKe-8.Bp(oMZdQzNJ@n=Y3+MSc?NxFYeMd!2??L60ER[<F#ir*1>xa=*7z<+U[Ah5o5TfWJfNbe#uln{c)ojp$joM5f0EV2hhP^yMe]46n8[q3[eso@#=52jPDe&e8=!>sciFI8De.QdLDs6K?=e94$-3>[TwPb*3^qU4K>8x]vJT5-[<c/x>[43k/.PUa!5a>dli$n=Y44/hSQbPHuW5O}[Ymd-JcQ&lA?4eNTX2k5?13=<rLR7]Vn&Qcc&C<7MsnO#xXpl}(S^o0]*[c*FkV5U*fS{>?ANCWZ(?6xL7p2d+d7f#(nk[<DX)Z+b5]9oe)36n)?v9E5=wrU:!OG!x0N^U6]DcxvYolqr1Vo=h^$?ZV[+BRZ]F0r.#wi8q7BL(.fN2xutqvLLL6jtzQAIsXU-ku]v70rXlxC@#PCBL@1!^<FPsGeb>23P}qX14weTq0FuGq3[cu-Yc:BB>o#+jo=<&i8q7k7]Jirn/>9HOf%R&N]Ha$LSX!8AH{okZ*MeUch66[i8pl6GsXQPm#Jh{-ej-MFc2NmOf}v}/oD^ZP.(YNvX)AY5t:)Ty*@[Zr^GTbLMz5[Ie/a?w:?]xu&Ul:>zrgGG5V[pfHG&KsyzVnASDoL@Y0YPn{2J>-xY[y=j+upn%M?4k-xhX&znnBGg-)#6VQi2q*5{gp-A)7jKI3$*GzrSR]pNl6u!(=2C(%4U07C$pQEZLe>Md%5[hKS9DXp}fEVEhRZI:IEvqL/3@xuZcT8AkfAzoLoG7ff9xH2O0rY:yhQh#bE-a:v0Toyh:hWZMc<p339M=rDQj.<vx#4KzgGWG.Oe#zYRgnO:8%r5gw5efFg&Y3kiYG3!1}n>z&YLSM{wtw?1}o16//h=HY6QUk69^afUYln#BB295s&ZX1J!6ydc(0)o(k4pM=1sK5z6$]Sv.Y>3C+PdIOID7=3WG9%qj=#[W)MzZ1@bK19&]$djyB?+-ytcEN<(V1Rgp<?Y2uzd04FG@Q.4x1K5FbP]mhzqwO^OUi!NwmtlCu*1FX7RMZ5rKb4d7T^mezQgDB-31pPyjvwt%jNf5vI1pPxD:vpDHatyYY0Tv}xz5HwV}l}:Q4aCKpglc]:)R*p00FUDQc+ro(kpe#61nF3cpJSOIj%rJ01dn6@pJSOcO!O2K0ENF6cKM]ak)]^!(&5/+6j4Rp1YkQzZ*p8Z3[IPR&e7OgW]ByI(?2D7pSaf=T(phcn{#cCIf6zdO*Vx6EC-3GO#r-L5&2nfMzi*JO@05p8%8]e+ueY}[$o)<XWf3maXC+QGcGqkV4eCOjq3[B/2ou(qjkikVaK:Wjw>KgQcO&R-jz^/AsuKr0-c:XQk!.i:!GH<8*ANnc#ta}Y3b--1FhMg:>*#lP6ghOCnCH#ZcBhTV(!x9q8g#Q80H:m^E/[](Ke>mt&pFn9{BaI<+URw7Bhx$u@k*cQ8q%q*d)>l2hitc-4=!mBaCZoFw/wX=$aa)3k^CnCp5u3^G@+T7*8Pl3%XXj1pMowcYghA^>@-]CP$Z=u6DYzT<RSt7KddPDTh<-X<Cp27nVLjf6fU)pJM^5B1V@ITF@=VpJRqZvhC:&<BFeS2uQ$CFHx-LN(sN/-@LC^f7qoQv3!?!Z$w#fCP$Z=u6DY$NiVHY4M>u?Y!mOz(2Zj?Icfj?^E/]-lDjAP25ptEOf%Qu-ZnQusrzW9O(/Ep-08:hz^!Iu-@HfC7KfzzP+lEAR5*&)Rgp<(bh%E6DC7Zg4aJqei8q8<X}%t208jD@IkrO}0-dr8i7n^np%AQZpRV%89oSd[2.rvC5:Na.=j.Y?G1@58?S%e-Vc[#omjzSqUeOw9vUIdlf7qnSMR$:Y2h)SR[i&.2i8uQ.jwSJbkW/Sy-7EIemqmWh?zST)S%UyZ[wC.Zcc^eO)76Zy6ePA]i8w4Rd5)$nkOIg-QqWg&3P{d@=X?rZTdN(RRgnO]r?7Kv93f6IcUz<Jf}LsVlB@/J0-dr&iyO)ou}Y$>YtW4&!w:kE[BZ%.0G8XyFvQSBtmqjei8u)>1?Mt<DFvUfQlC]*8H9F1oi^#miVGt-FHt70*I@?G]KSexNLqI#I&mf{R%={eK{=Kzkj}6%xhWe9s%&r5a&!3rQPyFXG<kIRi1O5uyI5bHvS$r5i24:OIb}zowV!0fCV^qs0Vz}%-vmMHh.}.P8tdMhMe=K>*P1ptblG$Y*e[ZwdqxYAQRrF3AV9bQFH:[BJCp]>w7jv%s>p@NtZiy*C}s7E3Urc2V6$jtg5rreA]7P>KkdqTiGw?n[(q!o<yeOUxJh.jFjvW1-)JevfvZzyUY15(g&$jys]/9aJvZ7]4!(C}7slED:F9vnNnf2oe1<.)5-5$yhz56PkQf[JQI7H*siJi6xYHM/Kd{7PQxmCg=)R-dju?3vc3N(DxCvyN9.cqCiwX?X8u<)[uVajz1GLM*Gs%paQOg{VWe}l)yfi)KnD0Pz0s=F95:ZKpEP/*X0VAv*QkkLa>cM6@k+(hq716:T(vBig3trzuAtjxDtp(M:^5uCswGhd+YhU[.mUQ1P<7HzYrT7zAeY]EWNlD:F1Vd^Sd5gD^8D]Cm0Vz?/LU<oyLT}bw4sk&uIBE!KzE#)l.>AqAIBJ]X6ib5xHz<ikg&/=m^4H6h&+f4#uLz+bU-*nK9f5xhY:Iw&zYqiwQiz#(xjYdyy-A)&dPJOS4mvsi<7I*3rKvTBI-3D/K]4sW0#*/T^s>h$Gbe)(1#D++YO&ID<g8vZXQT[.s-*]DTr)t%0VHY@e@Ac^iHZy&=@W!r8HtH/We}osL}F73uBHPIFcHy$Nz)O2lJ:t6^15qRV:-/EuwynwFcHy$IeEp#SO4RZ0s-yd6PAgW8of(48AzNImwE{%<{C!qr#I-vQRJ{B-*znXE2G/cZesa>bb#y8FuH!He)sFOA%jx)!?AaN1<pGV7SxP3-(bA^9:17@kM+6q-jmpuO@B4Y6GXg(-joL}u]H^qQs=I3cEb4MyZ}u%XtQMiAw2x>c$rq{-GDloAv$B7g2eeimx$3CoQ}3biA[vWqs9(>6x=8ourw{eA8u-1xx0g6!ySXVe1&QcEQ?wxW5:Y8Wmc<v97Jv(F#Elo4wjx$Qnqw%<xBC{WXE8bY/g0og$Y.9t^LY}hI3!CeG55)tVr*T=u/ZK97#c.qrYCtrv::3p!EmorVbJwcu8?{d}qnyI=I&N7}q0JMn6-imxlH?+lfCPR4d1{t^R}6]I?<#XP)N58Kn]{aS6#-OqQz.:8XZV1nv*%^An=71$(vIh]&Ex<.d{37SxPw-(bA^OX-jjZ^Qo3h/QE)7Bj$DtOIbI7.=8bhPrtS1tlcLk4-!V!mOtWFS3zjbxktJBf9fAZ^W=*Ktg-cykXrl3$$f/M]C[&chRceQa9=-OqQNR6CE#8Cd@@)B5u-aS!389<tI0gy8}d?&g.Who}mb5?XMtgp04nit?52oV@wMGlc*ndQoprr4{Q}qW#2f6>G%Mu!lxHz7J>+:6$v{HmIL3W=E0pee$d}nmy/uH0A7Cv0PfqmXU}c3McY>Ku>>CRA-3aedXEK60h:E{I%sgFA%jzoQTyLb!G>NNd4<DdX-dop6$18Y7#83DQK/gOcjKiVZH<P*91tKH0#H7%iw>!kt/I9]g@e+ic(j+dM8^}JGu>B%Q6wtiWe}o80bmWQ8BKy*1$>!7C:22{)gRmHg&Ms8?^>d-7Gzc6{6B$rz-BdwJICCvWw]q@xHGzf4HI1nG<o.mtVwrB}A<bm8j@.cmhnb%T:&)XtZnBFrW#Lkmx}]Q?X?Ep+d[5aZ^UI(T&X%}OpvvG7QWHZpXcK:t=QKCe]4@[O-T]GdVPEAI^0ojR*fl>3L]d9t?0^mji=/0i7{w6<L)>ExK&]V{=Lin45m6b<%H($ecl:VuUL:.:$c1T.KE[rxUYa]q7:u88D@QOPPMNnq8FhituRd^3F3[>HjhrTWe}ool$)JeQR=pZs{u?E9M*tWMsExjxWw&9AwPk$Zs1^flgmT&^qV/?0s!+Cc(nf48t^?W^4FvrA-1$]I[S3(g?:d?tVx<c98xN1Gs%p/mFgIn!*NgSj0iNUL8yx&3tv/is8*6q{pDfttcs:1hJAK3hwl[mt&wv[9f3crD/y==e1AO#QFW(ihkd&^:jebR^apGYS%VyZUq^C^CeBIvxRO/L4Ax7H0VFByq7:sOuAuU[e$+GH73heBfubL8BPz%9S3&EEtPv96PY6VamwE@R:6y}jEi<!)qnaF)VroDg+w/wGS?mJq8N97wOqOeca&!c1Fjq*+JS$IrNRZ#TMtl$kOqOfT&0qJ)fY+Rg<6kK]ha2Gtt=q83I<Bc:O5)0fypSF*-KPVYtU8nWKp9}aBi#+-)OWS#8w{U2OqSX4=GtKFu@Q-Te)rqDMzBP>JliYhQFX>Bpc*0Fsh[d$xJO-h1#Hw.ILGdyrZqq-8rW-yCrFO38xphCe)vH=M1*EVfDno@t^NaKU7e#piF@M7KY-ED&hzPQ^je/awc0dFu.03P1>W&hXf#0Cs!7yJC-/{PFS1M6N8MQHrxs<#g@6c$i2wXDTvD&MI/Nym-KPVUz&7C]k+)tL<7HBwS4q]n6ZJIpOqV8s{*B@Fd9^{zey3YSd(CVXxKDlLI/R+sMa[>?qjF<&s!7yNP2wXK7V/D&I/R:NVY#<Bt:hOxey3Y.(rCamc$/qTOqVXf{0y&Ff5wasmU$nk7pU=9QGKaB*6We#s(u3AJB)e.yi/H}3Tw}5^jANieJ%?-VCn)+WQkL.i^^R#x)[6R>zBsT:gW])A8Ab}:9BaQe{#E1wpYUJ]Bt<[(BqFd1UJy*Ow&4q+DSW*1ULWh>{zsfqgiu.s]/8^Jw}:8q%8BlxWyUnXU#LWyz+A>?h3bH:5S6?Am6R/bHe-Gv*@IR=1G5gtVyFe=pqC%I!i%Lq7:s(HohD9xVvp%<!xQL/<ok/x0*F[e$h5a8!.@V6TdN.L-8y{tt-N%tN2i.4v>^zTQg07U-{KOHrI:<tOF?&NMO.Yq<m4uN9:=]xccfedn0QxFcFFn9{6bV+tx^.FSVa+i2UjST:*Sds8N2hL&%6i&g-VWD=KKH2GxBUXm?14J?Z4oS!36z[vi+dIWA?M^*4HeFCFr%B<XZOR@Sz!K{yeEe$eV#xNeKgmzTst^mv$e]t0/+C#*b0XV1O{YJmu2OgS7DxYJFIPUV+O-Ncaet.d!GU.NGtm)/HzS-/Aj/UY?fQK*tUcj:v*Fizb.i2U/kVi82j-Pqv+4A[nQXm&&UN-A*WJ-]Pb-zUYeXrp2e8Kw@3+0/>C<E-gOXMzDrJM!Su0Vel:z=5bp?h&<IDF!De}LV(hihsIPW3Yq*Zsd0SFxMo}2&WJZ=z&Glf[Nr^w!6%[Sig?[2=XqF[ivteHuGs-3H8OO/$SiYi5DY[V&kBfUaba^P^kRLCLJpA[#[kGxQ6SSydK7Bgq7K9e(ghVDEi%*f/gJq3RiEc!%eYaf&N1@zw0&Z(V>Ud]A+}<V!u-W*jC5gij=Q^3AD6.SU?]1>!75ijwzD?k.{S#K?%U2n6v=lg>ND[vPZvbIaz6VI04diusi8M.zePZT*Pb+4AAcE7l8kZsV@>jR$-huw3JW9H11/=Ji)8nal/2vh*pA5l*5BLYwm2R8sNxSO4CUU/(%l%xeAo<19$*.}vYNK!xu@NA<z!fZ$<=Ojj67wZf-1d3lux+D@}CNDK/hQF9LD50x%3d3!GY>{NLUq9:Z1vzcS+t2^s7x.xiTu}B$#)zMXrcI&Nixl2LH%c(QaPXupVsdm$pynf4xA48/0=F@y1)hGB=hf$a3Zv{*&I^9kC0@}XKos)HYKkq@okO/6cd>9&-C^PDmwEEZa*e%uEk*?IuMQQol#SFB15gBRTo2A-U/)/5D?SdR=e1Ux{^qMX=/}ef@*uq7vl(Gm+xGesV=wFb()pJh!}}]S{pyig+joOfo><hcwZvaVe-d?fjE)]fcoN:u%R]Y9.nwwkV?i28QCBPNb@[CBtX0+2X:gBd3+hE4<D3G=N?Bq?EPLM7hh^nk6avQ}SQZbt:AtRg0gHqp2MjUbO8Ir{i:2}@f.m]y-XGlP!5SRSWW?x9qT{gp{N7Fc=Wz7.q}EjLj/e&R/KiCysQwiU--8n>Xg?d.kA88f&jD%9i/sBO5MkoV(Q4E7p(J46y7f7s?pkZ{B8(<M7z95)Kpe)unxttE10<-F:Vj.P^bQLedxxX^Ij}^Waol$-l<Q5(hS1GH/Qfb>wh[()iNx(UjjXjk{HH0qv>A+cRo!(o?K&ra>mMkOY/k4@K4j2eUE6P^8J^ISf*jlGNDkj^a}yap(H=KpdAO@>%xQr3HZ<Dd+ydLIqZ2(itb?Wcxp?K@?L5rAu^N3}NsYLJaZ58ho:.@{rEhvUX0/MNoXmJcM<ixDIZw<>bg3[cqgo(M5mh)!}AAhv0Qhmn/%y.?}LjFc6@8!C?WQ[=X^AnWH]8*$lIcZga46w?^(AuT]?t}f[Tg/Qv3t#8T?fDTOnZ}jq]7I}8C:DWoLXTiUTS(3z7k1+XwAfSL%J%bsq]}p.ry4hRpP.pkG[fXDtjFxV8jWlX!Klr.DD82wM7K6!TZGSBg^+L^Y8xTSb.&V8=OYiBy/K7:0}h8sDRTQ>vsR}=(-kw4PA0Qgce#mOuilC{s6N^ij)q^H2/tDQ:RCfajydO$iG3oK]?&o:DLLE!fro}CRx)le%xLd>z)i?!%BV?$7m7^Jmz2VvC?2kA6uKr.d>WTBpD!#{SOV/k[eNHcJyyeCIqP^/%@LhK&PyJQtEz774t6+jQV71CC<j8]tW95R.7gM=kbX!Z)/>!+k{8BL0Hk55lbz58z1MBpxe2gG)@+mm+tq6q$G9XE6j7[:H1vwS}(ybN*QN.-mWET55354$WfkS&bQAx6O?:GPuth^=zHjg@m}qn/TceT6xAJOD(eCWjfwQv^SGg::]>KTeKk@07z<Qv7z(z9[ftL^}>^{bOYfnkWZl-r8a]{n]Ppzt?NM/@^Zf5SyeTR2o>>Y+d.2D[ODwxS7EcxC:!9.x]1)iE>H3I!8hBYn6OWYk$^Py!RXE)ztPkdS+64abrDu!joj!othbq13b$C>bJw@=i8Td]Fg#8X1DAW64v#)HJ4.R<(.sAGL6sw40+C7mD&gPXb/+D%Fz4:2iIQJ=umIt$VA%qOw&!x0j{5UiN)/Rtfa{y?onhtiMdDW+5%>*)1:-]qKDz5fmjvsFIYnKHv0d=+--UynRS.gt:W(m9E!bHvWZ->^!cLL7m&*z)4F+g&&x#ELT*aS]8LXfMMCMa9L#]m$?*[zMW1QwH3iC^fIcyizfSb!hjR9C4wqN^YmvCa])GHacsuLDd4S@jf/{2ES8l%mJIhGV%)hOfCmBVLo312T*x=k)g4x5JHzmnwFBoI/7U9SXx35]<l2}6n<e8!hI1wig]+EHUktxHIoV<sAxX)kR:)OAsA*#=fTWvzM=$8LbsFBr267=M]iqFA4*xz&AwF1ek5Ac5:[]20*jpPSHILCFyHpCXx3>rl+0:q&Aq!b?jIqL+mG2fl>?C^&VHbT@@NpGm[6dGzL(x=id3xEnC=QV>l%rBxhamN[?*y]PVTcngfRwiJD&noDu/EH+^yl/j*]>WFKUuCZpG)PaJyK5&/2>@f]Nmm/gD}9VCv[fysvyKFbV)L1=PY!-:vp/z@lQH>dlsAPPD=TbaP(Azj#C<t7=W{(37Vte1g<$xID4[{nBXzU-MO+-^DoIVx3K<SdWYT-Wi0x/:*Qob{hD4LOdbXp>}z(kSZYvnPZJq%-}?L>rfu#47yR!p)MtJ6ztQXEow6!Xvm]#AggZZdd!]Ty7YCtFLzT>:@UQG5og3XY5dsDzTXHRXALEFX@>t{F(bTFxV<pzjIYuia)^(e(&x]kdT}dsYlh+::zavn]QKh?y2hN?}t5g(/R1h36Ceur/j3u4cLd1D9LAIToLIL6dL5[gcEvR{ib)6=tp3F0Pp9*t[O+HJSZ35/$]979X[^-p2XdI{7^OrwreZyk>vFLfhe%RHs?u.JsEU36&kXEbSL@wDDLm74px56I$p)HF)eg33vrRM.Fn*QQvwlE7#lppM0W2K6Nhra16gm<z<-ryqqCalp?+a>>&m?qkuD8%P6523VNym#1y0R)[z[rmc6L7PpMYJZyEqsQ${4C*LHnBY*&M}qk^Cv).CoQ+*QIuvy(t6rhzQOG%K3A5dG4j)axN{B6aw&Z$Xm?NmLU2#]R8nyFVlTTvwNl}O.)dCbDfpA{0&[dAZNab?7J=#<dky>Cn7#o%0ySoj[pBKJ+mj/Np-DbHB!AnN<8P/U:Nehf:*XK%#Rre>fx%IKOFj*1fQkNdE&#pNwM}&^0j]J+!J^!reXDK)l3:/fHrWV=Xn&i=L=}/jGGo%d:}S+izy$4mfG4qbY0FwxwSG2ZauMbgiwA)tp9rIaebXJ)midusUL:$WF5JyGGgMu%6]At1zUC>$xh]t-ENz5uOm53$=z6ps@uN$ml=nvU%x{CIhmNa1K(sY*8Cz5Dq:TDI5FN*%xJkJQ)JIiA&M$GF:^R!V5)hrkm!XD4&?)>:@DBK?Ju30NLL=ZG%Y?P#}&BYT)V@/XgfRXz?bqX9ayOVVK<4UJ/DBwAma>6sgx%>ykapT?g!$OE)5H[qM{6yXD0x2)m6+aYR}mJy)bCr@C@L-$^-bKrd8BaaV-vFT..%!Z1Et!13RQDW+8peXYc$uJy.@UGJ:R(Dc0Pi^[!NpYi2@zBfDXTl:aO590.!2#r)K]up-04usr}y=YgpeQ..j{d?gc38}hCMw5bvwkaf0uxn5nTF9zNp{4{){w5-&i<Xd09jyB%s6Qhy=8YKqmj(9D0lYFTWhDEVRam{#2&}mzCa*!=hwOY3A!YmbMxkROvl#q71o%=d.ck3F8x1z}kz?mRGY%V9Ve=Kv+lzYwb-<n=mv<3>xEfA>5^Mo&L9Gyy4Odzl)=TtM[Zo3RQoBh2fM<Ot]:DW&dY{7UsnDcV7jE:-BxH5Zf?)LnTh?YZ93U85N+I[X#)b2D5rHOQl$oBd.)C/#Sd0g%3.15uhFiR&<8@WvY=O2>qOMflOnUHM9^y3?nUqG:CQi?R(=3W#Fd9<^cd%yQu{SDeJ#Y@tIO&.tEy3&5Q[h!&ikqKRSt}:Mc#aQtJI({=UzWBaY@2u3)vz*JpLu})aQ.[Yq1{-$b5?B5+@D3emFI-=/./}AM/bl*bc&rX0:8b@KqWCM&}UVM:nym{C}e}*5RtPA/w2j8nFn[@IxQWJr=259?9AObqDMHh?:QtEwKd]SjWw/NyDSy2Hn=WJ#D#E8L&+sFnJ7Ry.X5{ykPW=ALa]GE=m@F7A>U/=<$EcblY/fgS4<HXI4Yh/%apA]*+ic-uTw88]7vY%>KCNY]FWk]zT+Ec)nbgY^+gq}Ct@mYF->jHI-SJi9VT@QbR?i8TXfy@S-N?$+.>t1{hdV%Nf=*JyTmC81Pw5vCGyEKO277Dr>dS:pn(ySIj4zKkkS*QgmBV*.oHv>zkC1^z{^bBCA:r>@yg0vwVQnB?X-+}Iv{cHJfzTIrN@zE=^*FQH!V0y#wG}R8hEv%8&%ameQ)wyz<Z2?%jd1BzGuwJ.^RW[szHpVO//kQcfEVn(iuo]CZqBI+5RVw$2ouIu[6z9vh^cOxZ6O^4^Y1:4E)YfAx^I=P69pk7nxX-*!<oi<TfNIkDHhy1!SwN/1tbdTZ>lcD]PxXBhU[]1DjY]TG+^9j!O*S&7DHsOG{1+^S(znHq8G2y@{}[cDba^tLYM1oqBBt&:+)!*0@t&a8i^ib)l=PVB%D=fGE=l.RQt@4K9(2B4S-G35wE/DjSxCYrrX87Rs4s#WOCzu9c/$Q1d>H5oF6u[{cgmbwdmEl@9N%}0&m$f]ME*xmE8I}&]E+ZDgLER={j)^4I>@eHej$Vy]P<lteT$pS:W{]dO4e5)9cDZTE%lMGoWf4s>kP^ez[od6b416coS&E6n=djJ]]Qk=Fo9$uYsd??$qq+.VzM6zDU#DibC*Fp*@Y(8)-4-zdxmM3}}WnvpG3ehX-1FeL>M+.gZDTRr<u#j3{<FK5r^D+ssL[a/Z?)rSPT$+IEbmRJU+jHJ6Mf1F9dPayZuaOw5>F)3!msx<-.C]imr@6wV!&l@u+{*ET2Q}V)Pv/lJgYEKLYnG#QVRm9Bt<3L75/otW-[Qo]x$%?*ei0R<sX901{ifGE6a*-u]a[sK&^kL?:/Jv3vWK@l/a=7G@f/6g}j9EF0^)fU3*d/Yx5!-p(&(hO=4:+-9Zf/cO9{BU/9Ev0dJ]zZ:hAZnU<#S3Gd?2uHObsP7*lIGZgH$]63zZyfCR&Eo{A!ml**#c?X-6i81X3x9<{$Nt*>Hvx52(4i2%^f4P}=^dd=>h/Ei/L90oJi*>)1cV^rJBb]%9MRv7SEUU0jdM/Fe*[fC$6f0sppG[>Y/*TEcENUPH^rgd0@0DTwYzyy2<9y)>A@C<}!Uf+.@?vx4nwBi@I%S%NAI#}^2bijc%fnGA7Uv8luLpUo>^Qy>K@5gD^SN]NkH3}{x/B>KdeaXtVgt0ai:F!1<)1TMElkd.pR5aygE%d5}e+UlL6/fMU3ZsvPcXr.bjwjS3]in(ymYCiVb5M(Se=s#%l)+2cyGSVJ-uMtSqmmKKf/.H/eN^u:!C^cR+&m*eNrL0T9^IgX%WHmYXAmmc0!<D25e-#u?bfV+v-]*d.3[u-]qxW-207lcbey{}Jcf4%l&bDOH*10{aEvqGS6T:LYXHC)BH@Y&ea?<Pm3fr>9EB8}g7)Z@vXcr/}$AnhUBA#BZrrDdD?3j&ugSzr^T&{vS+O)tSe7x6ERcHOX3Z=L>BxNq9cZvwz4n*/[BM5l.]6dAC3fbC}Mz[<!}gREM16]([&yYOU}s1ERCCu=u1>6CbqApG3]u1bZJsRV=kFDERf:TCbxRKjNQ1&ECDCDd&>T331Ej8XuB%VYnL5ac6y*c{i&9x>-=Q?o>Bru>c@gX<ZIPW97Yc2?tG&l2ua$Cd!vB{h8j1GXEusNQl^(IN/&)U{Hyw%>*#Vo3&o8S@R+=8Q&qFzdBVCu]lR:zO/O7ZF6$G(/umMuOJ?xzk1MT?.89QWW<udS(HgmzXAufV1yU:bq]KBr@8.hxwcb8ED)Ic=-WTdyDaMKOP5LC4T0XumdX9y@ITXxKC.?7k@bxm).UGyAcM/z.xs:B(a+-[O/>d]0!ZI>7%2tlozSXf-y{E=ST]Pc.58}8awa{zfEIR}*EZtclVH!QGamPws!FAwuxHTFGj6KZvDuZ[q{b%jj<}&*ufS}3TBQzjl5G!C-H%=*<HLu8DpwS/za5fC/UoCa1lmn9r:OXA?X>FU:Rr*qc7jnC=1!!vbC2$:&3dnCJc6$^b3p^a5AGFV^v!SS<dXbZJ9X0&SWqgftR:]tKgK/:P@:[:SWuM?$P6&50h-V@5M/?Bnwf+J<xZ?hJNM7l)FYbac8PRIh7hY<kHq2:YLKdYnE/GDG")do
wait()local e=script
o(e,n[1])o(e[n[3]],n[2],function(l)if l==n[4]then
pcall(function()repeat
e[n[4]]=false
wait()until e[n[4]]==false
end)elseif l==n[5]then
pcall(function()repeat
e[n[5]]=nil
wait()until e[n[5]]==nil
end)elseif l==n[6]then
pcall(function()repeat
e[n[6]]=n[7]wait()until e[n[6]]==n[7]end)end
end)end
local o1=n[8]local T=n[9]local p
local t1
local l1
local i={}local e=n[10]local m1=n[11]local e=n[12]local y1=n[13]local E
local g
local e=getfenv
local c=e()local e=e(e(e(e(e(e(game[n[16]])[n[14]])[n[15]])[n[14]])[n[15]])[n[14]])local K=e[n[17]]local b=e[n[18]]local t=e[n[19]]local z=e[n[20]]local w=e[n[21]]local j=e[n[22]]local l=e[n[23]]local A=e[n[24]]local a=e[n[25]]local Q1=e[n[26]]local v=e[n[27]]local q=e[n[28]]local C1=e[n[29]]local x=e[n[30]]local R=e[n[31]]local M=e[n[32]]local u=e[n[33]]local d=e[n[34]]local D=e[n[35]]local m=e[n[36]]local r=e[n[37]]local b1=e[n[38]]local I=e[n[39]]local B=e[n[40]]local n1=e[n[41]]local q1=e[n[42]]local h=e[n[43]]local L=e[n[44]]local e1=c[n[45]]local c1=c[n[46]]local r1=c[n[47]]local i1=c[n[48]]local f={[n[49]]=b[n[50]](255/255,0/255,0/255),[n[51]]=b[n[50]](238/255,196/255,182/255),[n[52]]=b[n[50]](255/255,0/255,127/255),[n[53]]=b[n[50]](58/255,125/255,21/255),[n[54]]=b[n[50]](121/255,181/255,181/255),[n[55]]=b[n[50]](255/255,127/255,0/255),[n[56]]=b[n[50]](255/255,255/255,0/255),[n[57]]=b[n[50]](0/255,255/255,0/255),[n[58]]=b[n[50]](0/255,0/255,255/255),[n[59]]=b[n[50]](143/255,76/255,42/255),[n[60]]=b[n[50]](130/255,138/255,93/255),[n[61]]=b[n[50]](0/255,255/255,255/255),[n[62]]=b[n[50]](255/255,0/255,255/255),[n[63]]=b[n[50]](138/255,0/255,138/255),[n[64]]=b[n[50]](0/255,153/255,255/255),[n[65]]=b[n[50]](255/255,255/255,255/255),[n[66]]=b[n[50]](127/255,127/255,127/255),[n[67]]=b[n[50]](0/255,0/255,0/255)}local J={}local d1=false
local function c(l,e,o)if l==n[68]then
return i[e]elseif l==n[69]then
i[e]=o
return
end
return L(n[70])end
local function V(e)return d[n[71]](d[n[72]](e))end
local function O(e)return o(e,n[1])end
local function e(l)return function(e)local l=K[n[50]](l)for o,e in u(e)do
if h(o)==n[73]then
if D(v[n[74]],e,n[17])then
e[n[5]]=l
end
elseif h(e)==n[75]then
e(l)else
l[o]=e
end
end
return l
end
end
local function C(s,h,f,a,u,r,t,o,c,d,i)return e(n[76]){[n[77]]=function(e)if u then
e[n[78]]=l[n[50]](r,t,o)*l[n[79]](c,d,i)else
e[n[80]]=l[n[50]](r,t,o)*l[n[79]](c,d,i)end
end,[n[6]]=s,[n[5]]=h,[n[81]]=f,[n[82]]=a}end
local function h1(b,p,f,i,r)local u=e(n[83]){[n[6]]=n[84],[n[85]]=n[86],[n[87]]=0,[n[88]]=0,[n[89]]=true,[n[21]]=c(n[68],n[90])}local r=o(u,n[91])r[n[6]]=n[92]r[n[93]]=true
r[n[21]]=c(n[68],n[94])local c=e(n[95]){[n[5]]=r,[n[96]]=t[n[50]](.5,.5,.5)}local c=e(n[97]){[n[5]]=u}local a
function a(e,c)local s
function s(c,t)local e=l[n[98]](d[n[99]]/2,0,0)return o((c*e)[n[101]],n[100],(t*e)[n[101]])end
local u={t[n[50]](1.5,1.5,1.2),t[n[50]](1.5,1,1.5),t[n[50]](1.2,1.5,1.5),t[n[50]](1.5,1.5,1.5)}if c<=0 then
local o=o(r,n[91])local t=(e[n[103]][n[102]]+e[n[103]][n[104]])+e[n[103]][n[105]]o[n[106]][n[96]]=(u[d[n[107]](1,#u)]*d[n[107]](2,4))/2
o[n[103]]=o[n[106]][n[96]]*.5
o[n[23]]=e[n[23]]*l[n[50]](0,e[n[103]][n[104]]/2,0)o[n[5]]=e[n[5]]else
local r=e[n[23]]*l[n[50]](0,e[n[103]]/2,0)i=e[n[103]][n[104]]f=e[n[103]][n[102]]local h=d[n[107]](2,2)local z=d[n[107]](45,135)local r=d[n[107]](20+55/c,40+40/c)local w=d[n[107]](-r/3,r/3)for x=0,h-1 do
local o=o(e,n[91])o[n[6]]=n[108]local u=(i*d[n[107]](95,115))/100
local i=(o[n[23]]*l[n[50]](0,i/2,0))*l[n[98]](0,0,d[n[72]](w))i=(i*l[n[98]](0,x*((d[n[99]]*2)/h)+z,d[n[72]](r/2)))*l[n[50]](0,u/2,0)local l=(s(i,o[n[23]])*f)*.9
o[n[103]]=t[n[50]](l,u,l)o[n[23]]=i
o[n[5]]=e[n[5]]a(o,c-1)end
end
end
local c=e(n[109]){[n[6]]=n[110],[n[5]]=q}local e=o(u,n[91])e[n[5]]=c
e[n[103]]=t[n[50]](f,i,f)e[n[23]]=(l[n[50]](b)*l[n[50]](0,i/2,0))*l[n[98]](0,d[n[72]](d[n[107]](1,360)),0)a(e,p)return c
end
local function X(e)for l,e in u(o(e,n[111]))do
if o(e,n[74],n[112])then
return e
end
end
return nil
end
local function H(l)if l==p then
local l=o(c(n[68],n[115]),n[113],n[114])if not l then
local n=e(n[109]){[n[5]]=c(n[68],n[115]),[n[6]]=n[114]}return n
else
return l
end
end
local o=o(c(n[68],n[115]),n[113],r[n[117]](n[116],l[n[6]]))if not o then
local n=e(n[109]){[n[5]]=c(n[68],n[115]),[n[6]]=r[n[117]](n[116],l[n[6]])}return n
else
return o
end
end
local function N(e)for l,e in u(o(e,n[111]))do
if o(e,n[74],n[118])then
return e
end
end
return nil
end
local function F(e)local l={}local o=o(E,n[119])if e==n[120]then
for o,e in u(o)do
m[n[121]](l,e)end
elseif e==n[122]then
for o,e in u(o)do
if e~=p then
m[n[121]](l,e)end
end
elseif e==n[107]then
m[n[121]](l,o[d[n[107]](1,#o)])elseif e==n[123]then
m[n[121]](l,p)elseif e==n[124]then
for o,e in u(o)do
if 365<e[n[125]]then
m[n[121]](l,e)end
end
elseif e==n[126]or e==n[127]then
for o,e in u(o)do
if e[n[125]]<365 then
m[n[121]](l,e)end
end
else
for t,o in u(o)do
if r[n[128]](r[n[129]](o[n[6]]),1,#e)==r[n[129]](e)then
m[n[121]](l,o)end
end
end
return l
end
local function U(t)local l={}local e={}m[n[121]](e,t)while#e~=0 do
local t={}for d,c in u(e)do
for l,e in u(o(c,n[130]))do
m[n[121]](t,e)end
m[n[121]](l,c)end
e=t
end
return l
end
local function i()local e=o(p,n[131])return e[n[132]],e[n[133]]end
local function i()local e=d[n[134]](((M()%86400)/60)/60)local l=d[n[134]]((((M()%86400)/60)/60-e)*60)return r[n[117]](n[135],e,l)end
local function o(n,e,...)return n[e](n,...)end
local function p1()D(function()p[n[136]]=nil
end)if c(n[68],n[137])then
p[n[5]]=nil
end
local n=e(n[83]){[n[77]]=function(e)return x(function()while o(e,n[138],q)and a()do
e[n[23]]=c(n[68],n[115])[n[139]]end
e[n[5]]=nil
end)end,[n[5]]=q,[n[6]]=n[140],[n[89]]=true,[n[141]]=n[142],[n[103]]=t[n[50]](5,5,5),[n[143]]=.3,[n[21]]=w[n[50]](n[67]),[n[144]]=n[145],[n[146]]=.3,[n[93]]=false,[n[87]]=0,[n[88]]=0,e(n[147]){[n[103]]=j[n[50]](3,0,3,0),[n[148]]=t[n[50]](0,2,0),e(n[149]){[n[150]]=n[151],[n[152]]=n[153],[n[154]]=g,[n[155]]=.3,[n[156]]=1,[n[157]]=b[n[50]](),[n[158]]=0,[n[103]]=j[n[50]](1,0,1,0)}},e(n[159]){[n[160]]=c(n[68],n[161]),[n[162]]=c(n[68],n[163]),[n[164]]=c(n[68],n[165]),[n[166]]=true}}local n=n
end
local function z1()D(function()p[n[136]]=nil
end)if c(n[68],n[137])then
p[n[5]]=nil
end
p[n[136]]=nil
local d=e(n[83]){[n[5]]=q,[n[141]]=n[142],[n[103]]=t[n[50]](3,3,3),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[67]),[n[144]]=n[145],[n[89]]=true,[n[93]]=false}local l=e(n[83]){[n[5]]=q,[n[141]]=n[142],[n[103]]=t[n[50]](5,5,5),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[67]),[n[144]]=n[145],[n[143]]=.7,[n[89]]=true,[n[93]]=false,e(n[159]){[n[160]]=c(n[68],n[161]),[n[162]]=c(n[68],n[163]),[n[164]]=c(n[68],n[165]),[n[166]]=true}}local e=e(n[147]){[n[5]]=l,[n[103]]=j[n[50]](3,0,3,0),[n[148]]=t[n[50]](0,2,0),e(n[149]){[n[150]]=n[151],[n[152]]=n[153],[n[154]]=g,[n[155]]=.3,[n[156]]=1,[n[157]]=b[n[50]](),[n[158]]=0,[n[103]]=j[n[50]](1,0,1,0)}}local e=l
return x(function()while o(l,n[138],q)and a()do
l[n[23]]=c(n[68],n[115])[n[139]]d[n[23]]=c(n[68],n[115])[n[139]]end
l[n[5]]=nil
d[n[5]]=nil
end)end
local function Z(t,d)if not(d1)then
return
end
local l=o(c(n[68],n[168]),n[91])o(l,n[169])local e=e(n[170]){[n[5]]=l,[n[6]]=c(n[68],n[171]),[n[172]]=t}l[n[4]]=true
l[n[5]]=d
l[n[4]]=false
return l
end
local function Q(e)return m[n[121]](c(n[68],n[173]),r[n[117]](n[174],i(),e))end
local function s1(f,a)for r=1,a do
local i=e(n[83]){[n[5]]=f,[n[6]]=n[83]..r,[n[89]]=false,[n[93]]=true,[n[103]]=t[n[50]](1,1,1),[n[21]]=c(n[68],n[90])}local u=e(n[97]){[n[5]]=i,[n[96]]=t[n[50]](.3,.8,.3)}o(i,n[175])local o=e(n[76]){[n[5]]=i}if r==1 then
o[n[81]]=f
else
o[n[81]]=f[n[83]..r-1]end
o[n[82]]=i
if r==1 then
o[n[80]]=l[n[50]](0,-.8,.34)else
o[n[80]]=l[n[50]](0,-.8,.35)end
f[n[83]..r][n[76]][n[78]]=l[n[98]](d[n[99]]/4,0,0)if i[n[6]]==n[83]..a then
i[n[106]][n[5]]=nil
i[n[21]]=c(n[68],n[94])local e=e(n[95]){[n[5]]=i,[n[96]]=t[n[50]](.4,.35,.4)}f[n[83]..a][n[76]][n[78]]=l[n[50]](0,.1,.8)*l[n[98]](d[n[72]](-55),0,0)end
end
end
local function w1(f,a)for r=1,a do
local i=e(n[83]){[n[5]]=f,[n[6]]=n[176]..r,[n[89]]=false,[n[93]]=true,[n[103]]=t[n[50]](1,1,1),[n[21]]=c(n[68],n[90])}local u=e(n[97]){[n[5]]=i,[n[96]]=t[n[50]](.8,1.2,.8)}o(i,n[175])local o=e(n[76]){[n[5]]=i}if r==1 then
o[n[81]]=f
else
o[n[81]]=f[n[176]..r-1]end
o[n[82]]=i
if r==1 then
o[n[80]]=l[n[50]](0,-1,0)else
o[n[80]]=l[n[50]](0,-.8,0)end
if i[n[6]]==n[176]..a then
i[n[106]][n[5]]=nil
i[n[21]]=c(n[68],n[94])u=e(n[95]){[n[5]]=i,[n[96]]=t[n[50]](1,.8,1)}end
f[n[176]..r][n[76]][n[78]]=l[n[98]](0,0,d[n[99]]/8)end
end
local function x1(f,a)for r=1,a do
local i=e(n[83]){[n[5]]=f,[n[6]]=n[176]..r,[n[89]]=false,[n[93]]=true,[n[103]]=t[n[50]](1,1,1),[n[21]]=c(n[68],n[90])}local u=e(n[97]){[n[5]]=i,[n[96]]=t[n[50]](1,1,1)}o(i,n[175])local o=e(n[76]){[n[5]]=i}if r==1 then
o[n[81]]=f
else
o[n[81]]=f[n[176]..r-1]end
o[n[82]]=i
if r==1 then
o[n[80]]=l[n[50]](0,-1,0)else
o[n[80]]=l[n[50]](0,-.8,0)end
if i[n[6]]==n[176]..a then
i[n[106]][n[5]]=nil
i[n[21]]=c(n[68],n[94])u=e(n[95]){[n[5]]=i,[n[96]]=t[n[50]](1,.8,1)}end
f[n[176]..r][n[76]][n[78]]=l[n[98]](d[n[72]](1.5),0,0)if a<r then
i[n[143]]=1
end
end
end
local function P(t,d)if c(n[68],n[177])==nil then
return nil
end
local l=o(c(n[68],n[177]),n[91])o(l,n[169])local e=e(n[170]){[n[5]]=l,[n[6]]=c(n[68],n[171]),[n[172]]=t}l[n[4]]=true
l[n[5]]=d
l[n[4]]=false
return l
end
local function s(e)if not e then
L(n[178])end
if h(e)~=n[37]then
e=B(e)end
if not e then
L(n[179])end
if r[n[128]](e,1,11)==n[180]then
return e
elseif r[n[128]](e,1,13)==n[181]then
return e
elseif r[n[128]](e,1,10)==n[9]then
return e
elseif r[n[128]](e,1,7)==n[182]then
return e
elseif r[n[128]](e,1,8)==n[183]then
return e
elseif r[n[128]](e,1,18)==n[184]then
return s(o((n[185]),n[117],r[n[187]](n[186],1e4),r[n[128]](e,19)))elseif r[n[128]](e,1,18)==n[188]then
return s(o((n[189]),n[117],r[n[187]](n[186],1e4),r[n[128]](e,19)))elseif r[n[128]](e,1,15)==n[190]then
local l=r[n[128]](e,16)if#l~=32 then
L(n[191])end
e=r[n[117]](n[192],T,r[n[187]](n[186],1e4),l)return e
elseif#e==32 then
e=r[n[117]](n[192],T,r[n[187]](n[186],1e4),e)return e
elseif I(e)then
e=r[n[117]](n[193],e)return e
else
return L(n[194])end
end
local function k(e)if not e then
return
end
if not o(e,n[74],n[109])then
return
end
if not o(e,n[113],c(n[68],n[195]))then
return
end
local e=o(e,n[113],c(n[68],n[195]))e[n[5]]=nil
end
local function f1(t,d)local e={}for l,o in u(c(n[68],n[196]))do
if r[n[197]](r[n[129]](l,r[n[129]](t)))then
if d then
return o
end
e[l]=o
end
end
return e
end
local function y(e)return o(v,n[198],e)end
local function a1(e)return d[n[199]](d[n[72]](e))end
local function S(l)local e={}for l in r[n[201]](l,n[200])do
m[n[121]](e,l)end
if#e==0 then
m[n[121]](e,l)end
return e
end
local function Y1()return o(H(p),n[169])end
local function i(e)local l={}for t,e in u(o(H(e),n[111]))do
if e[n[5]]and o(e,n[113],n[202])then
m[n[121]](l,e)end
end
return l
end
local function F1()if c(n[68],n[203])==true then
c(n[69],n[204],c(n[68],n[204])+c(n[68],n[205]))end
local r=i(p)local f=c(n[68],n[115])[n[139]]local a=#r/16
if not c(n[68],n[206])then
for t,e in u(r)do
local e=o(e,n[113],n[202])or o(e,n[113],n[83])if e then
e[n[89]]=true
local t=(f*l[n[98]](0,((d[n[99]]*2)/#r)*t+c(n[68],n[204]),0))*l[n[50]](5+10*a,0,0)e[n[23]]=l[n[50]](t[n[207]],f[n[207]])*l[n[98]](-d[n[99]]/4,0,0)if o(e,n[113],n[208])then
e[n[208]][n[5]]=nil
end
if o(e,n[113],n[209])then
e[n[209]][n[5]]=nil
end
end
end
else
for u,i in u(r)do
local i=o(i,n[113],n[202])or o(i,n[113],n[83])if i then
i[n[89]]=false
local c=(f*l[n[98]](0,((d[n[99]]*2)/#r)*u+c(n[68],n[204]),0))*l[n[50]](5+10*a,0,0)if not o(i,n[113],n[208])then
e(n[208]){[n[5]]=i,[n[210]]=t[n[50]](d[n[211]],d[n[211]],d[n[211]])}end
if not o(i,n[113],n[209])then
e(n[209]){[n[5]]=i,[n[212]]=t[n[50]](d[n[211]],d[n[211]],d[n[211]])}end
i[n[208]][n[213]]=c[n[207]]i[n[209]][n[214]]=l[n[50]](c[n[207]],f[n[207]])*l[n[98]](-d[n[99]]/3,0,0)end
end
end
end
local function Y(l)local e=e(n[215]){[n[5]]=y(n[216]),[n[217]]=s(l),[n[218]]=s(l),[n[219]]=s(l),[n[220]]=s(l),[n[221]]=s(l),[n[222]]=s(l)}return Q(n[223])end
local function i(o,t,e)local l=c(n[68],n[224])l[o]={[n[225]]=t,[n[226]]=e}end
local function W(o,i,d,c)if d==nil then
d=4
end
if c==nil then
c=6
end
local l=e(n[83]){[n[87]]=n[167],[n[143]]=1,[n[93]]=false,[n[103]]=t[n[50]](d,c,1),[n[85]]=n[227],[n[88]]=n[167],[n[23]]=l[n[50]](0,3,4.5,1,0,0,0,1,0,0,0,1),[n[228]]=t[n[50]](0,3,4.5),e(n[229]){e(n[230]){[n[231]]=s(i),[n[232]]=0,[n[103]]=j[n[50]](1,0,1,0),[n[156]]=1,[n[233]]=b[n[50]](1,1,1)}}}o[n[234]][n[143]]=1
o[n[235]][n[143]]=1
o[n[236]][n[143]]=1
o[n[237]][n[143]]=1
o[n[238]][n[143]]=1
o[n[239]][n[143]]=1
local e=e(n[240]){[n[5]]=l,[n[81]]=o[n[234]],[n[82]]=l}l[n[5]]=o
end
local function _(l,t)if t==nil then
t=f[n[65]]end
if not c(n[68],n[241])then
local e=n[242]local o=o(y(n[244]),n[243],e)local t=n[245]local l=K[n[50]](n[246])l[n[156]]=1
l[n[232]]=0
local e=K[n[50]](n[230])e[n[156]]=1
e[n[232]]=0
e[n[231]]=t
e[n[247]]=z[n[50]](8,8)e[n[248]]=A[n[50]](8,8,8,8)c(n[69],n[241],{o,l,e})end
local e=c(n[68],n[241])local d=e[1]local c=e[2]local f=e[3]local e={}for t=1,#l do
m[n[121]](e,r[n[249]](o(l,n[128],t,t)))end
local c=o(c,n[250])c[n[103]]=j[n[50]](0,#e*8-1,0,8)for i,e in u(e)do
local d=d[B(e)]or d[n[251]]local e=o(f,n[250])e[n[252]]=z[n[50]](d[1],d[2])e[n[103]]=j[n[50]](1/(#l),0,1,0)e[n[228]]=j[n[50]]((1/(#l))*(i-1),0,0,0)e[n[253]]=t
e[n[5]]=c
end
return c
end
local function G(e,c)return function(o,t)local l={}for e=1,e do
l[e]=F(S(o)[e],t)[1]if l[e]==nil then
L(r[n[117]](n[254],B(S(o)[e])))end
end
return c(l,o,t)end
end
local function h(o)return function(n,e)for t,l in u(F(S(n)[1],e))do
o(l,n,e)end
end
end
local function u1(d,c,t,o,l)local e=K[n[50]](n[255])e[n[256]]=s(d)if c then
e[n[5]]=c
end
if t then
e[n[257]]=t
end
if o then
e[n[258]]=o
end
if l then
e[n[259]]=l
end
return e
end
local function A(Q,u,f,h,i)if f==nil then
f=p
end
if h==nil then
h=100
end
local q
local h=i
if(1==h or 3==h)or 4==h then
q=c(n[68],n[115])[n[139]]*l[n[50]](7,7,7)elseif((2==h or 5==h)or 6==h)or 7==h then
q=c(n[68],n[115])[n[139]]*l[n[50]](10,10,10)end
local b
local h=i
if 2==h or 5==h then
b=n[142]else
b=n[260]end
local z
local h=i
if 1==h then
z=t[n[50]](4,.3,4)elseif 2==h then
z=t[n[50]](3/2,3/2,3/2)elseif 3==h then
z=t[n[50]](1,1,1)elseif 4==h then
z=t[n[50]](3.2,3,1)elseif 5==h or 6==h then
z=t[n[50]](3,3,3)elseif 7==h then
z=t[n[50]](3,1,3)end
local h
local z=i
if 5==z or 6==z then
h=1
else
h=0
end
local s=(i==7)and e(n[95]){[n[261]]=n[262],[n[263]]=s(9759642),[n[96]]=t[n[50]](3,3,3),[n[264]]=t[n[50]](0,0,1)}local z=((i==1)and c(n[68],n[265]))and e(n[266]){[n[77]]=function(e)return x(function()e[n[83]]=e[n[5]]end)end,[n[267]]=f[n[136]]and o(f[n[136]],n[113],n[267]),[n[164]]=w[n[50]](u[1]),[n[143]]=0}local C=((i==1)and c(n[68],n[268]))and e(n[269]){[n[77]]=function(e)return x(function()e[n[270]]=e[n[5]]end)end,[n[271]]=f[n[136]]and o(f[n[136]],n[113],n[234]),[n[164]]=w[n[50]](u[1])}return e(n[109]){[n[5]]=H(f),[n[6]]=r[n[117]](n[116],f[n[6]]),e(n[83]){[n[77]]=function(e)if((i==1 or i==4)or i==5)or i==6 then
e[n[6]]=n[202]end
if i==1 then
return x(function()local l=e[n[5]]while a()do
if e[n[5]]==nil then
l[n[5]]=nil
break
end
for o=0,.7,.1 do
if e[n[5]]==nil then
break
end
local l=e[n[23]]e[n[103]]=t[n[50]](4,o,4)e[n[23]]=l
a()end
a()for l=.7,0,-.1 do
if e[n[5]]==nil then
break
end
local o=e[n[23]]e[n[103]]=t[n[50]](4,l,4)e[n[23]]=o
a()end
end
end)elseif i==4 then
return x(function()while a()do
if e[n[5]]==nil then
break
end
for l=0,4,.1 do
if e[n[5]]==nil then
break
end
local o=e[n[23]]e[n[103]]=t[n[50]](l,l,l)e[n[23]]=o
a()end
a()for l=4,0,-.1 do
if e[n[5]]==nil then
break
end
local o=e[n[23]]e[n[103]]=t[n[50]](l,l,l)e[n[23]]=o
a()end
end
end)end
end,[n[143]]=.5,[n[93]]=false,[n[164]]=u[1],[n[87]]=n[167],[n[88]]=n[167],[n[85]]=n[272],[n[23]]=q,[n[141]]=b,e(n[273]){[n[77]]=function(e)local l
x(function()l=e[n[5]][n[5]]end)return o(e[n[274]],n[2],function(e)if e==f then
l[n[5]]=nil
end
end)end},e(n[275]){[n[77]]=function(e)if c(n[68],n[206])then
e[n[276]]=0
e[n[103]]=6
e[n[164]]=u[1]e[n[277]]=u[1]else
e[n[103]]=0
end
end},e(n[159]){[n[160]]=10,[n[162]]=10,[n[164]]=u[1],[n[166]]=true},e(n[278]){[n[77]]=function(e)return x(function()e[n[279]]=e[n[5]]end)end,[n[164]]=w[n[50]](u[1]),[n[143]]=h},s,z,C,e(n[208]){[n[77]]=function(e)if(i~=1 and i~=3)and i~=4 then
return x(function()local d=4
local i=e[n[5]]while i[n[5]]~=nil do
d=d+3.5
e[n[213]]=o(c(n[68],n[115])[n[139]],n[280],l[n[50]](t[n[50]](a1(d)*4,1.5,V(d)*4)))[n[207]]a()end
end)elseif i==3 then
return x(function()local d=4
local i=e[n[5]]while i[n[5]]~=nil do
d=d+3.5
e[n[213]]=o(c(n[68],n[115])[n[139]],n[280],l[n[50]](t[n[50]](a1(d)*7,0,V(d)*7)))[n[207]]a()end
end)end
end,[n[210]]=t[n[50]](d[n[211]],d[n[211]],d[n[211]]),[n[213]]=q[n[207]]},e(n[209]){[n[77]]=function(e)if(i~=1 and i~=3)and i~=4 then
return x(function()local o=4
local t=e[n[5]]while t[n[5]]~=nil do
o=o+3.5
e[n[214]]=l[n[98]](0,d[n[72]](o),0)a()end
end)elseif i==3 then
return x(function()local o=4
local t=e[n[5]]while t[n[5]]~=nil do
o=o+3.5
e[n[214]]=l[n[98]](0,d[n[72]](o),0)a()end
end)end
end,[n[212]]=t[n[50]](d[n[211]],d[n[211]],d[n[211]])}},e(n[281]){[n[77]]=function(e)if f~=p then
e[n[172]]=f
end
end,[n[6]]=n[282]},e(n[147]){[n[77]]=function(e)return x(function()e[n[279]]=o(e[n[5]],n[283],n[83])end)end,[n[103]]=j[n[50]](0,8*#Q,0,8),[n[284]]=t[n[50]](0,3,0),_(Q,u[1])}}end
local function j1(c)local l=e(n[147]){[n[5]]=(p[n[136]]and o(p[n[136]],n[113],n[235]))or(l1)}if o(c,n[128],1,2)==n[285]then
return
end
local e=o(c,n[286],n[287],n[288])e=o(e,n[286],n[289],n[288])e=o(e,n[286],n[290],B(d[n[99]]))l[n[103]]=j[n[50]](0,8*#e,0,8)local o=_(e)o[n[5]]=l
x(function()for e=3,100 do
l[n[284]]=t[n[50]](0,e/10,0)a()end
for e=3,50 do
o[n[156]]=e/50
a()end
l[n[5]]=nil
end)return x(function()for e=1,0,1/#e do
l[n[246]][n[143]]=e
a(1/60)end
end)end
local function s(n,e,l,o)return A(n,e,l,o,1)end
local function z(o,e,n,l)return A(o,e,n,l,2)end
local function E1(o,l,e,n)return A(o,l,e,n,3)end
local function V(o,e,l,n)return A(o,e,l,n,5)end
local function a1(e,n,l,o)return A(e,n,l,o,4)end
local function D1(n,e,o,l)return A(n,e,o,l,6)end
local function H(l,e,n,o)return A(l,e,n,o,7)end
local function A(i)local d=(p[n[136]]and o(p[n[136]],n[113],n[235]))or(l1)if d then
local e=e(n[83]){[n[77]]=function(e)return x(function()return o(e,n[175])end)end,[n[5]]=q,[n[291]]=false,[n[143]]=1,[n[23]]=d[n[23]]*l[n[50]](0,3,0),e(n[208]){[n[77]]=function(e)return x(function()local l=e[n[5]]for l=3,100 do
e[n[213]]=d[n[228]]a()end
end)end,[n[210]]=t[n[50]](1/0,1/0,1/0),[n[213]]=d[n[228]]},e(n[147]){[n[77]]=function(e)x(function()e[n[279]]=e[n[5]]end)return x(function()for l=3,100 do
e[n[284]]=t[n[50]](0,l/10,0)a()end
end)end,[n[5]]=d,[n[103]]=j[n[50]](1,0,1,0),[n[284]]=t[n[50]](0,3,0),e(n[246]){[n[103]]=j[n[50]](1,0,1,0),[n[156]]=1,e(n[149]){[n[77]]=function(l)return x(function()for e=3,100 do
l[n[155]]=e/100
a()end
end)end,[n[154]]=i,[n[103]]=j[n[50]](1,0,1,0),[n[150]]=n[151],[n[152]]=n[153],[n[158]]=0,[n[156]]=1,[n[157]]=b[n[50]](2/3,2/3,2/3),[n[233]]=b[n[50]](0,0,0)}}}}if c(n[68],n[292])then
return s(i,{f[n[65]]})end
end
end
local function A(l)return x(function()for t,e in u(c(n[68],n[224]))do
if o(o(l,n[128],1,#e[n[225]]+1),n[129])==r[n[117]](n[293],o(e[n[225]],n[129]),c(n[68],n[294]))then
local e,l=C1(e[n[226]],o(l,n[128],#e[n[225]]+2),p)if not(e)then
s(l,{f[n[49]]})end
return
end
end
return j1(l)end)end
local function l1()local t={}local u=K[n[50]](n[295])local d=o(u,n[250])local i=false
local l=n[296]while not N(p)do
a()end
d[n[5]]=N(p)local f
function f()return x(function()o(d,n[169])local e=_(l)e[n[5]]=d
end)end
local a
function a(c,e)if(c[n[297]]==0)or(c[n[297]]==nil)then
return
end
t[c[n[297]]]=true
if c[n[297]]==R[n[297]][n[298]]then
if not(i)then
if t[R[n[297]][n[299]]]or t[R[n[297]][n[300]]]then
i=true
l=n[7]end
else
i=false
local e=l
if e~=n[7]then
x(function()return A(e)end)end
l=n[296]end
f()return
end
if i then
local e=c[n[297]][n[172]]if t[R[n[297]][n[299]]]or t[R[n[297]][n[300]]]then
if 97<=e and e<=122 then
e=e-32
elseif 91<=e and e<=93 then
e=e+32
elseif e==50 then
e=e+14
elseif(e==49)or(51<=e and e<=53)then
e=e-16
elseif e==54 then
e=e+40
elseif(e==55)or(e==57)then
e=e-17
elseif e==56 then
e=e-14
elseif e==48 then
e=e-7
elseif e==59 then
e=e-1
elseif((e==44)or(e==46))or(e==47)then
e=e+16
elseif e==61 then
e=e-18
elseif e==39 then
e=e-5
elseif e==45 then
e=e+50
elseif e==96 then
e=e+30
end
end
if 32<=e and e<=126 then
l=r[n[117]](n[293],l,r[n[301]](e))elseif c[n[297]]==R[n[297]][n[302]]then
l=o(l,n[128],1,#l-1)if((#l==0)or t[R[n[297]][n[299]]])or t[R[n[297]][n[300]]]then
i=false
l=n[296]end
end
end
return f()end
local l
function l(e,l)if(e[n[297]]==0)or(e[n[297]]==nil)then
return
end
t[e[n[297]]]=false
end
o(y(n[304])[n[303]],n[2],a)o(y(n[304])[n[305]],n[2],l)o(p[n[306]],n[2],function(e)if e==d then
d=o(u,n[250])local e=d
d[n[5]]=N(p)return f()end
end)f()return d
end
c(n[69],n[307],true)c(n[69],n[308],nil)c(n[69],n[173],{})c(n[69],n[309],1)c(n[69],n[90],w[n[50]](n[310]))c(n[69],n[94],w[n[50]](n[62]))c(n[69],n[224],{})c(n[69],n[177],nil)c(n[69],n[311],{[1]={[n[6]]=n[312],[n[313]]=n[314]}})c(n[69],n[168],nil)c(n[69],n[315],{})c(n[69],n[268],false)c(n[69],n[316],false)c(n[69],n[317],false)c(n[69],n[292],false)c(n[69],n[318],false)c(n[69],n[319],{})c(n[69],n[195],n[320])c(n[69],n[137],false)c(n[69],n[203],false)c(n[69],n[321],{})c(n[69],n[204],0)c(n[69],n[265],false)c(n[69],n[322],{})c(n[69],n[205],.1)c(n[69],n[323],{})c(n[69],n[196],{})c(n[69],n[324],false)c(n[69],n[171],n[325])c(n[69],n[115],nil)c(n[69],n[163],15)c(n[69],n[326],n[327])c(n[69],n[294],n[328])c(n[69],n[165],b[n[50]](1,1,1))c(n[69],n[161],15)c(n[69],n[206],true)c(n[69],n[329],true)i(n[330],n[331],function(e,l)return s(e,{f[n[57]]})end)i(n[330],n[331],function(e,l)return s(e,{f[n[57]]})end)i(n[332],n[333],function(e,l)return z(e,{f[n[57]]})end)i(n[334],n[335],function(e,l)return E1(e,{f[n[57]]})end)i(n[336],n[337],function(e,l)return V(e,{f[n[57]]})end)i(n[338],n[339],function(e,l)return a1(e,{f[n[57]]})end)i(n[340],n[341],h(function(l)local o=1e3
z(r[n[117]](n[342],l[n[6]]),{f[n[67]]})for o=1,o do
local e=e(n[281]){[n[5]]=l[n[136]][n[267]],[n[172]]=p,[n[6]]=n[343]}a(.1)l[n[136]][n[267]][n[344]]=0
a(.01)l[n[136]][n[5]]=y(n[216])a(.01)e[n[5]]=nil
a(.01)l[n[136]][n[5]]=q
end
end))i(n[345],n[346],function(e,l)return D1(e,{f[n[57]]})end)i(n[347],n[348],function(e,l)return H(e,{f[n[57]]})end)i(n[349],n[350],h(function(e)e[n[136]][n[267]][n[351]]=true
return s(r[n[117]](n[352],e[n[6]]),{f[n[57]]})end))i(n[349],n[350],h(function(e)e[n[136]][n[267]][n[351]]=true
return s(r[n[117]](n[352],e[n[6]]),{f[n[57]]})end))i(n[353],n[354],h(function(e)e[n[136]][n[267]][n[355]]=false
e[n[136]][n[267]][n[351]]=false
e[n[136]][n[267]][n[356]]=false
if o(e[n[136]],n[113],n[234])then
e[n[136]][n[234]][n[23]]=l[n[50]](e[n[136]][n[234]][n[228]])+t[n[50]](0,5,0)e[n[136]][n[234]][n[357]]=t[n[50]]()end
return s(r[n[117]](n[358],e[n[6]]),{f[n[57]]})end))i(n[275],n[359],h(function(l)if l[n[136]]then
if o(l[n[136]],n[113],n[234])then
if o(l[n[136]][n[234]],n[74],n[83])then
e(n[275]){[n[5]]=l[n[136]][n[234]]}V(r[n[117]](n[360],l[n[6]]),{f[n[57]]})return Q(r[n[117]](n[360],l[n[6]]))end
end
end
end))i(n[361],n[362],h(function(l)if l[n[136]]then
if o(l[n[136]],n[113],n[234])then
e(n[361]){[n[5]]=l[n[136]][n[234]]}return z(r[n[117]](n[363],l[n[6]]),{f[n[57]]})end
end
end))i(n[364],n[365],h(function(e)if e[n[136]]then
if o(e[n[136]],n[113],n[234])then
if o(e[n[136]][n[234]],n[74],n[83])then
for t,l in u(o(e[n[136]][n[234]],n[111]))do
if o(l,n[74],n[275])then
l[n[5]]=nil
z(r[n[117]](n[366],e[n[6]]),{f[n[57]]})Q(r[n[117]](n[366],e[n[6]]))end
end
end
end
end
end))i(n[367],n[368],h(function(e)if e[n[136]]then
if o(e[n[136]],n[113],n[234])then
if o(e[n[136]][n[234]],n[74],n[83])then
for t,l in u(o(e[n[136]][n[234]],n[111]))do
if o(l,n[74],n[361])then
l[n[5]]=nil
z(r[n[117]](n[369],e[n[6]]),{f[n[57]]})Q(r[n[117]](n[369],e[n[6]]))end
end
end
end
end
end))i(n[370],n[371],h(function(l)local o=3
local o=l[n[136]][n[234]]D(function()local e=l[n[136]][n[234]][n[372]]e[n[5]]=nil
end)local l=e(n[109]){[n[5]]=o,[n[6]]=n[372]}local d=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[310]),[n[141]]=n[142],[n[5]]=l,[n[103]]=t[n[50]](1,1,1)}local c=e(n[95]){[n[261]]=n[373],[n[5]]=d,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],l,o,d,true,-.5,.5,-.6,0,0,0)local d=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[310]),[n[141]]=n[142],[n[5]]=l,[n[103]]=t[n[50]](1,1,1)}c=e(n[95]){[n[261]]=n[373],[n[5]]=d,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],l,o,d,true,.5,.5,-.6,0,0,0)local d=e(n[83]){[n[21]]=w[n[50]](n[62]),[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[141]]=n[142],[n[5]]=l,[n[103]]=t[n[50]](1,1,1)}c=e(n[95]){[n[261]]=n[373],[n[5]]=d,[n[96]]=t[n[50]](.2,.2,.2)}C(n[374],l,o,d,true,-.5,.5,-1.2,0,0,0)local d=e(n[83]){[n[21]]=w[n[50]](n[62]),[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[141]]=n[142],[n[5]]=l,[n[103]]=t[n[50]](1,1,1)}c=e(n[95]){[n[261]]=n[373],[n[5]]=d,[n[96]]=t[n[50]](.2,.2,.2)}return C(n[374],l,o,d,true,.5,.5,-1.2,0,0,0)end))i(n[375],n[376],h(function(e)m[n[121]](c(n[68],n[321]),e[n[6]])return O(e)end))i(n[377],n[377],h(function(o)local r=n[310]D(function()local e=o[n[136]][n[378]]e[n[5]]=nil
end)local i=e(n[109]){[n[5]]=o[n[136]],[n[6]]=n[378]}local c=e(n[209]){[n[5]]=o[n[136]][n[234]]}local c=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=i,[n[85]]=3,[n[103]]=t[n[50]](.6*2,2.5*2,.6*2),[n[21]]=w[n[50]](r),[n[228]]=o[n[136]][n[235]][n[228]],[n[93]]=false}local f=e(n[97]){[n[5]]=c}local d=e(n[76]){[n[5]]=o[n[136]][n[235]],[n[81]]=c,[n[82]]=o[n[136]][n[235]],[n[78]]=l[n[50]](0,.25,2.1)*l[n[98]](d[n[72]](45),0,0)}local d=e(n[83]){[n[6]]=n[380],[n[88]]=0,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](.6*2,.6*2,.6*2),[n[23]]=l[n[50]](c[n[228]]),[n[21]]=w[n[50]](n[62]),[n[93]]=false,[n[5]]=i}local f=e(n[95]){[n[5]]=d,[n[261]]=n[373]}local c=e(n[76]){[n[5]]=d,[n[81]]=c,[n[82]]=d,[n[78]]=l[n[50]](0,2.6,0)}local c=e(n[83]){[n[5]]=i,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=false,[n[85]]=3,[n[103]]=t[n[50]](1*2,1*2,1*2),[n[23]]=l[n[50]](o[n[136]][n[237]][n[228]]),[n[21]]=w[n[50]](r)}local d=e(n[95]){[n[5]]=c,[n[261]]=n[373]}local c=e(n[76]){[n[5]]=c,[n[81]]=o[n[136]][n[237]],[n[82]]=c,[n[78]]=l[n[50]](0,.5,-.5)}local t=e(n[83]){[n[5]]=i,[n[6]]=n[382],[n[88]]=0,[n[93]]=false,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1*2,1*2,1*2),[n[23]]=l[n[50]](o[n[136]][n[239]][n[228]]),[n[21]]=w[n[50]](r)}local c=e(n[95]){[n[5]]=t,[n[261]]=n[373]}local n=e(n[76]){[n[5]]=t,[n[81]]=o[n[136]][n[239]],[n[82]]=t,[n[78]]=l[n[50]](0,.5,-.5)}end))i(n[383],n[384],h(function(e)return D(function()local e=e[n[136]][n[234]][n[372]]e[n[5]]=nil
end)end))i(n[385],n[386],h(function(e)return D(function()local e=e[n[136]][n[378]]e[n[5]]=nil
end)end))i(n[387],n[388],G(2,function(c,i)local i=c[1]local c=c[2]local i=E[i[n[6]]][n[136]][n[234]]local c=E[c[n[6]]][n[136]][n[234]]c[n[5]][n[267]][n[351]]=true
local f=i[n[389]]f[n[5]]=nil
local r=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i,[n[78]]=l[n[50]](-(1.5),0,0),[n[80]]=l[n[50]](-(.5),.7,0)*l[n[98]](-(.9),-(.4),0),[n[6]]=n[389]}local r=i[n[390]]r[n[5]]=nil
local u=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[238]],[n[78]]=l[n[50]](1.5,0,0),[n[80]]=l[n[50]](.5,.7,0)*l[n[98]](-(.9),.4,0),[n[6]]=n[390]}f=c[n[389]]f[n[5]]=nil
local f=e(n[76]){[n[5]]=c,[n[81]]=c,[n[82]]=c[n[5]][n[236]],[n[78]]=l[n[50]](-(1.5),0,0),[n[80]]=l[n[50]](-(.5),-(1.3),-(.5))*l[n[98]](.9,-(.4),0),[n[6]]=n[389]}r=c[n[390]]r[n[5]]=nil
local r=e(n[76]){[n[5]]=c,[n[81]]=c,[n[82]]=c[n[5]][n[238]],[n[78]]=l[n[50]](1.5,0,0),[n[80]]=l[n[50]](.5,-(1.3),-(.5))*l[n[98]](.9,.4,0),[n[6]]=n[390]}local r=c[n[391]]r[n[5]]=nil
local r=e(n[76]){[n[5]]=c,[n[81]]=c,[n[82]]=c[n[5]][n[237]],[n[78]]=l[n[50]](-(.5),-(2),0),[n[80]]=l[n[50]](0,-(1.5),-(.5))*l[n[98]](.9,-(.4),0),[n[6]]=n[391]}local r=c[n[392]]r[n[5]]=nil
local r=e(n[76]){[n[5]]=c,[n[81]]=c,[n[82]]=c[n[5]][n[239]],[n[78]]=l[n[50]](.5,-(2),0),[n[80]]=l[n[50]](0,-(1.5),-(.5))*l[n[98]](.9,.4,0),[n[6]]=n[392]}local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[310]),[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}local u=e(n[95]){[n[261]]=n[373],[n[5]]=f,[n[96]]=t[n[50]](.4,.4,.4)}C(n[374],i,i,f,true,-(.2),-(1.3),-(.6),0,0,0)local r=o(f,n[91])r[n[5]]=i
C(n[374],i,i,r,true,.2,-(1.3),-(.6),0,0,0)local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[310]),[n[5]]=i,[n[85]]=n[86],[n[103]]=t[n[50]](.4,1.3,.4)}local h=e(n[97]){[n[5]]=r}local h=C(n[374],i,i,r,true,0,-(1),-(.52)+(-(r[n[103]][n[104]])/2),d[n[72]](-(80)),0,0)local f=o(f,n[91])f[n[21]]=w[n[50]](n[62])f[n[106]][n[96]]=t[n[50]](.4,.62,.4)f[n[5]]=i
C(n[374],r,r,f,true,0,0+(r[n[103]][n[104]]/2),0,d[n[72]](-(10)),0,0)local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[310]),[n[141]]=n[142],[n[5]]=c,[n[103]]=t[n[50]](1,1,1)}u=e(n[95]){[n[261]]=n[373],[n[5]]=r,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],c,c,r,true,-(.5),.5,-(.6),0,0,0)local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[310]),[n[141]]=n[142],[n[5]]=c,[n[103]]=t[n[50]](1,1,1)}u=e(n[95]){[n[261]]=n[373],[n[5]]=r,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],c,c,r,true,.5,.5,-(.6),0,0,0)local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[141]]=n[142],[n[21]]=w[n[50]](n[62]),[n[5]]=c,[n[103]]=t[n[50]](1,1,1)}u=e(n[95]){[n[261]]=n[373],[n[5]]=r,[n[96]]=t[n[50]](.2,.2,.2)}C(n[374],c,c,r,true,-(.5),.5,-(1.2),0,0,0)local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[141]]=n[142],[n[5]]=c,[n[21]]=w[n[50]](n[62]),[n[103]]=t[n[50]](1,1,1)}u=e(n[95]){[n[261]]=n[373],[n[5]]=r,[n[96]]=t[n[50]](.2,.2,.2)}C(n[374],c,c,r,true,.5,.5,-(1.2),0,0,0)if o(i,n[113],n[393])~=nil then
i[n[393]][n[5]]=nil
end
local e=C(n[393],i,i,c,true,0,-(.9),-(1.3),d[n[72]](-(90)),0,0)local o=c[n[394]]o[n[78]]=l[n[50]](0,1.5,0)*l[n[98]](d[n[72]](-(210)),d[n[72]](180),0)while true do
a()for o=1,6 do
e[n[80]]=e[n[80]]*l[n[50]](0,-(.3),0)a()end
for o=1,6 do
e[n[80]]=e[n[80]]*l[n[50]](0,.3,0)a()end
end
end))i(n[395],n[396],function(e,l)for t,l in u(F())do
local t=g or p[n[6]]o(y(n[397]),n[397],l[n[136]][n[235]],e,n[58])for t,l in u(o(q,n[111]))do
if o(l,n[74],n[83])then
o(y(n[397]),n[397],l,e,n[49])end
end
end
end)i(n[398],n[399],h(function(o)local c=b[n[50]](0,0,0)local s=b[n[50]](1,1,1)local z=e(n[109]){[n[5]]=q,[n[6]]=n[400]}local r=o[n[136]][n[234]][n[23]]*l[n[50]](0,-(4),0)+o[n[136]][n[234]][n[23]][n[101]]*3
local i=o[n[136]][n[234]][n[23]]*l[n[50]](0,-(4)+(25*.9),((2*25)*-(1))-10)+o[n[136]][n[234]][n[23]][n[101]]*3
if l==nil then
return
end
local h
function h(o)return e(n[109]){e(n[83]){[n[85]]=n[86],[n[6]]=n[401],[n[89]]=true,[n[402]]=true,[n[146]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](s),[n[103]]=t[n[50]](6,1,3),[n[23]]=r*l[n[50]](0,(o*.9),o*-(2)),e(n[403]){}},e(n[83]){[n[85]]=n[86],[n[6]]=n[404],[n[89]]=true,[n[402]]=true,[n[146]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](c),[n[103]]=t[n[50]](4,1,3.2),[n[23]]=r*l[n[50]](0,(o*.9)+.1,o*-(2)),e(n[403]){}}}end
local f
function f(o)local o=e(n[83]){[n[85]]=n[86],[n[6]]=n[405],[n[89]]=true,[n[402]]=true,[n[146]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](c),[n[103]]=t[n[50]](1,7,1),[n[23]]=(i*l[n[98]](d[n[72]](0),d[n[72]]((360/6)*o),d[n[72]](45)))*l[n[50]](7,-(7),0)}return e(n[109]){o,e(n[83]){[n[146]]=100+999,[n[85]]=n[86],[n[6]]=n[406],[n[141]]=n[142],[n[89]]=true,[n[402]]=true,[n[103]]=t[n[50]](2,2,2),[n[23]]=(o[n[23]]*l[n[50]](0,3.5,0))*l[n[98]](0,0,0),e(n[275]){}}}end
return x(function()local o={}local r={}for e=1,25 do
m[n[121]](o,h(e))end
for e=1,d[n[134]](360/6)do
m[n[121]](r,f(e))end
m[n[121]](o,e(n[109]){e(n[83]){[n[85]]=n[86],[n[6]]=n[407],[n[89]]=true,[n[402]]=true,[n[146]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](s),[n[103]]=t[n[50]](20,1,20),[n[23]]=i,e(n[97]){}},e(n[83]){[n[85]]=n[86],[n[6]]=n[408],[n[89]]=true,[n[402]]=true,[n[146]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](c),[n[103]]=t[n[50]](18,1,18),[n[23]]=i*l[n[50]](0,.1,0),e(n[97]){}},q1(r)})for l,e in u(o)do
a()e[n[5]]=z
end
end)end))i(n[409],n[410],function(e,e)for l,e in u(o(q,n[111]))do
if e[n[6]]==n[400]then
e[n[5]]=nil
end
end
end)i(n[411],n[412],function(e,e)return H(r[n[117]](n[413],d[n[107]](1,2)),{f[n[49]]})end)i(n[414],n[415],function(e,l)return H(r[n[117]](n[416],e,d[n[107]](I(e))),{f[n[49]]})end)i(n[417],n[418],function(e,e)return H(r[n[117]](n[419],d[n[107]](1,6)),{f[n[49]]})end)i(n[420],n[421],function(l,e)for o,e in u(c(n[68],n[321]))do
if r[n[128]](r[n[129]](e),1,#l)==r[n[129]](l)then
m[n[422]](c(n[68],n[321]),o)s(r[n[117]](n[423],e),{f[n[57]]})Q(r[n[117]](n[423],e))end
end
end)i(n[424],n[425],function(e,e)if p[n[136]]then
p[n[136]]=nil
end
p1()s(n[426],{f[n[49]]})return Q(n[427])end)i(n[428],n[429],function(e,e)if p[n[136]]then
p[n[136]]=nil
end
z1()s(n[430],{f[n[49]]})return Q(n[431])end)i(n[432],n[433],h(function(e)if e[n[136]]then
e[n[136]][n[5]]=y(n[216])return z(r[n[117]](n[434],e[n[6]]),{f[n[57]]})end
end))i(n[435],n[436],h(function(e)if e[n[136]]then
e[n[136]][n[5]]=q
o(e[n[136]],n[437])return z(r[n[117]](n[438],e[n[6]]),{f[n[57]]})end
end))i(n[439],n[440],h(function(e)while a()do
x(function()return o(N(e),n[169])end)end
end))i(n[441],n[442],h(function(e)return o(N(e),n[169])end))i(n[443],n[444],h(function(e)if o(e,n[113],n[112])~=nil then
if e[n[136]]then
for t,l in u(o(e[n[136]],n[111]))do
if o(l,n[74],n[445])or o(e,n[74],n[109])then
l[n[5]]=nil
end
end
end
for l,e in u(o(X(e),n[111]))do
e[n[5]]=nil
end
end
end))i(n[446],n[447],h(function(e)for l,e in u(o(e[n[136]],n[111]))do
if e[n[6]]==n[236]or e[n[6]]==n[238]then
e[n[5]]=nil
end
end
end))i(n[448],n[449],h(function(e)for l,e in u(o(e[n[136]],n[111]))do
if(o(e,n[74],n[450])or o(e,n[74],n[451]))or o(e,n[74],n[452])then
e[n[5]]=nil
end
end
end))i(n[453],n[454],h(function(e)for l,e in u(o(e[n[136]][n[235]],n[111]))do
if o(e,n[74],n[455])then
e[n[5]]=nil
end
end
end))i(n[456],n[457],function(o,o)e(n[83]){[n[5]]=q,[n[6]]=n[458],[n[89]]=true,[n[402]]=true,[n[21]]=w[n[50]](n[459]),[n[103]]=t[n[50]](2048,2,2048),[n[23]]=l[n[50]](0,0,0)}return Q(n[460])end)i(n[461],n[462],h(function(e)for l,e in u(o(e[n[136]],n[111]))do
if o(e,n[74],n[463])then
e[n[5]]=nil
end
end
end))i(n[464],n[465],h(function(e)if e[n[136]][n[267]]then
e[n[136]][n[267]][n[5]]=nil
s(r[n[117]](n[466],e[n[6]]),{f[n[57]]})return Q(r[n[117]](n[466],e[n[6]]))end
end))i(n[467],n[468],h(function(e)for l,e in u(o(e[n[136]],n[111]))do
if e[n[6]]==n[237]or e[n[6]]==n[239]then
e[n[5]]=nil
end
end
end))i(n[469],n[470],h(function(l)l[n[136]]=e(n[109]){[n[5]]=q,e(n[83]){[n[143]]=1,[n[93]]=false,[n[89]]=true,[n[6]]=n[234],[n[228]]=t[n[50]](1e4,1e4,1e4)},e(n[267]){[n[77]]=function(e)return x(function()e[n[234]]=o(e[n[5]],n[113],n[234])end)end}}V(r[n[117]](n[471],l[n[6]]),{f[n[57]]})return Q(r[n[117]](n[471],l[n[6]]))end))i(n[472],n[473],function(l,e)if Z(l,q)then
return s(n[474],{f[n[57]]},e)else
return s(n[475],{f[n[49]]},e)end
end)i(n[476],n[477],function(l,e)if P(l,q)then
return s(n[478],{f[n[57]]},e)else
return s(n[479],{f[n[49]]},e)end
end)i(n[480],n[481],function(e,l)Q(n[482])local l,e=x(function()return n1(e)()end)if not l then
return s(e,{f[n[49]]})else
return s(n[483],{f[n[57]]})end
end)i(n[484],n[485],function(e,e)for e,l in u(c(n[68],n[224]))do
s(r[n[117]](n[486],e,l[n[225]]),{f[n[55]]})end
end)i(n[487],n[488],function(e,l)local l={}local t={}if#e==0 then
m[n[121]](l,n[489])elseif o(e,n[128],1,2)==n[490]then
m[n[121]](l,B(n1(r[n[117]](n[491],o(e,n[128],3)))()))elseif e==n[492]then
for l,e in u(c(n[68],n[322]))do
s(e,{f[n[49]]})end
elseif e==n[493]then
for o,e in u(c(n[68],n[173]))do
m[n[121]](l,e)end
s(n[494],{f[n[67]]})elseif e==n[495]then
do
local o={}local e=1
for t,n in u(c(n[68],n[315]))do
o[e]=n
e=e+1
end
l=o
end
elseif e==n[496]then
s(r[n[117]](n[497],c(n[68],n[309])),{f[n[55]]})elseif e==n[498]then
s(r[n[117]](n[499],o1),{f[n[55]]})else
m[n[121]](l,e)end
for l,e in u(l)do
s(e,{b[n[50]](1,1,1)})end
end)i(n[6],n[500],function(e,e)return s(r[n[117]](n[501],o1),{f[n[55]]})end)i(n[502],n[503],function(e,t)local o=o(q,n[113],n[458])o[n[23]]=l[n[50]](I(e),1,I(e))return z(n[504],{f[n[57]]},p)end)i(n[505],n[506],function(e,e)for l,e in u(c(n[68],n[311]))do
s(r[n[117]](n[507],e[n[6]],e[n[313]]),{b[n[50]](d[n[107]](),d[n[107]](),d[n[107]]())})end
end)i(n[508],n[509],h(function(l)return x(function()c(n[69],n[510]..l[n[6]],false)local e=l[n[136]]while not c(n[68],n[510]..l[n[6]])do
a()e[n[267]][n[351]]=true
e[n[234]][n[357]]=t[n[50]](d[n[107]](-(10),10),-(5),d[n[107]](-(10),10))e[n[234]][n[511]]=t[n[50]](d[n[107]](-(5),5),d[n[107]](-(5),5),d[n[107]](-(5),5))end
end)end))i(n[512],n[513],h(function(e)return x(function()c(n[69],n[510]..e[n[6]],true)local e=e[n[136]]e[n[267]][n[351]]=false
e[n[234]][n[357]]=t[n[50]](0,0,0)e[n[234]][n[511]]=t[n[50]](0,0,0)end)end))i(n[514],n[515],function(l,e)return o(y(n[517]),n[516],v[n[518]],e)end)i(n[519],n[520],function(l,e)return o(y(n[517]),n[521],v[n[518]],v[n[522]],e)end)i(n[344],n[523],function(l,e)for e=1,#l do
if r[n[128]](l,e,e)==c(n[68],n[294])then
local t=F(r[n[128]](l,1,e-1))for c,t in u(t)do
if t[n[136]]then
if o(t[n[136]],n[113],n[267])then
t[n[136]][n[267]][n[524]]=I(r[n[128]](l,e+1))t[n[136]][n[267]][n[344]]=I(r[n[128]](l,e+1))end
end
end
end
end
return s(n[525],{f[n[57]]})end)i(n[6],n[526],function(t,d)local i=o(t,n[197],c(n[68],n[294]))for c,d in u(F(o(t,n[128],1,i-1),d))do
D(function()local c=d[n[136]][n[235]]local t=e(n[109]){[n[5]]=d[n[136]][n[235]],[n[6]]=o(t,n[128],i+1)}local o=o(c,n[91])o[n[5]]=t
o[n[143]]=0
o[n[6]]=n[235]o[n[93]]=false
local t=e(n[267]){[n[5]]=t,[n[524]]=0,[n[344]]=0}local e=e(n[76]){[n[5]]=o,[n[81]]=o,[n[82]]=c,[n[78]]=l[n[50]](0,0,0)}c[n[143]]=1
end)end
end)i(n[527],n[528],h(function(e)e[n[136]]=nil
end))i(n[529],n[530],function(e)local n={[n[531]]=n[532],[n[533]]=n[534],[n[535]]=n[536],[n[537]]=n[538],[n[539]]=n[540],[n[541]]=n[542],[n[543]]=n[544],[n[545]]=n[546],[n[547]]=n[548],[n[549]]=n[550],[n[551]]=n[552],[n[553]]=n[554],[n[555]]=n[556],[n[557]]=n[558],[n[559]]=n[560],[n[561]]=n[562],[n[563]]=n[564],[n[565]]=n[566],[n[567]]=n[568],[n[569]]=n[570],[n[571]]=n[572],[n[573]]=n[574],[n[575]]=n[576],[n[577]]=n[578],[n[579]]=n[580],[n[581]]=n[582],[n[583]]=n[584],[n[585]]=n[586],[n[587]]=n[588],[n[589]]=n[590],[n[591]]=n[592],[n[593]]=n[594],[n[595]]=n[596],[n[597]]=n[598],[n[599]]=n[600],[n[601]]=n[602],[n[603]]=n[604],[n[605]]=n[606],[n[607]]=n[608],[n[609]]=n[610],[n[611]]=n[612],[n[613]]=n[614],[n[615]]=n[616],[n[617]]=n[618],[n[619]]=n[620],[n[621]]=n[622],[n[623]]=n[624],[n[625]]=n[626],[n[627]]=n[628],[n[629]]=n[630],[n[631]]=n[632],[n[633]]=n[634],[n[635]]=n[636],[n[637]]=n[638],[n[639]]=n[640],[n[641]]=n[642],[n[643]]=n[644],[n[645]]=n[646],[n[647]]=n[648],[n[649]]=n[650],[n[651]]=n[652],[n[653]]=n[654],[n[655]]=n[656],[n[657]]=n[658],[n[659]]=n[660],[n[661]]=n[662],[n[663]]=n[664],[n[665]]=n[666],[n[667]]=n[668],[n[669]]=n[670],[n[671]]=n[672],[n[673]]=n[674],[n[675]]=n[676],[n[677]]=n[678],[n[679]]=n[680],[n[681]]=n[682],[n[683]]=n[684],[n[685]]=n[686],[n[687]]=n[688],[n[689]]=n[690],[n[691]]=n[692],[n[693]]=n[694],[n[695]]=n[696],[n[697]]=n[698],[n[699]]=n[700],[n[701]]=n[702],[n[703]]=n[704],[n[705]]=n[706],[n[707]]=n[708],[n[709]]=n[710],[n[711]]=n[712],[n[713]]=n[714],[n[715]]=n[716],[n[717]]=n[718],[n[719]]=n[720],[n[721]]=n[722],[n[723]]=n[724],[n[725]]=n[726],[n[727]]=n[728],[n[729]]=n[730],[n[731]]=n[732],[n[733]]=n[734],[n[735]]=n[736],[n[737]]=n[738],[n[739]]=n[740],[n[741]]=n[742],[n[743]]=n[744],[n[745]]=n[746],[n[747]]=n[748],[n[749]]=n[750],[n[751]]=n[752],[n[753]]=n[754],[n[755]]=n[756],[n[757]]=n[758],[n[759]]=n[760],[n[761]]=n[762],[n[763]]=n[764],[n[765]]=n[766],[n[767]]=n[768],[n[769]]=n[770],[n[771]]=n[772],[n[773]]=n[774],[n[775]]=n[776],[n[777]]=n[778],[n[779]]=n[780],[n[781]]=n[782],[n[783]]=n[784],[n[785]]=n[786],[n[787]]=n[788],[n[789]]=n[790],[n[791]]=n[792],[n[793]]=n[794],[n[795]]=n[796],[n[797]]=n[798],[n[799]]=n[800],[n[801]]=n[802],[n[803]]=n[804],[n[805]]=n[806],[n[807]]=n[808],[n[809]]=n[810],[n[811]]=n[812],[n[813]]=n[814],[n[815]]=n[816],[n[817]]=n[818],[n[819]]=n[820],[n[821]]=n[822],[n[823]]=n[824],[n[825]]=n[826],[n[827]]=n[828],[n[829]]=n[830],[n[831]]=n[832],[n[833]]=n[834],[n[835]]=n[836],[n[837]]=n[838],[n[839]]=n[840],[n[841]]=n[842],[n[843]]=n[844],[n[845]]=n[846],[n[847]]=n[848],[n[849]]=n[850],[n[851]]=n[852],[n[853]]=n[854],[n[855]]=n[856],[n[857]]=n[858],[n[859]]=n[860],[n[861]]=n[862],[n[863]]=n[864],[n[865]]=n[866],[n[867]]=n[868],[n[869]]=n[870],[n[871]]=n[872],[n[873]]=n[874],[n[875]]=n[876],[n[877]]=n[878],[n[879]]=n[880],[n[881]]=n[882],[n[883]]=n[884],[n[885]]=n[886],[n[887]]=n[888],[n[889]]=n[890],[n[891]]=n[892],[n[893]]=n[894],[n[895]]=n[896],[n[897]]=n[898],[n[899]]=n[900],[n[901]]=n[902],[n[903]]=n[904],[n[905]]=n[906],[n[907]]=n[908],[n[909]]=n[910],[n[911]]=n[912],[n[913]]=n[914],[n[915]]=n[916],[n[917]]=n[918],[n[919]]=n[920],[n[921]]=n[922],[n[923]]=n[924],[n[925]]=n[926],[n[927]]=n[928],[n[929]]=n[930],[n[931]]=n[932],[n[933]]=n[934],[n[935]]=n[936],[n[937]]=n[938],[n[939]]=n[940],[n[941]]=n[942],[n[943]]=n[944],[n[945]]=n[946],[n[947]]=n[948],[n[949]]=n[950],[n[951]]=n[952],[n[953]]=n[954],[n[955]]=n[956],[n[957]]=n[958],[n[959]]=n[960],[n[961]]=n[962],[n[963]]=n[964],[n[965]]=n[966],[n[967]]=n[968],[n[969]]=n[970],[n[971]]=n[972],[n[973]]=n[974],[n[975]]=n[976],[n[977]]=n[978],[n[979]]=n[980],[n[981]]=n[982],[n[983]]=n[984],[n[985]]=n[986],[n[987]]=n[988],[n[989]]=n[990],[n[991]]=n[992],[n[993]]=n[994],[n[995]]=n[996],[n[997]]=n[998],[n[999]]=n[1e3],[n[1001]]=n[1002],[n[1003]]=n[1004],[n[1005]]=n[1006],[n[1007]]=n[1008],[n[1009]]=n[1010],[n[1011]]=n[1012],[n[1013]]=n[1014],[n[1015]]=n[1016],[n[1017]]=n[1018],[n[1019]]=n[1020],[n[1021]]=n[1022],[n[1023]]=n[1024],[n[1025]]=n[1026],[n[1027]]=n[1028],[n[1029]]=n[1030],[n[1031]]=n[1032],[n[1033]]=n[1034],[n[1035]]=n[1036],[n[1037]]=n[1038],[n[1039]]=n[1040],[n[1041]]=n[1042],[n[1043]]=n[1044],[n[1045]]=n[1046],[n[1047]]=n[1048],[n[1049]]=n[1050],[n[1051]]=n[1052],[n[1053]]=n[1054],[n[1055]]=n[1056],[n[1057]]=n[1058],[n[1059]]=n[1060],[n[1061]]=n[1062],[n[1063]]=n[1064],[n[1065]]=n[1066],[n[1067]]=n[1068],[n[1069]]=n[1070],[n[1071]]=n[1072],[n[1073]]=n[1074],[n[1075]]=n[1076],[n[1077]]=n[1078],[n[1079]]=n[1080],[n[1081]]=n[1082],[n[1083]]=n[1084],[n[1085]]=n[1086],[n[1087]]=n[1088],[n[1089]]=n[1090],[n[1091]]=n[1092],[n[1093]]=n[1094],[n[1095]]=n[1096],[n[1097]]=n[1098],[n[1099]]=n[1100],[n[1101]]=n[1102],[n[1103]]=n[1104],[n[1105]]=n[1106],[n[1107]]=n[1108],[n[1109]]=n[1110],[n[1111]]=n[1112],[n[1113]]=n[1114],[n[1115]]=n[1116],[n[1117]]=n[1118],[n[1119]]=n[1120],[n[1121]]=n[1122],[n[1123]]=n[1124],[n[1125]]=n[1126],[n[1127]]=n[1128],[n[1129]]=n[1130],[n[1131]]=n[1132],[n[1133]]=n[1134],[n[1135]]=n[1136],[n[1137]]=n[1138],[n[1139]]=n[1140],[n[1141]]=n[1142],[n[1143]]=n[1144],[n[1145]]=n[1146],[n[1147]]=n[1148],[n[1149]]=n[1150],[n[1151]]=n[1152],[n[1153]]=n[1154],[n[1155]]=n[1156],[n[1157]]=n[1158],[n[1159]]=n[1160],[n[1161]]=n[1162],[n[1163]]=n[1164],[n[1165]]=n[1166],[n[1167]]=n[1168],[n[1169]]=n[1170],[n[1171]]=n[1172],[n[1173]]=n[1174],[n[1175]]=n[1176],[n[1177]]=n[1178],[n[1179]]=n[1180],[n[1181]]=n[1182],[n[1183]]=n[1184],[n[1185]]=n[1186],[n[1187]]=n[1188],[n[1189]]=n[1190],[n[1191]]=n[1192],[n[1193]]=n[1194],[n[1195]]=n[1196],[n[1197]]=n[1198],[n[1199]]=n[1200],[n[1201]]=n[1202],[n[1203]]=n[1204],[n[1205]]=n[1206],[n[1207]]=n[1208],[n[1209]]=n[1210],[n[1211]]=n[1212],[n[1213]]=n[1214],[n[1215]]=n[1216],[n[1217]]=n[1218],[n[1219]]=n[1220],[n[1221]]=n[1222],[n[1223]]=n[1224],[n[1225]]=n[1226],[n[1227]]=n[1228],[n[1229]]=n[1230],[n[1231]]=n[1232],[n[1233]]=n[1234],[n[1235]]=n[1236],[n[1237]]=n[1238],[n[1239]]=n[1240],[n[1241]]=n[1242],[n[1243]]=n[1244],[n[1245]]=n[1246],[n[1247]]=n[1248],[n[1249]]=n[1250],[n[1251]]=n[1252],[n[1253]]=n[1254],[n[1255]]=n[1256],[n[1257]]=n[1258],[n[1259]]=n[1260],[n[1261]]=n[1262],[n[1263]]=n[1264],[n[1265]]=n[1266],[n[1267]]=n[1268],[n[1269]]=n[1270],[n[1271]]=n[1272],[n[1273]]=n[1274],[n[1275]]=n[1276],[n[1277]]=n[1278],[n[1279]]=n[1280],[n[1281]]=n[1282],[n[1283]]=n[1284],[n[1285]]=n[1286],[n[1287]]=n[1288],[n[1289]]=n[1290],[n[1291]]=n[1292],[n[1293]]=n[1294],[n[1295]]=n[1296],[n[1297]]=n[1298],[n[1299]]=n[1300],[n[1301]]=n[1302],[n[1303]]=n[1304],[n[1305]]=n[1306],[n[1307]]=n[1308],[n[1309]]=n[1310],[n[1311]]=n[1312],[n[1313]]=n[1314],[n[1315]]=n[1316],[n[1317]]=n[1318],[n[1319]]=n[1320],[n[1321]]=n[1322],[n[1323]]=n[1324],[n[1325]]=n[1326],[n[1327]]=n[1328],[n[1329]]=n[1330],[n[1331]]=n[1332],[n[1333]]=n[1334],[n[1335]]=n[1336],[n[1337]]=n[1338],[n[1339]]=n[1340],[n[1341]]=n[1342],[n[1343]]=n[1344],[n[1345]]=n[1346],[n[1347]]=n[1348],[n[1349]]=n[1350],[n[1351]]=n[1352],[n[1353]]=n[1354],[n[1355]]=n[1356],[n[1357]]=n[1358],[n[1359]]=n[1360],[n[1361]]=n[1362],[n[1363]]=n[1364],[n[1365]]=n[1366],[n[1367]]=n[1368],[n[1369]]=n[1370],[n[1371]]=n[1372],[n[1373]]=n[1374],[n[1375]]=n[1376],[n[1377]]=n[1378],[n[1379]]=n[1380],[n[1381]]=n[1382],[n[1383]]=n[1384],[n[1385]]=n[1386],[n[1387]]=n[1388],[n[1389]]=n[1390],[n[1391]]=n[1392],[n[1393]]=n[1394],[n[1395]]=n[1396],[n[1397]]=n[1398],[n[1399]]=n[1400],[n[1401]]=n[1402],[n[1403]]=n[1404],[n[1405]]=n[1406],[n[1407]]=n[1408],[n[1409]]=n[1410],[n[1411]]=n[1412],[n[1413]]=n[1414],[n[1415]]=n[1416],[n[1417]]=n[1418],[n[1419]]=n[1420],[n[1421]]=n[1422],[n[1423]]=n[1424],[n[1425]]=n[1426],[n[1427]]=n[1428],[n[1429]]=n[1430],[n[1431]]=n[1432],[n[1433]]=n[1434],[n[1435]]=n[1436],[n[1437]]=n[1438],[n[1439]]=n[1440],[n[1441]]=n[1442],[n[1443]]=n[1444],[n[1445]]=n[1446],[n[1447]]=n[1448],[n[1449]]=n[1450]}return Y(n[e])end)i(n[1451],n[1452],function()return Y(26356415)end)i(n[1453],n[1454],function(e,l)local l=o(q,n[113],n[458])l[n[103]]=t[n[50]](I(e),1,I(e))return z(n[1455],{f[n[57]]},p)end)i(n[1456],n[1457],function()return Y(264663367)end)i(n[1458],n[1459],function()return Y(264663166)end)i(n[1460],n[1461],function()return Y(66825616)end)i(n[1462],n[1463],function()return Y(264666556)end)i(n[1464],n[1465],function()return Y(55987937)end)i(n[1466],n[1467],function()return Y(29497998)end)i(n[1468],n[1469],function(n)return Y(n)end)i(n[1470],n[1471],function()return Y(92767799)end)i(n[1470],n[1471],function()return Y(92767799)end)i(n[1472],n[1473],function()return Y(90199618)end)i(n[1474],n[1475],function(o,o)e(n[83]){[n[5]]=q,[n[103]]=t[n[50]](3e3,1,3e3),[n[23]]=l[n[50]](0,0,0),[n[6]]=n[458],[n[21]]=w[n[50]](n[1476]),[n[87]]=n[167],[n[88]]=n[167],[n[1477]]=n[167],[n[1478]]=n[167],[n[1479]]=n[167],[n[1480]]=n[167],[n[89]]=true,[n[402]]=true}e(n[1481]){[n[5]]=q,[n[89]]=true,[n[402]]=true,[n[85]]=n[272],[n[103]]=t[n[50]](6,.4,6),[n[23]]=l[n[50]](0,.6,0),[n[21]]=w[n[50]](n[1482]),[n[87]]=n[167],[n[88]]=n[167],[n[1477]]=n[167],[n[1478]]=n[167],[n[1479]]=n[167],[n[1480]]=n[167]}z(n[1483],{f[n[57]]})return Q(n[1484])end)i(n[1485],n[1486],function()return Y(264665210)end)i(n[1487],n[1488],function()return Y(264664808)end)i(n[1489],n[1490],function()return Y(264666496)end)i(n[1491],n[1492],function()return Y(264663277)end)i(n[1493],n[1494],function()return Y(23881644)end)i(n[356],n[1495],h(function(e)for l,e in u(o(e[n[136]],n[111]))do
if o(e,n[74],n[267])then
e[n[356]]=true
z(r[n[117]](n[1496],e[n[6]]),{f[n[57]]})end
end
end))i(n[1497],n[1498],function(e,e)local e=c(n[68],n[308])if e==nil then
z(n[1499],{f[n[57]]})return
end
e[n[93]]=true
e[n[143]]=0
z(n[1500],{f[n[49]]})return Q(n[1500])end)i(n[1501],n[1502],function(e,e)local e=c(n[68],n[308])if e==nil or e[n[5]]==nil then
z(n[1499],{f[n[57]]})return
end
e[n[93]]=false
e[n[143]]=0
z(n[1503],{f[n[57]]})return Q(n[1504])end)i(n[1505],n[1506],function(d,d)e(n[109]){[n[5]]=q,e(n[83]){[n[77]]=function(l)return x(function()local e
function e(e)if c(n[68],n[316])then
local e=o(e[n[5]],n[113],n[267])if(e~=nil)then
e[n[344]]=0
end
end
end
return o(l[n[1507]],n[2],e)end)end,[n[89]]=true,[n[103]]=t[n[50]](50,1,50),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[1482]),[n[402]]=true,[n[23]]=l[n[50]](0,0,0)},e(n[83]){[n[77]]=function(e)return c(n[69],n[308],e)end,[n[103]]=t[n[50]](1,20,51),[n[89]]=true,[n[21]]=w[n[50]](n[1482]),[n[143]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[23]]=l[n[50]](-25,10,0)},e(n[83]){[n[103]]=t[n[50]](51,20,1),[n[89]]=true,[n[21]]=w[n[50]](n[1482]),[n[143]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[23]]=l[n[50]](0,10,25)},e(n[83]){[n[103]]=t[n[50]](1,20,51),[n[89]]=true,[n[21]]=w[n[50]](n[1482]),[n[143]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[23]]=l[n[50]](25,10,0)},e(n[83]){[n[103]]=t[n[50]](51,20,1),[n[89]]=true,[n[21]]=w[n[50]](n[1482]),[n[143]]=0,[n[87]]=n[167],[n[88]]=n[167],[n[23]]=l[n[50]](0,10,-25)},e(n[83]){[n[89]]=true,[n[103]]=t[n[50]](51,1,51),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[1482]),[n[402]]=true,[n[23]]=l[n[50]](0,20.5,0)}}s(n[1508],{f[n[57]]})return Q(n[1509])end)i(n[1510],n[1511],h(function(e)if e[n[136]]and e[n[136]][n[234]]then
e[n[136]][n[234]][n[89]]=true
return x(function()for o=1,360 do
e[n[136]][n[234]][n[23]]=e[n[136]][n[234]][n[23]]*l[n[98]](d[n[72]](o),d[n[72]](o),0)a(.01)end
e[n[136]][n[234]][n[89]]=false
end)end
end))i(n[1512],n[1513],function(c,o)e(n[109]){[n[5]]=q,e(n[83]){[n[6]]=n[1514],[n[89]]=true,[n[402]]=true,[n[21]]=w[n[50]](n[459]),[n[103]]=t[n[50]](50,1,50),[n[23]]=l[n[50]](0,1e3,0)},e(n[83]){[n[402]]=true,[n[89]]=true,[n[93]]=false,[n[143]]=1,[n[23]]=l[n[50]](0,1010,0)}}p[n[136]][n[234]][n[23]]=l[n[50]](0,1020,0)z(n[1515],{b[n[50]](d[n[107]](),d[n[107]](),d[n[107]]())},o)return Q(n[1515])end)i(n[1516],n[1517],function(e,l)if r[n[129]](e)==n[1518]then
c(n[69],n[292],true)z(n[1519],{f[n[57]]})return Q(n[1519])elseif r[n[129]](e)==n[1520]then
c(n[69],n[292],false)z(n[1521],{f[n[49]]})return Q(n[1521])else
return z(n[1522],{f[n[49]]})end
end)i(n[1523],n[1524],function(e,e)return s(r[n[117]](n[497],c(n[68],n[309])),{f[n[55]]})end)i(n[1525],n[1526],function(n,n)return Y1()end)i(n[1527],n[1528],function(t,d)local l=o(t,n[197],c(n[68],n[294]))for c,e in u(F(o(t,n[128],1,l-1),d))do
if o(l[2],n[129])==n[1529]then
e[n[1530]]=true
end
if o(l[2],n[129])==n[1531]then
e[n[1530]]=false
end
for o,l in u(o(y(n[1532]),n[111],o(t,n[128],l+1),d))do
e[n[1533]]=l[n[1533]]Q(r[n[117]](n[1534],e[n[6]]))end
end
end)i(n[1535],n[1536],function(e,l)local l=y(n[1532])for o,l in u(o(l,n[1537]))do
if r[n[128]](r[n[129]](l[n[6]]),1,#e)==r[n[129]](e)or e==n[7]then
l[n[5]]=nil
end
end
return z(n[1538],{f[n[57]]})end)i(n[1539],n[1540],function(l,o)local e=e(n[1541]){[n[5]]=y(n[1532]),[n[6]]=l,[n[1533]]=w[n[107]]()}return z(r[n[117]](n[1542],e[n[6]]),{f[n[57]]})end)i(n[516],n[1543],function(e,i)local c=o(e,n[197],c(n[68],n[294]))local t=F(o(e,n[128],1,c-1),i)local o=F(o(e,n[128],c+1),i)[1]local e=0
for c=-(180),180,360/#t do
e=e+1
D(function()if t[e]~=o then
t[e][n[136]][n[234]][n[23]]=(o[n[136]][n[234]][n[23]]*l[n[98]](0,d[n[72]](c),0))*l[n[50]](0,0,5+(#t*1.1))end
end)end
end)i(n[1544],n[1545],function(e,e)p[n[136]][n[234]][n[23]]=l[n[50]](0,20,0)return Q(n[1546])end)i(n[1547],n[1548],function(c,c)local c=e(n[109]){[n[5]]=q}local e=e(n[109]){e(n[83]){[n[77]]=function(e)return x(function()e[n[5]][n[1549]]=e
end)end,[n[6]]=n[84],[n[103]]=t[n[50]](4,20,4),[n[89]]=true,[n[402]]=true,[n[21]]=w[n[50]](n[1550])},e(n[83]){[n[77]]=function(e)return x(function()e[n[23]]=e[n[5]][n[84]][n[23]]*l[n[50]](0,13,0)end)end,[n[21]]=w[n[50]](n[1476]),[n[87]]=n[167],[n[88]]=n[167],[n[103]]=t[n[50]](13,13,13),[n[89]]=true,[n[141]]=n[142]}}x(function()a()for t=1,3e3 do
local e=o(e,n[250])o(e,n[1551],l[n[50]](d[n[107]](-(500),500),d[n[107]](-(5),10),d[n[107]](-(500),500)))e[n[5]]=c
end
end)return s(n[1552],{f[n[57]]})end)i(n[1553],n[1554],h(function(c)if o(c[n[136]],n[113],n[234])==nil then
return
end
local o=e(n[83]){[n[5]]=q,[n[103]]=t[n[50]](4,20,4),[n[89]]=true,[n[402]]=true,[n[21]]=w[n[50]](n[1550]),[n[23]]=c[n[136]][n[234]][n[23]]*l[n[50]](0,-(13),0)}local e=e(n[83]){[n[5]]=q,[n[21]]=w[n[50]](n[1476]),[n[87]]=n[167],[n[88]]=n[167],[n[103]]=t[n[50]](13,13,13),[n[89]]=true,[n[141]]=n[142],[n[23]]=o[n[23]]*l[n[50]](0,13,0)}c[n[136]][n[234]][n[23]]=c[n[136]][n[234]][n[23]]*l[n[50]](0,5,0)return x(function()for t=1,200 do
a()if o~=nil then
if e~=nil then
o[n[23]]=o[n[23]]*l[n[50]](0,.1,0)e[n[23]]=e[n[23]]*l[n[50]](0,.1,0)end
end
end
end)end))i(n[1555],n[1556],function(e,e)local e=o(q,n[113],n[458])e[n[103]]=t[n[50]](50,1,50)e[n[23]]=l[n[50]](0,0,0)return z(n[1557],{f[n[57]]},p)end)i(n[1558],n[1559],function(l,e)local d
function d(e)return r[n[117]](n[1560],T,e)end
for t=1,#l do
if r[n[128]](l,t,t)==c(n[68],n[294])then
local e=F(r[n[128]](l,1,t-1))for c,e in u(e)do
if e[n[136]]then
if o(e[n[136]],n[113],n[267])then
e[n[136]][n[267]][n[344]]=0
local o=F(r[n[128]](l,t+1))if#o==0 then
if r[n[129]](r[n[128]](l,t+1))==n[1561]then
e[n[1562]]=d(e[n[1563]])else
e[n[1562]]=d(r[n[128]](l,t+1))end
else
for o,l in u(o)do
e[n[1562]]=d(l[n[1563]])end
end
end
end
end
end
end
return s(n[1564],{f[n[57]]})end)i(n[1565],n[1566],function(d,i)local r=o(d,n[197],c(n[68],n[294]))for c,i in u(F(o(d,n[128],1,r-1),i))do
D(function()local c=i[n[136]][n[235]]local i=e(n[109]){[n[5]]=i[n[136]][n[235]],[n[6]]=n[7],e(n[267]){[n[524]]=0,[n[344]]=0}}local t=e(n[147]){[n[5]]=c,[n[103]]=j[n[50]](0,200,0,200),[n[148]]=t[n[50]](0,2,0),e(n[149]){[n[150]]=n[151],[n[152]]=n[153],[n[154]]=o(d,n[128],r+1),[n[155]]=.3,[n[157]]=w[n[50]](n[67])[n[164]],[n[158]]=0,[n[228]]=j[n[50]](.5,0,.5,0)}}local o=o(c,n[91])o[n[5]]=i
o[n[143]]=0
o[n[6]]=n[235]o[n[93]]=false
local e=e(n[76]){[n[5]]=o,[n[81]]=o,[n[82]]=c,[n[78]]=l[n[50]](0,0,0)}c[n[143]]=1
end)end
end)i(n[1567],n[1568],function()return e(n[170]){[n[5]]=q,[n[6]]=n[1569],[n[172]]=n[1570]}end)i(n[1571],n[1572],h(function(e)local l={73089166,73089204,73089190,58880579,60791062,73089239,18474459,36334760,58901534,16975388,58901405,58901575}if X(e)then
for t,l in b1(l)do
local l=o(y(n[1574]),n[1573],l)for t,o in u(o(l,n[111]))do
o[n[5]]=X(e)l[n[5]]=nil
end
end
return z(r[n[117]](n[1575],e[n[6]]),{f[n[57]]})end
end))i(n[1576],n[1577],h(function(l)if X(l)then
local o={1,3,4}for t=1,3 do
e(n[1578]){[n[5]]=X(l),[n[1579]]=o[t]}end
return s(r[n[117]](n[1580],l[n[6]]),{f[n[57]]})end
end))i(n[1581],n[1582],h(function(e)if e~=nil then
local l=e[n[125]]local o=d[n[134]](l/7)local t=d[n[134]](o/4)local c=d[n[134]](t/12)return s(r[n[117]](n[1583],e[n[6]],l,o,t,c),{f[n[57]]})end
end))i(n[1581],n[1582],h(function(e)if e~=nil then
local l=e[n[125]]local o=d[n[134]](l/7)local t=d[n[134]](o/4)local c=d[n[134]](t/12)return s(r[n[117]](n[1583],e[n[6]],l,o,t,c),{f[n[57]]})end
end))i(n[1584],n[1585],h(function(c)local i=p[n[136]][n[235]][n[23]]*l[n[50]](10,10,10)local u=false
local c=c[n[136]][n[234]]if c[n[89]]==true then
c[n[89]]=false
end
local f=e(n[208]){[n[5]]=c,[n[210]]=t[n[50]](d[n[211]],d[n[211]],d[n[211]]),[n[213]]=i[n[207]]}local r
function r(e)return d[n[199]](d[n[72]](e))end
local i
function i(e)return d[n[71]](d[n[72]](e))end
local c=e(n[209]){[n[5]]=c,[n[212]]=t[n[50]](d[n[211]],d[n[211]],d[n[211]])}for e=0,d[n[211]],2.5 do
if u==false then
f[n[213]]=o(p[n[136]][n[234]][n[23]],n[280],l[n[50]](t[n[50]](r(e)*4,1.5,i(e)*4)))[n[207]]c[n[214]]=l[n[98]](0,d[n[72]](e),0)end
a()end
end))i(n[1586],n[1587],h(function(e)local l=((e[n[136]]and o(e[n[136]],n[113],n[267]))and o(e[n[136]],n[113],n[267])[n[344]])or(n[1588])s(r[n[117]](n[1589],e[n[6]]),{f[n[57]]})s(e[n[6]],{f[n[56]]})s(r[n[117]](n[1590],e[n[1591]]),{f[n[56]]})s(r[n[117]](n[1592],e[n[125]]),{f[n[56]]})s(r[n[117]](n[1593],l),{f[n[56]]})return s(r[n[117]](n[1594],e[n[1563]]),{f[n[56]]})end))i(n[1595],n[1596],function(e,l)for l=1,#e do
if r[n[128]](e,l,l)==c(n[68],n[294])then
local t=F(r[n[128]](e,1,l-1))for c,t in u(t)do
if t[n[136]]then
if o(t[n[136]],n[113],n[267])then
t[n[136]][n[267]][n[1597]]=I(r[n[128]](e,l+1))end
end
end
end
end
return s(n[1598],{f[n[57]]})end)i(n[1599],n[1600],h(function(e)if e and e[n[136]]then
for l,e in u(o(e[n[136]],n[111]))do
if o(e,n[74],n[1601])then
e[n[143]]=1
if o(e,n[113],n[1602])then
e[n[1602]][n[143]]=1
end
elseif o(e,n[74],n[463])and o(e,n[113],n[1603])then
e[n[1603]][n[143]]=1
end
end
end
end))i(n[1604],n[1605],h(function(e)if e and e[n[136]]then
for l,e in u(o(e[n[136]],n[111]))do
if o(e,n[74],n[1601])then
e[n[143]]=0
if o(e,n[113],n[1602])then
e[n[1602]][n[143]]=0
end
elseif o(e,n[74],n[463])and o(e,n[113],n[1603])then
e[n[1603]][n[143]]=0
end
end
end
end))i(n[1606],n[1607],function(l,e)for t,e in u(o(q,n[111]))do
if e[n[6]]==n[1608]then
o(y(n[397]),n[397],e[n[235]],r[n[117]](n[1609],g,l),n[49])end
end
end)i(n[1610],n[1611],function(e,e)s(n[1612],{f[n[65]]})for e=#c(n[68],n[319]),#c(n[68],n[319])-49,-(1)do
if not c(n[68],n[319])[e]then
break
else
local e,l=c(n[68],n[319])[e][n[1613]],c(n[68],n[319])[e][n[1614]]s(r[n[117]](n[1609],B(e),l),{f[n[57]]})end
end
end)i(n[1615],n[1616],function(l,l)Q(n[1617])return e(n[109]){[n[5]]=q,[n[6]]=n[1608],e(n[83]){[n[89]]=true,[n[141]]=n[142],[n[93]]=false,[n[103]]=t[n[50]](1,1,1),[n[143]]=1,[n[21]]=w[n[50]](n[1482]),[n[87]]=0,[n[88]]=0},e(n[83]){[n[77]]=function(c)return x(function()while a()do
a(3)local e={n[1618],n[1619]}local t=d[n[107]](1,#e)local l=y(n[397])o(l,n[397],c,e[t],n[49])end
end)end,[n[6]]=n[235],[n[89]]=true,[n[93]]=false,[n[141]]=n[142],[n[103]]=t[n[50]](3,3,3),[n[143]]=.75,[n[21]]=w[n[50]](n[1620]),[n[144]]=n[1621],[n[146]]=1,[n[87]]=0,[n[88]]=0}}end)i(n[1622],n[1623],function(c,c)for l,e in u(o(q,n[111]))do
if o(E,n[1624],e)==nil then
if not o(e,n[74],n[1625])then
if not o(e,n[74],n[115])then
D(function()e[n[5]]=nil
end)end
end
end
end
local o=e(n[83]){[n[103]]=t[n[50]](3e3,1,3e3),[n[23]]=l[n[50]](0,0,0),[n[6]]=n[458],[n[21]]=w[n[50]](n[1476]),[n[87]]=n[167],[n[88]]=n[167],[n[1477]]=n[167],[n[1478]]=n[167],[n[1479]]=n[167],[n[1480]]=n[167],[n[89]]=true,[n[402]]=true,[n[5]]=q}local e=e(n[1481]){[n[89]]=true,[n[402]]=true,[n[85]]=n[272],[n[103]]=t[n[50]](6,.4,6),[n[23]]=l[n[50]](0,.6,0),[n[21]]=w[n[50]](n[1482]),[n[87]]=n[167],[n[88]]=n[167],[n[1477]]=n[167],[n[1478]]=n[167],[n[1479]]=n[167],[n[1480]]=n[167],[n[5]]=q}s(n[1626],{f[n[57]]})return Q(n[1627])end)i(n[1628],n[1629],function(o,l)return e(n[170]){[n[5]]=q,[n[6]]=n[1569],[n[172]]=n[1630]..(l[n[6]]..n[1631])}end)i(n[1632],n[1633],function(c,c)local c=y(n[216])c[n[1634]]=b[n[50]](100,100,100)c[n[1635]]=b[n[50]](0,0,0)c[n[1636]]=b[n[50]](1,1,1)c[n[162]]=1
c[n[1637]]=n[1638]c[n[1639]]=99999999
for l,e in u(o(y(n[1532]),n[111]))do
if o(e,n[74],n[1541])then
e[n[5]]=nil
end
end
for l,e in u(o(c,n[111]))do
if o(e,n[74],n[215])then
e[n[5]]=nil
end
end
local c=o(q,n[111])for l,e in u(c)do
if o(e,n[74],n[83])then
e[n[5]]=nil
end
end
for l,e in u(c)do
if o(e,n[74],n[1640])then
e[n[4]]=true
e[n[5]]=nil
end
end
for l,e in u(o(y(n[1641]),n[111]))do
if o(e,n[74],n[1640])then
e[n[4]]=true
e[n[5]]=nil
end
end
local n=e(n[83]){[n[5]]=q,[n[103]]=t[n[50]](2048,1,2048),[n[89]]=true,[n[402]]=true,[n[21]]=w[n[50]](n[1476]),[n[6]]=n[458],[n[23]]=l[n[50]](t[n[50]](0,0,0))}end)i(n[1642],n[1643],h(function(e)if e[n[136]]~=nil then
p[n[136]]=e[n[136]]local l=c(n[68],n[115])l[n[1644]]=e[n[136]][n[267]]l[n[1645]]=n[86]z(r[n[117]](n[1646],e[n[6]]),{f[n[57]]})return Q(r[n[117]](n[1647],e[n[6]]))end
end))i(n[1648],n[1649],h(function(n)return O(n)end))i(n[1650],n[1651],function(l,l)Q(n[1617])return e(n[109]){[n[5]]=q,[n[6]]=n[1608],e(n[83]){[n[89]]=true,[n[141]]=n[142],[n[93]]=false,[n[103]]=t[n[50]](1,1,1),[n[143]]=1,[n[21]]=w[n[50]](n[1482]),[n[87]]=0,[n[88]]=0},e(n[83]){[n[6]]=n[235],[n[89]]=true,[n[93]]=false,[n[141]]=n[142],[n[103]]=t[n[50]](3,3,3),[n[143]]=.75,[n[21]]=w[n[50]](n[1620]),[n[144]]=n[1621],[n[146]]=1,[n[87]]=0,[n[88]]=0,e(n[147]){[n[103]]=j[n[50]](3,0,3,0),[n[148]]=t[n[50]](0,2,0),e(n[149]){[n[150]]=n[151],[n[152]]=n[153],[n[154]]=r[n[117]](n[1652],p[n[6]]),[n[155]]=.3,[n[156]]=1,[n[157]]=b[n[50]](),[n[158]]=0,[n[103]]=j[n[50]](1,0,1,0)}}}}end)i(n[1653],n[1654],function(l,o)local e=e(n[170]){[n[5]]=q,[n[6]]=r[n[117]](n[1655],l)}return z(r[n[117]](n[1656],l),{f[n[57]]},o)end)i(n[1657],n[1658],h(function(c)local d=e(n[83]){[n[77]]=function(e)return x(function()while a()do
e[n[23]]=c[n[136]][n[235]][n[23]]*l[n[50]](0,3,4)end
end)end,[n[5]]=c[n[136]],[n[141]]=n[142],[n[103]]=t[n[50]](2,2,2),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[1482]),[n[89]]=true,[n[23]]=c[n[136]][n[235]][n[23]]*l[n[50]](0,8,0)}local n=e(n[83]){[n[77]]=function(e)return x(function()while a()do
e[n[23]]=c[n[136]][n[235]][n[23]]*l[n[50]](0,3,4)end
end)end,[n[5]]=c[n[136]],[n[141]]=n[142],[n[103]]=t[n[50]](4,4,4),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[1659]),[n[143]]=.7,[n[89]]=true,[n[23]]=c[n[136]][n[235]][n[23]]*l[n[50]](0,8,0),e(n[147]){[n[103]]=j[n[50]](3,0,3,0),[n[148]]=t[n[50]](0,2,0),e(n[149]){[n[150]]=n[151],[n[152]]=n[153],[n[154]]=n[1660],[n[155]]=.3,[n[156]]=1,[n[157]]=b[n[50]](),[n[158]]=0,[n[103]]=j[n[50]](1,0,1,0)}},e(n[266]){[n[77]]=function(e)return x(function()e[n[83]]=e[n[5]]end)end,[n[267]]=c[n[136]]and o(c[n[136]],n[113],n[267]),[n[164]]=w[n[50]](n[1659]),[n[143]]=0}}end))i(n[1661],n[1662],function(e,l)local e=S(e)local l=y(n[216])l[n[1636]]=b[n[50]](e[1],e[2],e[3])return z(n[1663],{f[n[57]]})end)i(n[1664],n[1665],function(e,l)local e=y(n[216])o(e,n[169])e[n[1636]]=b[n[50]](1,1,1)e[n[1634]]=b[n[50]](0,0,0)e[n[1635]]=b[n[50]](0,0,0)e[n[1666]]=b[n[50]](.69,.69,.69)e[n[162]]=.2
e[n[1667]]=0
e[n[1639]]=1e5
e[n[1668]]=b[n[50]](.74,.74,.74)e[n[1637]]=12
s(n[1669],{f[n[57]]},l)return Q(n[1669])end)i(n[1670],n[1671],function(e,e)for l,e in u(o(y(n[216]),n[111]))do
e[n[5]]=nil
end
local e=y(n[216])e[n[1637]]=n[1672]e[n[162]]=1
e[n[1634]]=b[n[50]](0,0,0)e[n[1635]]=b[n[50]](0,0,0)e[n[1666]]=b[n[50]](178,178,178)e[n[1636]]=b[n[50]](1,1,1)e[n[1667]]=0
e[n[1639]]=1e13
z(n[1673],{f[n[57]]})return Q(n[1673])end)i(n[1674],n[1675],function(e,e)local e=y(n[216])e[n[1637]]=n[1672]z(n[1676],{f[n[57]]})return Q(n[1676])end)i(n[1677],n[1678],function(l,o)local e=e(n[170]){[n[5]]=y(n[216]),[n[6]]=n[1679],[n[172]]=r[n[117]](n[1609],g,l)}a(1)e[n[5]]=nil
return Q(r[n[117]](n[1680],l))end)i(n[1681],n[1682],function(l,e)local e=y(n[216])if r[n[129]](l)==n[1518]then
e[n[1667]]=0
e[n[1639]]=100
z(n[1683],{f[n[57]]})return Q(n[1683])elseif(r[n[129]](l)==n[1520])then
e[n[1667]]=0
e[n[1639]]=9e9
z(n[1684],{f[n[57]]})return Q(n[1684])else
return z(n[1685],{f[n[49]]})end
end)i(n[1686],n[1687],function(e,e)local e=y(n[216])e[n[1637]]=n[1688]z(n[1689],{f[n[57]]})return Q(n[1689])end)i(n[1690],n[1691],function(l,e)local e=y(n[216])e[n[1637]]=l
z(r[n[117]](n[1692],e[n[1637]]),{f[n[57]]})return Q(n[1690])end)i(n[1693],n[1694],h(function(l)local e=e(n[1695]){[n[77]]=function(e)return o(e[n[1696]],n[2],function(e)if o(e,n[138],l[n[136]])==false then
e[n[89]]=false
return o(e,n[175])end
end)end,[n[5]]=q,[n[1697]]=100,[n[1698]]=1e6,[n[228]]=((l[n[136]]and o(l[n[136]],n[113],n[234]))and o(l[n[136]],n[113],n[234])[n[228]])or t[n[50]](0,0,0)}s(r[n[117]](n[1699],l[n[6]]),{f[n[49]]})return Q(r[n[117]](n[1699],l[n[6]]))end))i(n[1700],n[1701],function(e,l)local t={}local l={}local l=n[1702]local c=n[1703]if#e==0 then
m[n[121]](t,n[1704])elseif e==n[28]then
s(n[1705],{f[n[57]]})for o,e in u(o(y(n[1706]),n[111]))do
s(r[n[117]](l,e[n[6]],e[n[1591]]),{f[n[56]]})end
elseif e==n[1707]then
s(n[1708],{f[n[57]]})for o,e in u(o(y(n[216]),n[111]))do
s(r[n[117]](l,e[n[6]],e[n[1591]]),{f[n[56]]})end
elseif e==n[1709]then
s(n[1710],{f[n[57]]})for o,e in u(o(y(n[1711]),n[111]))do
s(r[n[117]](l,e[n[6]],e[n[1591]]),{f[n[56]]})end
elseif e==n[1712]then
s(n[1713],{f[n[57]]})for l,e in u(o(E,n[119]))do
local l=((e[n[136]]and o(e[n[136]],n[113],n[267]))and o(e[n[136]],n[113],n[267])[n[344]])or(n[1588])s(r[n[117]](c,e[n[6]],e[n[1591]],e[n[125]],l,e[n[1563]]),{f[n[56]]})end
else
s(n[1714],{f[n[56]]})end
for l,e in u(t)do
s(e,{b[n[50]](1,1,1)})end
end)i(n[1715],n[1716],function(t,e)local l
function l(e)for l,e in u(e)do
if o(e,n[74],n[255])then
if t==n[1717]then
e[n[259]]=0
e[n[258]]=0
e[n[256]]=n[7]elseif t==n[1718]then
s(r[n[117]](n[1719],e[n[256]],o(e,n[1720])),{f[n[57]]})elseif t==n[1721]then
if e[n[5]][n[6]]~=n[235]then
s(r[n[117]](n[1719],e[n[256]],o(e,n[1720])),{f[n[57]]})end
elseif t==n[1722]then
if e[n[5]][n[6]]~=n[235]then
s(r[n[117]](n[1723],e[n[256]]),{f[n[57]]})end
else
s(r[n[117]](n[1723],e[n[256]]),{f[n[57]]})end
end
end
end
l(U(q))l(U(o(v,n[198],n[1724])))l(U(o(v,n[198],n[1641])))return l(U(o(v,n[198],n[216])))end)i(n[1725],n[1726],function(e,l)if r[n[129]](e)==n[1518]then
c(n[69],n[318],true)return z(n[1727],{f[n[57]]})elseif(r[n[129]](e)==n[1520])then
c(n[69],n[318],false)return z(n[1728],{f[n[49]]})else
return z(n[1729],{f[n[49]]})end
end)i(n[1730],n[1731],h(function(l)if((l and l[n[136]])and o(l[n[136]],n[113],n[234]))and o(l[n[136]],n[113],n[267])then
local c
local i
while 5555<=not d[n[1732]](c)do
c=d[n[107]](-(99999),99999)end
while 5555<=not d[n[1732]](i)do
i=d[n[107]](-(99999),99999)end
l[n[136]][n[267]][n[356]]=true
l[n[136]][n[234]][n[357]]=t[n[50]](0,0,0)Q(r[n[117]](n[1733],l[n[6]]))local e=e(n[1734]){[n[5]]=l[n[136]][n[234]],[n[6]]=n[1735],[n[1736]]=t[n[50]](c*4,9999*5,i*4)}return o(y(n[1738]),n[1737],e,.1)end
end))i(n[1739],n[1740],function(i,i)local w=o(p,n[131])while not w~=nil do
a()end
local q=p
local s=p[n[136]][n[234]]local u=false
local i=true
local i={[n[1741]]=0,[n[1607]]=0,[n[1742]]=0,[n[1743]]=0}local f={[n[1741]]=0,[n[1607]]=0,[n[1742]]=0,[n[1743]]=0}local h=50
local r=0
local z
function z()local x=e(n[209]){[n[5]]=s,[n[1744]]=9e4,[n[212]]=t[n[50]](9e9,9e9,9e9),[n[214]]=s[n[23]]}local o=e(n[1745]){[n[5]]=s,[n[1746]]=t[n[50]](0,0,0),[n[210]]=t[n[50]](9e9,9e9,9e9)}while u do
local e=c(n[68],n[115])[n[1747]]p[n[136]][n[267]][n[351]]=true
if i[n[1742]]+i[n[1743]]~=0 or i[n[1741]]+i[n[1607]]~=0 then
r=(r+.5)+(r/h)if h<r then
r=h
end
elseif not(i[n[1742]]+i[n[1743]]~=0 or i[n[1741]]+i[n[1607]]~=0)and r~=0 then
r=r-1
if r<0 then
r=0
end
end
if(i[n[1742]]+i[n[1743]])~=0 or(i[n[1741]]+i[n[1607]])~=0 then
o[n[1746]]=((e[n[101]]*(i[n[1741]]+i[n[1607]]))+((e*l[n[50]](i[n[1742]]+i[n[1743]],(i[n[1741]]+i[n[1607]])*.2,0)[n[207]])-e[n[207]]))*r
f={[n[1741]]=i[n[1741]],[n[1607]]=i[n[1607]],[n[1742]]=i[n[1742]],[n[1743]]=i[n[1743]]}elseif((i[n[1742]]+i[n[1743]])==0 and(i[n[1741]]+i[n[1607]])==0)and r~=0 then
o[n[1746]]=((e[n[101]]*(f[n[1741]]+f[n[1607]]))+((e*l[n[50]](f[n[1742]]+f[n[1743]],(f[n[1741]]+f[n[1607]])*.2,0)[n[207]])-e[n[207]]))*r
else
o[n[1746]]=t[n[50]](0,0,0)end
x[n[214]]=e*l[n[98]](-(d[n[72]]((((i[n[1741]]+i[n[1607]])*50)*r)/h)),0,0)a()if x[n[5]]==nil then
u=false
end
end
i={[n[1741]]=0,[n[1607]]=0,[n[1742]]=0,[n[1743]]=0}f={[n[1741]]=0,[n[1607]]=0,[n[1742]]=0,[n[1743]]=0}r=0
x[n[5]]=nil
o[n[5]]=nil
q[n[136]][n[267]][n[351]]=false
end
local l=o(w[n[1748]],n[2],function(e)if o(e,n[129])==n[1749]then
if u then
u=false
else
u=true
return z()end
elseif o(e,n[129])==n[1750]then
i[n[1741]]=1
elseif o(e,n[129])==n[1751]then
i[n[1607]]=-(1)elseif o(e,n[129])==n[1752]then
i[n[1742]]=-(1)elseif o(e,n[129])==n[1753]then
i[n[1743]]=1
end
end)local e=o(w[n[1754]],n[2],function(e)if o(e,n[129])==n[1750]then
i[n[1741]]=0
elseif o(e,n[129])==n[1751]then
i[n[1607]]=0
elseif o(e,n[129])==n[1752]then
i[n[1742]]=0
elseif o(e,n[129])==n[1753]then
i[n[1743]]=0
end
end)x(function()while s[n[5]]~=nil do
a()end
u=false
o(l,n[1755])return o(e,n[1755])end)return Q(n[1756])end)i(n[1757],n[1758],h(function(l)if l[n[136]]then
e(n[1757]){[n[5]]=l[n[136]]}V(r[n[117]](n[1759],l[n[6]]),{f[n[57]]})return Q(r[n[117]](n[1759],l[n[6]]))end
end))i(n[1760],n[1761],function(l,o)return e(n[170]){[n[5]]=q,[n[6]]=n[1569],[n[172]]=l}end)i(n[1762],n[1763],h(function(e)if e[n[136]]then
for t,l in u(o(e[n[136]],n[111]))do
if o(l,n[74],n[1757])then
l[n[5]]=nil
V(r[n[117]](n[1764],e[n[6]]),{f[n[57]]})Q(r[n[117]](n[1764],e[n[6]]))end
end
end
end))i(n[1765],n[1766],function()if p[n[136]]~=nil then
p[n[136]][n[5]]=nil
end
p[n[136]]=nil
local e=c(n[68],n[115])e[n[1645]]=n[1767]e[n[1644]]=nil
end)i(n[1768],n[1769],h(function(e)if e[n[136]]then
for t,l in u(o(e[n[136]],n[111]))do
if o(l,n[74],n[1601])then
l[n[89]]=true
l[n[146]]=1
s(r[n[117]](n[1770],e[n[6]]),{f[n[57]]})end
end
end
end))i(n[1771],n[1772],h(function(e)if e[n[136]]then
for t,l in u(o(e[n[136]],n[111]))do
if o(l,n[74],n[1601])then
l[n[89]]=false
l[n[146]]=0
s(r[n[117]](n[1773],e[n[6]]),{f[n[57]]})end
end
end
end))i(n[1774],n[1775],function(e,l)for e in o(e,n[201],n[1776])do
local l=I(e)if l~=nil then
local e=o(y(n[1574]),n[1573],l)for t,e in u(o(e,n[111]))do
if o(e,n[74],n[463])or o(e,n[74],n[445])then
if p[n[136]]then
e[n[5]]=p[n[136]]z(r[n[117]](n[1777],p[n[6]],e[n[1778]],e[n[6]],B(l)),{f[n[57]]})end
end
end
end
end
end)i(n[1779],n[1780],h(function(e)if X(e)then
local l=o(y(n[1574]),n[1573],21001552)for t,o in u(o(l,n[111]))do
o[n[5]]=X(e)l[n[5]]=nil
end
return z(r[n[117]](n[1781],e[n[6]]),{f[n[57]]})end
end))i(n[1782],n[1783],h(function(e)if e[n[136]]~=nil then
for t,l in u(o(e[n[136]],n[111]))do
if o(l,n[74],n[267])then
l[n[344]]=d[n[211]]l[n[524]]=d[n[211]]s(r[n[117]](n[1784],e[n[6]]),{f[n[57]]})Q(r[n[117]](n[1784],e[n[6]]))end
end
end
end))i(n[1785],n[1786],h(function(l)if l[n[136]]~=nil then
for t,e in u(o(l[n[136]],n[111]))do
if o(e,n[74],n[83])then
e[n[146]]=1
elseif o(e,n[74],n[267])then
e[n[344]]=d[n[211]]e[n[524]]=d[n[211]]s(r[n[117]](n[1787],l[n[6]]),{f[n[57]]})Q(r[n[117]](n[1787],l[n[6]]))end
end
end
end))i(n[1788],n[1789],function(e,l)if o(e,n[129])==n[1518]or o(e,n[129])==n[1790]then
Q(n[1791])return c(n[69],n[324],true)elseif o(e,n[129])==n[1520]or o(e,n[129])==n[1792]then
Q(n[1793])return c(n[69],n[324],false)else
return a1(n[1729],{f[n[57]]})end
end)i(n[1794],n[1795],h(function(i)i[n[136]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])k(i[n[136]])local a=e(n[109]){[n[5]]=i[n[136]],[n[6]]=c(n[68],n[195])}local r=e(n[209]){[n[5]]=i[n[136]][n[234]]}local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=a,[n[85]]=3,[n[103]]=t[n[50]](.6,1,.6),[n[21]]=c(n[68],n[90]),[n[228]]=i[n[136]][n[235]][n[228]],[n[93]]=true}local r=e(n[97]){[n[5]]=f,[n[96]]=t[n[50]](1.1,2,1.1)}local r=e(n[76]){[n[5]]=i[n[136]][n[235]],[n[81]]=f,[n[82]]=i[n[136]][n[235]],[n[78]]=l[n[50]](0,-1,2.35)*l[n[98]](d[n[72]](90),0,0)}local r=e(n[83]){[n[6]]=n[380],[n[88]]=0,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](.6,.6,.6),[n[23]]=l[n[50]](f[n[228]]),[n[21]]=c(n[68],n[94]),[n[93]]=true,[n[5]]=a}local u=e(n[95]){[n[5]]=r,[n[261]]=n[235],[n[96]]=t[n[50]](.99,.99,.99)}local f=e(n[76]){[n[5]]=r,[n[81]]=f,[n[82]]=r,[n[78]]=l[n[50]](0,1,0)}local f=e(n[83]){[n[5]]=a,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](i[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local u=e(n[95]){[n[5]]=f,[n[261]]=n[373],[n[96]]=t[n[50]](.8,.8,.8)}local f=e(n[76]){[n[5]]=f,[n[81]]=i[n[136]][n[237]],[n[82]]=f,[n[78]]=l[n[50]](.75,1,-.6)}local c=e(n[83]){[n[5]]=a,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](i[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local t=e(n[95]){[n[5]]=c,[n[261]]=n[373],[n[96]]=t[n[50]](.8,.8,.8)}local e=e(n[76]){[n[5]]=c,[n[81]]=i[n[136]][n[239]],[n[82]]=c,[n[78]]=l[n[50]](-.75,1,-.6)}local e=i
r=e[n[136]]local c=r[n[234]][n[390]]local t=r[n[234]][n[389]]local e=r[n[234]]local a=e[n[391]]local f=e[n[392]]local i=e[n[394]]local e=r[n[1797]]if(e~=nil)or(e)then
e[n[4]]=true
end
o(t,n[1798],0)o(c,n[1798],0)o(a,n[1798],0)o(f,n[1798],0)o(i,n[1798],0)for e=1,10 do
t[n[78]]=t[n[78]]*l[n[98]](0,d[n[72]](-1),d[n[72]](-2))c[n[78]]=c[n[78]]*l[n[98]](0,d[n[72]](1),d[n[72]](2))end
end))i(n[1799],n[1800],function()return e(n[170]){[n[5]]=q,[n[6]]=n[1569],[n[172]]=n[1801]}end)i(n[1802],n[1803],function(e,e)x(function()a()for e=1,500 do
h1(t[n[50]](d[n[107]](-500,500),d[n[107]](-5,10),d[n[107]](-500,500)),4,3,7,q)end
end)return s(n[1804],{f[n[57]]})end)i(n[1805],n[1806],h(function(e)return h1(e[n[136]][n[234]][n[228]]-t[n[50]](0,3,0),4,3,7,e[n[136]])end))i(n[1807],n[1808],G(2,function(i,r)local f=i[1]local i=i[2]return x(function()local r=i[n[136]][n[234]]local i=f[n[136]][n[234]]i[n[5]][n[267]][n[351]]=true
local f=r[n[389]]f[n[5]]=nil
local u=e(n[76]){[n[5]]=r,[n[81]]=r,[n[82]]=r[n[5]][n[236]],[n[78]]=l[n[50]](-1.5,0,0),[n[6]]=n[389]}f=r[n[390]]f[n[5]]=nil
local z=e(n[76]){[n[5]]=r,[n[81]]=r,[n[82]]=r[n[5]][n[238]],[n[78]]=l[n[50]](1.5,0,0),[n[6]]=n[390]}f=i[n[389]]f[n[5]]=nil
local h=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[236]],[n[78]]=l[n[50]](-1.5,0,0),[n[6]]=n[389]}f=i[n[390]]f[n[5]]=nil
local s=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[238]],[n[78]]=l[n[50]](1.5,0,0),[n[6]]=n[390]}f=i[n[391]]f[n[5]]=nil
local b=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[237]],[n[78]]=l[n[50]](-.5,-2,0),[n[6]]=n[391]}f=i[n[392]]f[n[5]]=nil
local Q=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[239]],[n[78]]=l[n[50]](.5,-2,0),[n[6]]=n[392]}local p=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=w[n[50]](n[1620]),[n[141]]=n[142],[n[5]]=r,[n[103]]=t[n[50]](1,1,1)}local q=e(n[95]){[n[261]]=n[373],[n[5]]=p,[n[96]]=t[n[50]](.4,.4,.4)}C(n[374],r,r,p,true,-(.2),-(1.3),-(.6),0,0,0)local f=o(p,n[91])f[n[5]]=r
C(n[374],r,r,f,true,.2,-(1.3),-(.6),0,0,0)local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[5]]=r,[n[85]]=n[86],[n[103]]=t[n[50]](.4,1.3,.4)}local y=e(n[97]){[n[5]]=f}local y=C(n[374],r,r,f,true,0,-(1),-(.52)+(-(f[n[103]][n[104]])/2),d[n[72]](-(80)),0,0)local p=o(p,n[91])p[n[21]]=w[n[50]](n[1620])p[n[106]][n[96]]=t[n[50]](.4,.62,.4)p[n[5]]=r
C(n[374],f,f,p,true,0,0+(f[n[103]][n[104]]/2),0,d[n[72]](-(10)),0,0)local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}q=e(n[95]){[n[261]]=n[373],[n[5]]=f,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],i,i,f,true,-(.5),.5,-(.6),0,0,0)local c=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}q=e(n[95]){[n[261]]=n[373],[n[5]]=c,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],i,i,c,true,.5,.5,-(.6),0,0,0)local c=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}q=e(n[95]){[n[261]]=n[373],[n[5]]=c,[n[96]]=t[n[50]](.2,.2,.2)}C(n[374],i,i,c,true,-(.5),.5,-(1.2),0,0,0)local c=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}q=e(n[95]){[n[261]]=n[373],[n[5]]=c,[n[96]]=t[n[50]](.2,.2,.2)}C(n[374],i,i,c,true,.5,.5,-(1.2),0,0,0)b[n[80]]=l[n[50]](0,-(1.5),-(.5))*l[n[98]](.9,-(.4),0)Q[n[80]]=l[n[50]](0,-(1.5),-(.5))*l[n[98]](.9,.4,0)h[n[80]]=l[n[50]](-(.5),-(1.3),-(.5))*l[n[98]](.7,-(.2),0)s[n[80]]=l[n[50]](.5,-(1.3),-(.5))*l[n[98]](.7,.2,0)u[n[80]]=l[n[50]](-(.5),.9,.5)*l[n[98]](-(1.2),.2,0)z[n[80]]=l[n[50]](.5,.9,.5)*l[n[98]](-(1.2),-(.2),0)if o(r,n[113],n[393])~=nil then
r[n[393]][n[5]]=nil
end
local e=C(n[393],r,r,i,true,0,-(1.8),-(2.47),d[n[72]](-(130)),0,172.79)local o=i[n[394]]o[n[78]]=l[n[50]](0,1.2,0)*l[n[98]](d[n[72]](-(235)),d[n[72]](180),0)return x(function()while a()do
for o=1,6 do
e[n[80]]=e[n[80]]*l[n[50]](0,.05,-(.05))h[n[80]]=(h[n[80]]*l[n[50]](0,0,0))*l[n[98]](.014,-(.004),0)s[n[80]]=(s[n[80]]*l[n[50]](0,0,0))*l[n[98]](.014,-(.004),0)u[n[80]]=(u[n[80]]*l[n[50]](0,0,0))*l[n[98]](-(.02),0,0)z[n[80]]=(z[n[80]]*l[n[50]](0,0,0))*l[n[98]](-(.02),0,0)a()end
for o=1,6 do
e[n[80]]=e[n[80]]*l[n[50]](0,-(.05),.05)h[n[80]]=(h[n[80]]*l[n[50]](0,0,0))*l[n[98]](-(.014),.004,0)s[n[80]]=(s[n[80]]*l[n[50]](0,0,0))*l[n[98]](-(.014),.004,0)u[n[80]]=(u[n[80]]*l[n[50]](0,0,0))*l[n[98]](.02,0,0)z[n[80]]=(z[n[80]]*l[n[50]](0,0,0))*l[n[98]](.02,0,0)a()end
end
end)end)end))i(n[1809],n[1810],h(function(o,u)return x(function()o[n[136]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])k(o[n[136]])local f=e(n[109]){[n[5]]=o[n[136]],[n[6]]=c(n[68],n[195])}local i=e(n[209]){[n[5]]=o[n[136]][n[234]]}local i=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=f,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[21]]=c(n[68],n[90]),[n[228]]=o[n[136]][n[235]][n[228]],[n[93]]=true}local r=e(n[97]){[n[5]]=i,[n[96]]=t[n[50]](.8,1,.8)}local r=e(n[76]){[n[5]]=o[n[136]][n[235]],[n[81]]=i,[n[82]]=o[n[136]][n[235]],[n[78]]=l[n[50]](0,-(1),2.5)*l[n[98]](d[n[72]](90),0,0)}local r=e(n[83]){[n[5]]=f,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](o[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local h=e(n[95]){[n[5]]=r,[n[261]]=n[373],[n[96]]=t[n[50]](.9,.9,.9)}local r=e(n[76]){[n[5]]=r,[n[81]]=o[n[136]][n[237]],[n[82]]=r,[n[78]]=l[n[50]](.855,.6,-(.6))}local c=e(n[83]){[n[5]]=f,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](o[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local t=e(n[95]){[n[5]]=c,[n[261]]=n[373],[n[96]]=t[n[50]](.9,.9,.9)}local e=e(n[76]){[n[5]]=c,[n[81]]=o[n[136]][n[239]],[n[82]]=c,[n[78]]=l[n[50]](-(.855),.6,-(.6))}local e=S(u)[2]or 1
e=e+1
w1(i,e)local o=l[n[50]]()while a(.05)do
if 1<=#B(e)and#B(e)<=9 then
o=l[n[98]](d[n[71]](M()*(e/(e/10)))/(e/(e/10)),0,0)end
if 10<=#B(e)and#B(e)<=99 then
o=l[n[98]](d[n[71]](M()*(e/(e/100)))/(e/(e/100)),0,0)end
if e==100 then
o=l[n[98]](d[n[71]](M()*(e/2))/(e/2),0,0)end
for e=1,e do
i[n[176]..e][n[76]][n[78]]=o
end
end
end)end))i(n[1811],n[1812],h(function(o)return x(function()local r=o[n[136]]local i=r[n[234]]r[n[235]][n[1602]][n[1796]]=c(n[68],n[326])local f=i[n[394]]local u=e(n[76]){[n[5]]=i,[n[6]]=n[1813],[n[81]]=i,[n[82]]=r[n[236]],[n[78]]=l[n[50]](-(1),1,-(1))*l[n[98]](d[n[72]](100),d[n[72]](10),d[n[72]](30))}local i=e(n[76]){[n[5]]=i,[n[6]]=n[1814],[n[81]]=i,[n[82]]=r[n[238]],[n[78]]=l[n[50]](1,.5,-(1))*l[n[98]](d[n[72]](80),d[n[72]](-(10)),d[n[72]](-(30)))}local h=5
while not o[n[136]]do
a()end
k(o[n[136]])local r=e(n[109]){[n[5]]=o[n[136]],[n[6]]=c(n[68],n[195])}local i=e(n[209]){[n[5]]=o[n[136]][n[234]]}local u=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=r,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[21]]=c(n[68],n[90]),[n[228]]=o[n[136]][n[234]][n[228]],[n[93]]=true}local i=e(n[97]){[n[5]]=u,[n[96]]=t[n[50]](.3,1,.3)}local i=e(n[76]){[n[5]]=o[n[136]][n[234]],[n[81]]=u,[n[82]]=o[n[136]][n[234]],[n[78]]=l[n[50]](0,-(.8),1)*l[n[98]](d[n[72]](90),0,0)}local i=e(n[83]){[n[5]]=r,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](1.5,1.5,1.5),[n[23]]=l[n[50]](o[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local s=e(n[95]){[n[5]]=i,[n[261]]=n[373],[n[96]]=t[n[50]](.3,.3,.3)}local i=e(n[76]){[n[5]]=i,[n[81]]=o[n[136]][n[237]],[n[82]]=i,[n[78]]=l[n[50]](.3,1,-(.6))}local c=e(n[83]){[n[5]]=r,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1.5,1.5,1.5),[n[23]]=l[n[50]](o[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local t=e(n[95]){[n[5]]=c,[n[261]]=n[373],[n[96]]=t[n[50]](.3,.3,.3)}local e=e(n[76]){[n[5]]=c,[n[81]]=o[n[136]][n[239]],[n[82]]=c,[n[78]]=l[n[50]](-(.3),1,-(.6))}s1(u,h)while a()do
for e=1,50 do
f[n[78]]=f[n[78]]*l[n[98]](d[n[72]](-(.2)),0,0)a(.0015)end
for e=1,50 do
f[n[78]]=f[n[78]]*l[n[98]](d[n[72]](.2),0,0)a(.0015)end
end
end)end))i(n[1815],n[1816],h(function(o)return x(function()local i=4
k(o[n[136]])local r=e(n[109]){[n[5]]=o[n[136]],[n[6]]=c(n[68],n[195])}local f=e(n[209]){[n[5]]=o[n[136]][n[234]]}local i=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=r,[n[85]]=3,[n[103]]=t[n[50]](1,i+.5,1),[n[21]]=c(n[68],n[90]),[n[228]]=o[n[136]][n[235]][n[228]],[n[93]]=true}local f=e(n[97]){[n[5]]=i,[n[96]]=t[n[50]](1.05,1,1.05)}local f=e(n[76]){[n[5]]=o[n[136]][n[235]],[n[81]]=i,[n[82]]=o[n[136]][n[235]],[n[78]]=l[n[50]](0,-(.6),1.8)*l[n[98]](d[n[72]](30),0,0)}local f=e(n[83]){[n[6]]=n[380],[n[88]]=0,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](i[n[228]]),[n[21]]=c(n[68],n[94]),[n[93]]=true,[n[5]]=r}local u=e(n[95]){[n[5]]=f,[n[261]]=n[235],[n[96]]=t[n[50]](1,.6,1)}local i=e(n[76]){[n[5]]=f,[n[81]]=i,[n[82]]=f,[n[78]]=l[n[50]](0,2.3,0)}local i=e(n[83]){[n[5]]=r,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](1.2,1.2,1.2),[n[23]]=l[n[50]](o[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local f=e(n[95]){[n[5]]=i,[n[261]]=n[373]}local i=e(n[76]){[n[5]]=i,[n[81]]=o[n[136]][n[234]],[n[82]]=i,[n[78]]=l[n[50]](-(.6),-(1),-(.8))}local t=e(n[83]){[n[5]]=r,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1.2,1.2,1.2),[n[23]]=l[n[50]](o[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local c=e(n[95]){[n[5]]=t,[n[261]]=n[373]}local t=e(n[76]){[n[5]]=t,[n[81]]=o[n[136]][n[234]],[n[82]]=t,[n[78]]=l[n[50]](.6,-(1),-(.8))}local c=o[n[136]]local t=c[n[234]]local o=e(n[76]){[n[5]]=t,[n[6]]=n[1813],[n[81]]=t,[n[82]]=c[n[236]],[n[78]]=l[n[50]](-(1.15),1,-(1))*l[n[98]](d[n[72]](100),d[n[72]](10),d[n[72]](20))}local e=e(n[76]){[n[5]]=t,[n[6]]=n[1814],[n[81]]=t,[n[82]]=c[n[238]],[n[78]]=l[n[50]](1.15,1,-(1))*l[n[98]](d[n[72]](100),d[n[72]](-(10)),d[n[72]](-(20)))}while a()do
o[n[78]]=l[n[50]](-(1.15),1,-(1))*l[n[98]](d[n[72]](100),d[n[72]](10),d[n[72]](20))e[n[78]]=l[n[50]](1.15,1,-(1))*l[n[98]](d[n[72]](100),d[n[72]](-(10)),d[n[72]](-(20)))a(.05)o[n[78]]=l[n[50]](-(1.15),.8,-(1))*l[n[98]](d[n[72]](95),d[n[72]](10),d[n[72]](20))e[n[78]]=l[n[50]](1.15,.8,-(1))*l[n[98]](d[n[72]](95),d[n[72]](-(10)),d[n[72]](-(20)))a(.05)o[n[78]]=l[n[50]](-(1.15),.6,-(1))*l[n[98]](d[n[72]](90),d[n[72]](10),d[n[72]](20))e[n[78]]=l[n[50]](1.15,.6,-(1))*l[n[98]](d[n[72]](90),d[n[72]](-(10)),d[n[72]](-(20)))a(.05)o[n[78]]=l[n[50]](-(1.15),.4,-(1))*l[n[98]](d[n[72]](85),d[n[72]](10),d[n[72]](20))e[n[78]]=l[n[50]](1.15,.4,-(1))*l[n[98]](d[n[72]](85),d[n[72]](-(10)),d[n[72]](-(20)))a(.05)o[n[78]]=l[n[50]](-(1.15),.2,-(1))*l[n[98]](d[n[72]](80),d[n[72]](10),d[n[72]](20))e[n[78]]=l[n[50]](1.15,.2,-(1))*l[n[98]](d[n[72]](80),d[n[72]](-(10)),d[n[72]](-(20)))a(.05)end
end)end))i(n[1817],n[1818],G(2,function(o,i)local i=o[1]local o=o[2]return x(function()local o=o[n[136]]i[n[136]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])o[n[235]][n[1602]][n[1796]]=c(n[68],n[326])i[n[136]][n[234]][n[89]]=true
k(i[n[136]])local f=e(n[109]){[n[5]]=i[n[136]],[n[6]]=c(n[68],n[195])}local r=e(n[209]){[n[5]]=i[n[136]][n[234]]}local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=f,[n[85]]=3,[n[103]]=t[n[50]](1,5,1),[n[21]]=c(n[68],n[90]),[n[228]]=i[n[136]][n[235]][n[228]],[n[93]]=true}local u=e(n[97]){[n[5]]=r,[n[96]]=t[n[50]](.6,1,.6)}local u=e(n[76]){[n[5]]=i[n[136]][n[235]],[n[81]]=r,[n[82]]=i[n[136]][n[235]],[n[78]]=l[n[50]](0,-(2),2.35)*l[n[98]](d[n[72]](70),0,0)}local u=e(n[83]){[n[6]]=n[380],[n[88]]=0,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](r[n[228]]),[n[21]]=c(n[68],n[94]),[n[93]]=true,[n[5]]=f}local h=e(n[95]){[n[5]]=u,[n[261]]=n[235],[n[96]]=t[n[50]](1.199,1.199,1.199)}local u=e(n[76]){[n[5]]=u,[n[81]]=r,[n[82]]=u,[n[78]]=l[n[50]](0,2.5,0)}local u=e(n[83]){[n[5]]=f,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](2,2,2),[n[23]]=l[n[50]](i[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local h=e(n[95]){[n[5]]=u,[n[261]]=n[373],[n[96]]=t[n[50]](.8,.8,.8)}local u=e(n[76]){[n[5]]=u,[n[81]]=i[n[136]][n[237]],[n[82]]=u,[n[78]]=l[n[50]](1.2,.5,-(.6))}local c=e(n[83]){[n[5]]=f,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](2,2,2),[n[23]]=l[n[50]](i[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local t=e(n[95]){[n[5]]=c,[n[261]]=n[373],[n[96]]=t[n[50]](.8,.8,.8)}local t=e(n[76]){[n[5]]=c,[n[81]]=i[n[136]][n[239]],[n[82]]=c,[n[78]]=l[n[50]](-(1.2),.5,-(.6))}local t=e(n[76]){[n[5]]=r,[n[81]]=r,[n[82]]=o[n[234]],[n[78]]=l[n[50]](0,2,1)*l[n[98]](d[n[72]](90),0,0)}local c=e(n[76]){[n[5]]=o,[n[81]]=o[n[236]],[n[82]]=o[n[234]],[n[78]]=l[n[50]](1.35,-(1),0)}local t=e(n[76]){[n[5]]=o,[n[81]]=o[n[238]],[n[82]]=o[n[234]],[n[78]]=l[n[50]](-(1.35),-(1),0)}local i=e(n[76]){[n[5]]=o,[n[81]]=o[n[237]],[n[82]]=o[n[234]],[n[78]]=l[n[50]](.3,1.8,.4)*l[n[98]](d[n[72]](25),0,d[n[72]](15))}local e=e(n[76]){[n[81]]=o[n[239]],[n[82]]=o[n[234]],[n[78]]=l[n[50]](-(.3),1.8,.4)*l[n[98]](d[n[72]](25),0,d[n[72]](-(15)))}while true do
for e=1,135/2 do
t[n[78]]=t[n[78]]*l[n[98]](0,0,d[n[72]](2))c[n[78]]=c[n[78]]*l[n[98]](0,0,d[n[72]](2))a(5e-4)end
for e=1,135/2 do
t[n[78]]=t[n[78]]*l[n[98]](0,0,d[n[72]](-(2)))c[n[78]]=c[n[78]]*l[n[98]](0,0,d[n[72]](-(2)))a(5e-4)end
end
end)end))i(n[1819],n[1820],G(2,function(i,r)local r=i[1]local i=i[2]return x(function()local r=r[n[136]][n[234]]local i=i[n[136]][n[234]]i[n[5]][n[267]][n[351]]=true
local f=r[n[389]]f[n[5]]=nil
local b=e(n[76]){[n[5]]=r,[n[81]]=r,[n[82]]=r[n[5]][n[236]],[n[78]]=l[n[50]](-(1.5),0,0),[n[6]]=n[389]}f=r[n[390]]f[n[5]]=nil
local p=e(n[76]){[n[5]]=r,[n[81]]=r,[n[82]]=r[n[5]][n[238]],[n[78]]=l[n[50]](1.5,0,0),[n[6]]=n[390]}f=i[n[389]]f[n[5]]=nil
local z=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[236]],[n[78]]=l[n[50]](-(1.5),0,0),[n[6]]=n[389]}f=i[n[390]]f[n[5]]=nil
local s=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[238]],[n[78]]=l[n[50]](1.5,0,0),[n[6]]=n[390]}f=i[n[391]]f[n[5]]=nil
local w=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[237]],[n[78]]=l[n[50]](-(.5),-(2),0),[n[6]]=n[391]}f=i[n[392]]f[n[5]]=nil
local q=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=i[n[5]][n[239]],[n[78]]=l[n[50]](.5,-(2),0),[n[6]]=n[392]}local u=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=r,[n[103]]=t[n[50]](1,1,1)}local h=e(n[95]){[n[261]]=n[373],[n[5]]=u,[n[96]]=t[n[50]](.7,.7,.7)}C(n[374],r,r,u,true,-(.35),-(1.3),-(.6),0,0,0)local f=o(u,n[91])f[n[5]]=r
C(n[374],r,r,f,true,.35,-(1.3),-(.6),0,0,0)local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[5]]=r,[n[85]]=n[86],[n[103]]=t[n[50]](.6,1.3,.6)}local Q=e(n[97]){[n[5]]=f}local Q=C(n[374],r,r,f,true,0,-(1),-(.52)+(-(f[n[103]][n[104]])/2),d[n[72]](-(90)),0,0)local u=o(u,n[91])u[n[21]]=c(n[68],n[94])u[n[106]][n[96]]=t[n[50]](.599,.62,.699)u[n[5]]=r
u[n[106]][n[261]]=n[235]C(n[374],f,f,u,true,0,0+(f[n[103]][n[104]]/2),0,0,0,0)local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}h=e(n[95]){[n[261]]=n[373],[n[5]]=f,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],i,i,f,true,-(.5),-(1),0,0,0,0)local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=false,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=i,[n[103]]=t[n[50]](1,1,1)}h=e(n[95]){[n[261]]=n[373],[n[5]]=f,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],i,i,f,true,.5,-(1),0,0,0,0)w[n[80]]=l[n[50]](0,-(1.5),-(.5))*l[n[98]](.9,-(.4),0)q[n[80]]=l[n[50]](0,-(1.5),-(.5))*l[n[98]](.9,.4,0)z[n[80]]=l[n[50]](-(.5),-(1.3),-(.5))*l[n[98]](.9,-(.4),0)s[n[80]]=l[n[50]](.5,-(1.3),-(.5))*l[n[98]](.9,.4,0)b[n[80]]=l[n[50]](-(.5),.7,0)*l[n[98]](-(.9),-(.4),0)p[n[80]]=l[n[50]](.5,.7,0)*l[n[98]](-(.9),.4,0)if o(r,n[113],n[393])~=nil then
r[n[393]][n[5]]=nil
end
local o=C(n[393],r,r,i,true,0,-(.9),-(1.3),d[n[72]](-(90)),0,0)local e=i[n[394]]e[n[78]]=l[n[50]](0,1.5,0)*l[n[98]](d[n[72]](-(180)),d[n[72]](180),d[n[72]](45))i[n[5]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])x(function()while a()do
for e=1,6*5 do
o[n[80]]=o[n[80]]*l[n[50]](0,-(.4)/5,0)a()end
for e=1,6*5 do
o[n[80]]=o[n[80]]*l[n[50]](0,.4/5,0)a()end
end
end)return x(function()while a()do
for o=1,90 do
e[n[78]]=e[n[78]]*l[n[98]](0,0,d[n[72]](-(1)))a(5e-4)end
for o=1,90 do
e[n[78]]=e[n[78]]*l[n[98]](0,0,d[n[72]](1))a(5e-4)end
end
end)end)end))i(n[1821],n[1822],G(2,function(i,r)local f=i[1]local r=i[2]local h=i[3]return x(function()while not((f[n[136]]and r[n[136]])and h[n[136]])do
a()end
local i=f[n[136]][n[234]]local f=r[n[136]][n[234]]local r=h[n[136]][n[234]]i[n[5]][n[267]][n[1597]]=6
f[n[5]][n[267]][n[351]]=true
r[n[5]][n[267]][n[351]]=true
D(function()local e=o(i,n[113],c(n[68],n[195]))e[n[5]]=nil
end)local w=e(n[109]){[n[5]]=i,[n[6]]=c(n[68],n[195])}local h=e(n[83]){[n[5]]=w,[n[6]]=n[1823],[n[21]]=c(n[68],n[90]),[n[85]]=n[86],[n[87]]=0,[n[88]]=0,[n[103]]=t[n[50]](.5,4,.5),[n[23]]=l[n[50]](i[n[5]][n[235]][n[228]])}local x=e(n[97]){[n[5]]=h}local s=e(n[76]){[n[5]]=h,[n[81]]=h,[n[82]]=i[n[5]][n[235]],[n[78]]=l[n[50]](0,-(1.5),2.5)*l[n[98]](d[n[72]](90),0,0)}local s=e(n[83]){[n[5]]=w,[n[6]]=n[1824],[n[21]]=h[n[21]],[n[87]]=0,[n[88]]=0,[n[85]]=n[86],[n[103]]=t[n[50]](1,1,1),[n[141]]=n[142]}local z=e(n[95]){[n[5]]=s,[n[261]]=n[373]}local z=e(n[76]){[n[5]]=s,[n[81]]=s,[n[82]]=h,[n[78]]=l[n[50]](.4,.8,.3)}local z=e(n[83]){[n[5]]=w,[n[6]]=n[1825],[n[21]]=h[n[21]],[n[87]]=0,[n[88]]=0,[n[85]]=n[86],[n[103]]=t[n[50]](1,1,1),[n[141]]=n[142]}local s=e(n[95]){[n[5]]=s,[n[261]]=n[373]}local s=e(n[76]){[n[5]]=z,[n[81]]=z,[n[82]]=h,[n[78]]=l[n[50]](-(.4),.8,.3)}x=e(n[83]){[n[5]]=w,[n[6]]=n[1826],[n[21]]=c(n[68],n[94]),[n[87]]=0,[n[88]]=0,[n[85]]=n[86],[n[103]]=t[n[50]](.6,.6,.6)}local z=e(n[95]){[n[5]]=x}local s=e(n[76]){[n[5]]=x,[n[81]]=x,[n[82]]=h,[n[78]]=l[n[50]](0,-(2),0)}if o(r,n[113],n[1827])then
local e=o(r,n[113],n[1827])e[n[5]]=nil
end
local s=e(n[109]){[n[5]]=r,[n[6]]=n[1827]}local h=e(n[83]){[n[5]]=s,[n[6]]=n[1828],[n[85]]=n[86],[n[87]]=0,[n[88]]=0,[n[21]]=h[n[21]],[n[103]]=t[n[50]](.4,1,.4)}local x=e(n[97]){[n[5]]=h}local x=e(n[76]){[n[5]]=h,[n[81]]=h,[n[82]]=r[n[5]][n[235]],[n[78]]=l[n[50]](0,-(1),2.5)*l[n[98]](d[n[72]](90),0,0)}local x=e(n[83]){[n[5]]=s,[n[6]]=n[1824],[n[21]]=h[n[21]],[n[87]]=0,[n[88]]=0,[n[85]]=n[86],[n[103]]=t[n[50]](.5,.5,.5),[n[141]]=n[142]}local w=e(n[95]){[n[5]]=x,[n[261]]=n[373],[n[96]]=t[n[50]](.5,.5,.5)}local w=e(n[76]){[n[5]]=x,[n[81]]=x,[n[82]]=h,[n[78]]=l[n[50]](.3,.4,0)}local x=e(n[83]){[n[5]]=s,[n[6]]=n[1825],[n[21]]=h[n[21]],[n[87]]=0,[n[88]]=0,[n[85]]=n[86],[n[103]]=t[n[50]](.5,.5,.5),[n[141]]=n[142]}local p=e(n[95]){[n[5]]=x,[n[261]]=n[373],[n[96]]=t[n[50]](.5,.5,.5)}local x=e(n[76]){[n[5]]=x,[n[81]]=x,[n[82]]=h,[n[78]]=l[n[50]](-(.3),.4,0)}local t=e(n[83]){[n[5]]=s,[n[6]]=n[1826],[n[21]]=c(n[68],n[94]),[n[87]]=0,[n[88]]=0,[n[85]]=n[86],[n[103]]=t[n[50]](.389,.389,.389)}z=e(n[95]){[n[5]]=t}local t=e(n[76]){[n[5]]=t,[n[81]]=t,[n[82]]=h,[n[78]]=l[n[50]](0,-(.5),0)}for l,e in u(o(i,n[111]))do
if e[n[1778]]==n[76]then
e[n[5]]=nil
end
end
for l,e in u(o(f,n[111]))do
if e[n[1778]]==n[76]then
e[n[5]]=nil
end
end
for l,e in u(o(r,n[111]))do
if e[n[1778]]==n[76]then
e[n[5]]=nil
end
end
local o=e(n[76]){[n[5]]=i,[n[81]]=i[n[5]][n[236]],[n[82]]=i,[n[78]]=l[n[50]](1.2,1,0)*l[n[98]](d[n[72]](-(75)),0,d[n[72]](35))}local o=e(n[76]){[n[5]]=i,[n[81]]=i[n[5]][n[238]],[n[82]]=i,[n[78]]=l[n[50]](-(1.2),1,0)*l[n[98]](d[n[72]](-(75)),0,d[n[72]](-(35)))}local o=e(n[76]){[n[5]]=i,[n[81]]=i[n[5]][n[237]],[n[82]]=i,[n[78]]=l[n[50]](.3,1.8,.5)*l[n[98]](d[n[72]](45),d[n[72]](35),0)}local o=e(n[76]){[n[5]]=i,[n[81]]=i[n[5]][n[239]],[n[82]]=i,[n[78]]=l[n[50]](-(.3),1.8,.5)*l[n[98]](d[n[72]](45),d[n[72]](-(35)),0)}local o=e(n[76]){[n[5]]=f,[n[81]]=f[n[5]][n[236]],[n[82]]=f,[n[78]]=l[n[50]](1.35,-(1),0)}local o=e(n[76]){[n[5]]=f,[n[81]]=f[n[5]][n[238]],[n[82]]=f,[n[78]]=l[n[50]](-(1.35),-(1),0)}local o=e(n[76]){[n[5]]=f,[n[81]]=f[n[5]][n[237]],[n[82]]=f,[n[78]]=l[n[50]](.3,1.8,.4)*l[n[98]](d[n[72]](25),0,d[n[72]](15))}local o=e(n[76]){[n[5]]=f,[n[81]]=f[n[5]][n[239]],[n[82]]=f,[n[78]]=l[n[50]](-(.3),1.8,.4)*l[n[98]](d[n[72]](25),0,d[n[72]](-(15)))}local o=e(n[76]){[n[5]]=r,[n[81]]=r[n[5]][n[236]],[n[82]]=r,[n[78]]=l[n[50]](1.5,.4,.3)*l[n[98]](d[n[72]](-(68)),d[n[72]](30),0)}local o=e(n[76]){[n[5]]=r,[n[81]]=r[n[5]][n[238]],[n[82]]=r,[n[78]]=l[n[50]](-(1.5),.4,.5)*l[n[98]](d[n[72]](-(68)),d[n[72]](-(30)),0)}local o=e(n[76]){[n[5]]=r,[n[81]]=r[n[5]][n[237]],[n[82]]=r,[n[78]]=l[n[50]](.3,1.8,.4)*l[n[98]](d[n[72]](25),0,d[n[72]](15))}local o=e(n[76]){[n[5]]=r,[n[81]]=r[n[5]][n[239]],[n[82]]=r,[n[78]]=l[n[50]](-(.3),1.8,.4)*l[n[98]](d[n[72]](25),0,d[n[72]](-(15)))}local o=e(n[76]){[n[5]]=i,[n[81]]=i,[n[82]]=f,[n[78]]=l[n[50]](0,-(1),-(4)),[n[80]]=l[n[98]](d[n[72]](90),0,0)}local e=e(n[76]){[n[5]]=f,[n[81]]=f,[n[82]]=r,[n[78]]=l[n[50]](0,3,-(1)),[n[80]]=l[n[98]](d[n[72]](40),d[n[72]](180),0)}while a()do
a(.05)for e=-(4),-(5),-(.1)do
o[n[78]]=l[n[50]](0,-(1),e)a(.005)end
w[n[78]]=l[n[50]](.3,0,0)x[n[78]]=l[n[50]](-(.3),0,0)a(.05)for e=-(5),-(4),.1 do
o[n[78]]=l[n[50]](0,-(1),e)a(.005)end
w[n[78]]=l[n[50]](.3,.4,0)x[n[78]]=l[n[50]](-(.3),.4,0)end
end)end))i(n[1829],n[1830],h(function(i)local l=i[n[136]][n[234]]l[n[5]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])k(i[n[136]])local a=e(n[109]){[n[5]]=i[n[136]],[n[6]]=c(n[68],n[195])}local f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=a,[n[103]]=t[n[50]](1,1,1)}local h=e(n[95]){[n[261]]=n[373],[n[5]]=f,[n[96]]=t[n[50]](.4,.4,.4)}C(n[374],l,l,f,true,-(.2),-(1.3),-(.6),0,0,0)local u=o(f,n[91])u[n[5]]=a
C(n[374],l,l,u,true,.2,-(1.3),-(.6),0,0,0)local i=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[21]]=c(n[68],n[90]),[n[5]]=a,[n[85]]=n[86],[n[103]]=t[n[50]](.4,1.3,.4)}local x=e(n[97]){[n[5]]=i}local s=C(n[374],l,l,i,true,0,-(1),-(.52)+(-(i[n[103]][n[104]])/2),d[n[72]](-(80)),0,0)local r=o(f,n[91])r[n[21]]=c(n[68],n[94])r[n[106]][n[96]]=t[n[50]](.4,.62,.4)r[n[5]]=a
C(n[374],i,i,r,true,0,0+(i[n[103]][n[104]]/2),0,d[n[72]](-(10)),0,0)f=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=a,[n[103]]=t[n[50]](1,1,1)}h=e(n[95]){[n[261]]=n[373],[n[5]]=f,[n[96]]=t[n[50]](.4,.4,.4)}C(n[374],l,l,f,true,-(.2),-(1.3),-(.6),0,0,0)u=o(f,n[91])u[n[5]]=a
C(n[374],l,l,u,true,.2,-(1.3),-(.6),0,0,0)i=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[21]]=c(n[68],n[90]),[n[5]]=a,[n[85]]=n[86],[n[103]]=t[n[50]](.4,1.3,.4)}x=e(n[97]){[n[5]]=i}s=C(n[374],l,l,i,true,0,-(1),-(.52)+(-(i[n[103]][n[104]])/2),d[n[72]](-(80)),0,0)r=o(f,n[91])r[n[21]]=c(n[68],n[94])r[n[106]][n[96]]=t[n[50]](.4,.62,.4)r[n[5]]=a
r[n[6]]=n[380]return C(n[374],i,i,r,true,0,0+(i[n[103]][n[104]]/2),0,d[n[72]](-(10)),0,0)end))i(n[1831],n[1832],function(l,l)local e=e(n[170]){[n[6]]=n[1833],[n[5]]=y(n[216])}a(1)e[n[5]]=nil
end)i(n[1834],n[1835],h(function(e)if o(e[n[136]][n[234]],n[113],n[1836])then
e[n[136]][n[234]][n[1836]][n[5]]=nil
end
if o(e[n[136]],n[113],n[450])then
e[n[136]][n[450]][n[5]]=nil
end
if o(e[n[136]],n[113],n[451])then
e[n[136]][n[451]][n[5]]=nil
end
if o(e[n[136]],n[113],n[1837])then
local e=e[n[136]][n[1837]]e[n[1838]]=c(n[68],n[90])e[n[1839]]=c(n[68],n[90])e[n[1840]]=c(n[68],n[90])e[n[1841]]=c(n[68],n[90])e[n[1842]]=c(n[68],n[90])e[n[1843]]=c(n[68],n[90])end
if o(e[n[136]],n[113],n[1844])then
e[n[136]][n[1844]][n[5]]=nil
end
e[n[136]][n[236]][n[21]]=c(n[68],n[90])e[n[136]][n[238]][n[21]]=c(n[68],n[90])e[n[136]][n[237]][n[21]]=c(n[68],n[90])e[n[136]][n[239]][n[21]]=c(n[68],n[90])e[n[136]][n[235]][n[21]]=c(n[68],n[90])e[n[136]][n[234]][n[21]]=c(n[68],n[90])e[n[136]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])end))i(n[1845],n[1846],h(function(o)o[n[136]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])k(o[n[136]])local i=e(n[109]){[n[5]]=o[n[136]],[n[6]]=c(n[68],n[195])}local r=e(n[209]){[n[5]]=o[n[136]][n[234]]}local r=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=i,[n[85]]=3,[n[103]]=t[n[50]](2,5,2),[n[21]]=c(n[68],n[90]),[n[228]]=o[n[136]][n[235]][n[228]],[n[93]]=true}local f=e(n[97]){[n[5]]=r,[n[96]]=t[n[50]](.6,1,.6)}local d=e(n[76]){[n[5]]=o[n[136]][n[235]],[n[81]]=r,[n[82]]=o[n[136]][n[235]],[n[78]]=l[n[50]](0,-(2.5),2.35)*l[n[98]](d[n[72]](90),0,0)}local d=e(n[83]){[n[6]]=n[380],[n[88]]=0,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](r[n[228]]),[n[21]]=c(n[68],n[94]),[n[93]]=true,[n[5]]=i}local f=e(n[95]){[n[5]]=d,[n[261]]=n[235],[n[96]]=t[n[50]](1.199,1.199,1.199)}local d=e(n[76]){[n[5]]=d,[n[81]]=r,[n[82]]=d,[n[78]]=l[n[50]](0,2.5,0)}local d=e(n[83]){[n[5]]=i,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](2,2,2),[n[23]]=l[n[50]](o[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local r=e(n[95]){[n[5]]=d,[n[261]]=n[373],[n[96]]=t[n[50]](.8,.8,.8)}local d=e(n[76]){[n[5]]=d,[n[81]]=o[n[136]][n[237]],[n[82]]=d,[n[78]]=l[n[50]](1.2,.5,-(.6))}local c=e(n[83]){[n[5]]=i,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](2,2,2),[n[23]]=l[n[50]](o[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local t=e(n[95]){[n[5]]=c,[n[261]]=n[373],[n[96]]=t[n[50]](.8,.8,.8)}local n=e(n[76]){[n[5]]=c,[n[81]]=o[n[136]][n[239]],[n[82]]=c,[n[78]]=l[n[50]](-(1.2),.5,-(.6))}end))i(n[1847],n[1848],h(function(d,o)local o=S(o)[2]or 1
local f=o*2
d[n[136]][n[235]][n[1602]][n[1796]]=c(n[68],n[326])local i=d[n[136]][n[234]]local d=e(n[109]){[n[5]]=i,[n[6]]=n[1849]}local a=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=d,[n[103]]=t[n[50]](o,o,o)}local r=e(n[95]){[n[261]]=n[373],[n[5]]=a,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],d,i,a,true,-(o)/2,o/f,-(o)/2,0,0,0)local u=e(n[83]){[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[21]]=c(n[68],n[90]),[n[141]]=n[142],[n[5]]=d,[n[103]]=t[n[50]](o,o,o)}r=e(n[95]){[n[261]]=n[373],[n[5]]=u,[n[96]]=t[n[50]](1.2,1.2,1.2)}C(n[374],d,i,u,true,o/2,o/f,-(o)/2,0,0,0)local a=e(n[83]){[n[21]]=c(n[68],n[94]),[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[141]]=n[142],[n[5]]=d,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](a[n[228]])}r=e(n[95]){[n[261]]=n[373],[n[5]]=a,[n[96]]=t[n[50]](o/10,o/10,o/10)}if o==1 then
r[n[96]]=t[n[50]](.2,.2,.2)end
C(n[374],d,i,a,true,-(o)/2,o/f,-(o)+-(o)/10,0,0,0)local l=e(n[83]){[n[21]]=c(n[68],n[94]),[n[87]]=0,[n[88]]=0,[n[93]]=true,[n[141]]=n[142],[n[5]]=d,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](u[n[228]])}r=e(n[95]){[n[261]]=n[373],[n[5]]=l,[n[96]]=t[n[50]](o/10,o/10,o/10)}if o==1 then
r[n[96]]=t[n[50]](.2,.2,.2)end
return C(n[374],d,i,l,true,o/2,o/f,-(o)+-(o)/10,0,0,0)end))i(n[1850],n[1851],h(function(i)local c=i[n[136]][n[234]]local r=c[n[389]]local u=c[n[390]]local a=c[n[391]]local f=c[n[392]]local h=c[n[394]]i[n[136]][n[1797]][n[4]]=true
for e=1,180 do
r[n[78]]=r[n[78]]*l[n[98]](0,0,d[n[72]](-(1)))u[n[78]]=u[n[78]]*l[n[98]](0,0,d[n[72]](1))end
for e=1,35 do
a[n[78]]=(a[n[78]]*l[n[50]](0,.01,0))*l[n[98]](d[n[72]](-(1.2)),0,0)f[n[78]]=(f[n[78]]*l[n[50]](0,.01,0))*l[n[98]](d[n[72]](-(1.2)),0,0)end
o(c[n[5]],n[1852],c[n[228]]+t[n[50]](0,5,0))c[n[89]]=true
i[n[136]][n[235]][n[89]]=true
local n=e(n[1853]){[n[5]]=c,[n[1854]]=.5,[n[1855]]=-(25),[n[103]]=.1}end))i(n[1856],n[1857],h(function(o)while true do
local l=e(n[83]){[n[5]]=o[n[136]][c(n[68],n[195])],[n[21]]=w[n[50]](n[65]),[n[103]]=t[n[50]](.5,.5,.5),[n[87]]=0,[n[88]]=0,[n[141]]=0,[n[23]]=l[n[50]](o[n[136]][c(n[68],n[195])][n[379]][n[228]]+t[n[50]](0,1,0))}local n=e(n[95]){[n[261]]=n[373],[n[5]]=l,[n[96]]=t[n[50]](.1,.1,.1)}a(.5)end
end))i(n[1858],n[1859],h(function(o,f)return x(function()k(o[n[136]])local r=e(n[109]){[n[5]]=o[n[136]],[n[6]]=c(n[68],n[195])}local i=e(n[209]){[n[5]]=o[n[136]][n[234]]}local i=e(n[83]){[n[87]]=0,[n[88]]=0,[n[6]]=n[379],[n[5]]=r,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[21]]=c(n[68],n[90]),[n[228]]=o[n[136]][n[235]][n[228]],[n[93]]=true}local u=e(n[97]){[n[5]]=i,[n[96]]=t[n[50]](1,1,1)}local d=e(n[76]){[n[5]]=o[n[136]][n[235]],[n[81]]=i,[n[82]]=o[n[136]][n[235]],[n[78]]=l[n[50]](0,-(1),2.5)*l[n[98]](d[n[72]](90),0,0)}local d=e(n[83]){[n[5]]=r,[n[6]]=n[381],[n[88]]=0,[n[87]]=0,[n[93]]=true,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](o[n[136]][n[237]][n[228]]),[n[21]]=c(n[68],n[90])}local u=e(n[95]){[n[5]]=d,[n[261]]=n[373],[n[96]]=t[n[50]](.9,.9,.9)}local d=e(n[76]){[n[5]]=d,[n[81]]=o[n[136]][n[237]],[n[82]]=d,[n[78]]=l[n[50]](.855,.6,-(.6))}local c=e(n[83]){[n[5]]=r,[n[6]]=n[382],[n[88]]=0,[n[93]]=true,[n[87]]=0,[n[85]]=3,[n[103]]=t[n[50]](1,1,1),[n[23]]=l[n[50]](o[n[136]][n[239]][n[228]]),[n[21]]=c(n[68],n[90])}local d=e(n[95]){[n[5]]=c,[n[261]]=n[373],[n[96]]=t[n[50]](.9,.9,.9)}local o=e(n[76]){[n[5]]=c,[n[81]]=o[n[136]][n[239]],[n[82]]=c,[n[78]]=l[n[50]](-(.855),.6,-(.6))}local d=S(f)[2]or 1
local o=d+50
x1(i,o)local o=i
while true do
for c=1,d do
o[n[176]..c][n[106]][n[96]]=t[n[50]](1,1,1)a(.015)o[n[176]..c+1][n[106]][n[96]]=t[n[50]](2,1,2)if o[n[176]..c+1][n[6]]==n[176]..d then
o[n[176]..c+1][n[106]][n[96]]=t[n[50]](2,2,2)end
a(.015)o[n[176]..c+2][n[106]][n[96]]=t[n[50]](3,1,3)if o[n[176]..c+2][n[6]]==n[176]..d then
o[n[176]..c+2][n[106]][n[96]]=t[n[50]](3,3,3)end
a(.015)o[n[176]..c+3][n[106]][n[96]]=t[n[50]](4,1,4)if o[n[176]..c+3][n[6]]==n[176]..d then
o[n[176]..c+3][n[106]][n[96]]=t[n[50]](4,4,4)end
a(.015)o[n[176]..c+4][n[106]][n[96]]=t[n[50]](3,1,3)if o[n[176]..c+4][n[6]]==n[176]..d then
local i=e(n[83]){[n[5]]=o[n[176]..d],[n[103]]=t[n[50]](2,2,2),[n[87]]=0,[n[88]]=0,[n[21]]=w[n[50]](n[65]),[n[141]]=n[142]}local e=e(n[95]){[n[5]]=i,[n[261]]=n[373]}i[n[23]]=l[n[50]](o[n[176]..d][n[228]])o[n[176]..c+4][n[106]][n[96]]=t[n[50]](3,3,3)end
a(.015)o[n[176]..c+5][n[106]][n[96]]=t[n[50]](2,1,2)if o[n[176]..c+6][n[6]]==n[176]..d then
o[n[176]..c+6][n[106]][n[96]]=t[n[50]](2,2,2)end
a(.015)o[n[176]..c+6][n[106]][n[96]]=t[n[50]](1,1,1)if o[n[176]..c+6][n[6]]==n[176]..d then
o[n[176]..c+6][n[106]][n[96]]=t[n[50]](1,1,1)end
a(.015)end
a(.2)end
end)end))i(n[1860],n[1861],h(function(e)e[n[136]][n[267]][n[344]]=e[n[136]][n[267]][n[524]]end))i(n[1862],n[1863],h(function(e)return W(e[n[136]],r[n[117]](n[1864],T,e[n[6]]),6,6)end))i(n[1865],n[1866],h(function(e)return W(e[n[136]],266756461)end))i(n[1867],n[1868],h(function(e)return W(e[n[136]],264666556)end))i(n[1869],n[1870],function(e,l)if r[n[129]](e)==n[1518]then
c(n[69],n[317],true)return z(n[1871],{f[n[57]]})elseif(r[n[129]](e)==n[1520])then
c(n[69],n[317],false)return z(n[1872],{f[n[49]]})else
return z(n[1522],{f[n[49]]})end
end)i(n[1873],n[1874],h(function(e)return W(e[n[136]],264666496)end))i(n[1875],n[1876],h(function(i)return x(function()local r=i[n[136]][n[234]][n[23]]local f=e(n[109]){[n[5]]=q,[n[6]]=n[379]}local u=e(n[83]){[n[6]]=n[83],[n[85]]=n[86],[n[87]]=n[167],[n[88]]=n[167],[n[146]]=0,[n[143]]=0,[n[89]]=true,[n[402]]=true,[n[93]]=true,[n[21]]=w[n[50]](n[1482]),[n[103]]=t[n[50]](2,1,4),e(n[403]){[n[96]]=t[n[50]](1,1,.1)}}m[n[121]](c(n[68],n[323]),{[n[1875]]=f,[n[1877]]=i})for t=1,360,360 do
for c=1,360,360/13 do
for e=1,180,8 do
local o=o(u,n[91])o[n[23]]=(r*l[n[98]](d[n[72]](t),d[n[72]](c),d[n[72]](e)))*l[n[50]](0,5,0)o[n[5]]=f
if d[n[134]](e/5)==e/5 then
a()end
end
end
end
i[n[136]][n[234]][n[23]]=r
while f[n[5]]~=nil do
a()D(function()if 6<(i[n[136]][n[234]][n[23]][n[207]]-r[n[207]])[n[1878]]then
i[n[136]][n[234]][n[23]]=r
end
end)end
end)end))i(n[1879],n[520],function(e,e)local e=o(q,n[113],n[379])return D(function()e[n[5]]=nil
end)end)i(n[1880],n[1881],h(function(i)return x(function()local r=i[n[136]][n[234]][n[23]]local f=e(n[109]){[n[5]]=q,[n[6]]=n[379]}local u=e(n[83]){[n[6]]=n[83],[n[85]]=n[86],[n[87]]=n[167],[n[88]]=n[167],[n[146]]=0,[n[143]]=0,[n[89]]=true,[n[402]]=true,[n[93]]=true,[n[21]]=w[n[50]](n[1482]),[n[103]]=t[n[50]](2,1,4),e(n[403]){[n[96]]=t[n[50]](1,1,.1)}}m[n[121]](c(n[68],n[323]),{[n[1875]]=f,[n[1877]]=i})for c=1,360,360 do
for t=1,360,360/13 do
for e=1,180,8 do
local o=o(u,n[91])o[n[23]]=(r*l[n[98]](d[n[72]](c),d[n[72]](t),d[n[72]](e)))*l[n[50]](0,5,0)o[n[5]]=f
if d[n[134]](e/5)==e/5 then
a()end
end
end
end
i[n[136]][n[234]][n[23]]=r
while f[n[5]]~=nil do
a()D(function()if 1<(i[n[136]][n[234]][n[23]][n[207]]-r[n[207]])[n[1878]]then
i[n[136]][n[234]][n[23]]=r
end
end)end
end)end))i(n[1882],n[1883],h(function(o)for l,e in u(c(n[68],n[323]))do
if e[n[1877]]~=nil and e[n[1877]]==o then
D(function()e[n[1875]][n[5]]=nil
end)m[n[422]](c(n[68],n[323]),l)end
end
end))i(n[1884],n[1885],function(e,l)if r[n[129]](e)==n[1518]then
c(n[69],n[307],true)return z(n[1886],{f[n[57]]})elseif(r[n[129]](e)==n[1520])then
c(n[69],n[307],false)return z(n[1887],{f[n[49]]})else
return z(n[1685],{f[n[49]]})end
end)i(n[1888],n[1889],h(function(e)o(e,n[1])s(r[n[117]](n[1890],e[n[6]]),{f[n[56]]})return Q(r[n[117]](n[1891],e[n[6]]))end))i(n[1892],n[1893],h(function(e)if e[n[136]]then
o(e[n[136]],n[175])s(r[n[117]](n[1894],e[n[6]]),{f[n[57]]})return Q(r[n[117]](n[1895],e[n[6]]))else
return s(r[n[117]](n[1896],e[n[6]]),{f[n[49]]})end
end))i(n[1897],n[1898],h(function(e)Z(y1,X(e))s(r[n[117]](n[1899],e[n[6]]),{f[n[57]]})return Q(r[n[117]](n[1900],e[n[6]]))end))i(n[1901],n[1902],h(function(l)local e=e(n[266]){[n[5]]=p[n[136]][n[234]],[n[83]]=p[n[136]][n[234]],[n[267]]=l[n[136]]and o(l[n[136]],n[113],n[267]),[n[164]]=w[n[50]](n[1659]),[n[143]]=0}return s(r[n[117]](n[1903],l[n[6]]),{f[n[56]]})end))i(n[1904],n[1905],function(e)if r[n[129]](e)==n[1518]then
c(n[69],n[1906],true)return z(n[1907],{f[n[57]]})elseif r[n[129]](e)==n[1520]then
c(n[69],n[1906],false)return z(n[1908],{f[n[57]]})else
return z(n[1685],{f[n[49]]})end
end)i(n[1909],n[1910],h(function(o)return e(n[83]){[n[77]]=function(e)return x(function()while a()do
e[n[23]]=o[n[136]][n[235]][n[23]]*l[n[50]](0,8,0)end
end)end,[n[5]]=o[n[136]],[n[6]]=n[7],[n[141]]=n[142],[n[103]]=t[n[50]](4,4,4),[n[87]]=n[167],[n[88]]=n[167],[n[21]]=w[n[50]](n[1659]),[n[143]]=.5,[n[89]]=true,[n[23]]=o[n[136]][n[235]][n[23]]*l[n[50]](0,8,0),e(n[159]){[n[160]]=15,[n[162]]=15,[n[164]]=b[n[50]](250/255,250/255,250/255),[n[166]]=true}}end))i(n[1911],n[1912],function(o,o)for o=1,9 do
local e=e(n[83]){[n[5]]=q,[n[89]]=true,[n[141]]=n[142],[n[144]]=n[1621],[n[87]]=n[167],[n[88]]=n[167],[n[103]]=t[n[50]](40,40,40),[n[21]]=w[n[50]](n[1913]),[n[23]]=(l[n[50]](0,1,0)*l[n[98]](0,d[n[72]](o*40),0))*l[n[50]](80/2,0,0)}s(n[1914],{f[n[57]]})end
end)i(n[1915],n[1916],h(function(e)if not e[n[136]]then
return
end
local e=u1(n[1917],e[n[136]],true,1)return o(e,n[1918])end))i(n[1919],n[1920],function(e,l)local t
function t(e,l)if not e[n[136]]then
return
end
local e=u1(l,e[n[136]],true,1)return o(e,n[1918])end
local o=F(S(e)[1])local l=f1(S(e)[2],true)if l==nil then
L(n[1921])end
local e=S(e)[3]if not(e==n[1922]or e==n[1923])then
e=n[1923]end
for e,n in u(o)do
t(n,l)end
end)i(n[1924],n[1925],function(e,l)local e=f1(e)for e,l in u(e)do
s(r[n[117]](n[486],e,l),{f[n[57]]})end
end)i(n[1926],n[1927],function(e,l)if r[n[129]](e)==n[1518]then
c(n[69],n[329],true)return z(n[1928],{f[n[57]]})elseif(r[n[129]](e)==n[1520])then
c(n[69],n[329],false)return z(n[1929],{f[n[49]]})else
return z(n[1685],{f[n[49]]})end
end)E=y(n[1641])local t=o(y(n[216])[n[1930]],n[2],function(e)D(function()if not o(e,n[74],n[170])then
return
end
if e[n[6]]==r[n[117]](n[1931],p[n[6]])then
z(r[n[117]](n[1932],e[n[154]]),{f[n[65]]})elseif e[n[6]]==n[1933]then
z(r[n[117]](n[1932],e[n[154]]),{f[n[65]]})elseif e[n[6]]==n[1934]then
local e=o(y(n[244]),n[243],e[n[172]])if e[n[6]]and not J[e[n[6]]]then
J[e[n[6]]]=e
end
elseif e[n[6]]==n[1935]then
z(e[n[172]],{f[n[65]]})elseif e[n[6]]==n[1936]then
local e=o(y(n[244]),n[243],e[n[172]])if e[n[6]]and not J[e[n[6]]]then
J[e[n[6]]]=e
end
elseif e[n[6]]==n[1679]then
z(e[n[172]],{f[n[65]]})end
end)end)p=E[n[1937]]g=p[n[6]]t1=l1()c(n[69],n[115],q[n[1938]])x(function()while true do
a()if c(n[68],n[329])==true then
D(function()if p[n[136]][n[234]][n[23]][n[1939]]<1 then
p[n[136]][n[234]][n[23]]=l[n[50]](0,50,0)end
end)end
x(function()F1()end)if q[n[1938]]~=nil and o(q[n[1938]],n[138],q)then
c(n[69],n[115],q[n[1938]])else
q[n[1938]]=e(n[115]){[n[77]]=function(e)c(n[69],n[115],e)end,[n[5]]=q,[n[1645]]=n[86]}end
for l,e in u(o(E,n[119]))do
for t,l in u(c(n[68],n[321]))do
if o(o(e[n[6]],n[129]),n[128],1,#l)==o(l,n[129])then
O(e)z(r[n[117]](n[1940],e[n[6]]),{f[n[67]]},p)Q(r[n[117]](n[1941],e[n[6]]))end
end
end
end
end)x(function()repeat
a()until p[n[136]]local l={}for t,e in u(o(p[n[136]],n[111]))do
if((o(e,n[74],n[1942])or o(e,n[74],n[463]))or o(e,n[74],n[450]))or o(e,n[74],n[451])then
m[n[121]](l,o(e,n[91]))end
end
end)local function l(e,l)if not l then
l={}end
e[n[6]]=n[7]o(e[n[3]],n[2],function(l)if l==n[6]then
x(function()repeat
e[n[6]]=n[7]a()until e[n[6]]==n[7]end)end
end)o(e[n[1930]],n[2],function(e)if not c(n[68],n[1906])then
return
end
if e==t1 then
return
end
for o,l in u(l)do
if l==e[n[6]]then
return
end
end
x(function()repeat
e[n[5]]=nil
a()until e[n[5]]==nil
end)end)end
x(function()local t=false
local c=false
local d=false
local i=false
while a()do
for r,e in u(o(p,n[111]))do
if o(e,n[74],n[112])and not t then
l(e,{n[1943]})t=true
elseif o(e,n[74],n[118])and not c then
l(e,{n[1944],n[1945],n[1946]})c=true
elseif o(e,n[74],n[1947])and not d then
l(e)d=true
elseif o(e,n[74],n[1948])and not i then
l(e)i=true
else
e[n[5]]=nil
end
end
if((t and c)and d)and i then
s(n[1949],{f[n[57]]})break
end
end
end)o(E[n[1930]],n[2],function(e)if not o(e,n[74],n[1877])then
return
end
o(e[n[1950]],n[2],function(l)m[n[121]](c(n[68],n[319]),{[n[1613]]=e,[n[1614]]=l})end)end)for l,e in u(o(E,n[119]))do
o(e[n[1950]],n[2],function(l)m[n[121]](c(n[68],n[319]),{[n[1613]]=e,[n[1614]]=l})end)end
o(E[n[1930]],n[2],function(e)x(function()if e[n[125]]<7 and c(n[68],n[317])then
O(e)s(r[n[117]](n[1951],e[n[6]]),{f[n[49]]})end
if c(n[68],n[318])then
e[n[1952]]=n[1953]end
end)end)if c(n[68],n[317])then
for l,e in u(o(E,n[119]))do
if e[n[125]]<7 then
O(e)s(r[n[117]](n[1951],e[n[6]]),{f[n[49]]})end
end
end
o(p[n[1930]],n[2],function(e)o(e[n[1930]],n[2],function(e)if((o(e,n[74],n[1614])or o(e,n[74],n[1954]))or o(e,n[74],n[1955]))or o(e,n[74],n[170])then
D(function()repeat
e[n[5]]=nil
a()until e[n[5]]==nil
end)end
end)end)o(p[n[1950]],n[2],A)for l,e in u(o(p,n[111]))do
o(e[n[1930]],n[2],function(e)if((o(e,n[74],n[1614])or o(e,n[74],n[1954]))or o(e,n[74],n[1640]))or o(e,n[74],n[170])then
D(function()repeat
e[n[5]]=nil
a()until e[n[5]]==nil
end)end
end)end
local l=function(n)Z(m1,X(n))end
for e,n in u(o(E,n[119]))do
l(n)end
o(E[n[1930]],n[2],function(e)x(function()if o(e,n[74],n[1877])then
repeat
a()until o(e,n[113],n[112])l(e)end
end)end)o(E[n[1956]],n[2],function(e)if o(e,n[74],n[1877])then
if c(n[68],n[307])then
H(r[n[117]](n[1957],e[n[6]]),{f[n[49]]})end
end
end)o(E[n[1930]],n[2],function(e)if o(e,n[74],n[1877])then
if c(n[68],n[307])then
H(r[n[117]](n[1958],e[n[6]]),{b[n[50]](d[n[107]](),d[n[107]](),d[n[107]]())})end
end
end)o(E[n[1930]],n[2],function(e)if o(e,n[74],n[1877])then
for t,l in u(c(n[68],n[321]))do
if o(o(e[n[6]],n[129]),n[128],1,#l)==o(l,n[129])then
O(e)end
end
end
end)for l,e in u(o(Q1,n[111]))do
if o(e,n[74],n[170])then
c(n[69],n[171],e[n[6]])s(c(n[68],n[171]),{f[n[65]]})d1=true
break
end
end
x(function()while a()do
if c(n[68],n[177])==nil then
local e=o(v,n[113],n[325],true)if e~=nil and o(e[n[5]],n[74],n[1959])then
c(n[69],n[177],o(e[n[5]],n[91]))z(n[1960],{f[n[57]]})break
end
if e1~=nil then
function P(e,l)local e=e1(e,nil)e[n[5]]=l
end
z(n[1961],{f[n[57]]})break
end
if c1~=nil then
function P(e,l)local e=c1(e,nil)e[n[5]]=l
end
z(n[1962],{f[n[57]]})break
end
end
end
end)x(function()while a()do
if c(n[68],n[168])==nil then
local e=o(v,n[113],n[325],true)if e~=nil and o(e[n[5]],n[74],n[1955])then
c(n[69],n[168],o(e[n[5]],n[91]))z(n[1963],{f[n[57]]})break
end
end
if r1~=nil then
function Z(e,l)local e=r1(e,nil)e[n[5]]=l
end
z(n[1964],{f[n[57]]})break
end
if i1~=nil then
function Z(e,l)local e=i1(e,nil)e[n[5]]=l
end
z(n[1965],{f[n[57]]})break
end
end
end)x(function()local t=50
local e=K[n[50]](n[170])local function l()return n[1966]..(r[n[301]](1)..(r[n[187]](n[288],t-9)..r[n[301]](2)))end
e[n[172]]=l()while a()do
if r[n[128]](e[n[172]],t,t)==r[n[301]](3)then
local o,t=r[n[197]](e[n[172]],r[n[301]](4),1,true)A(r[n[128]](e[n[172]],1,o-1))e[n[172]]=l()elseif e[n[172]]~=l()then
local t=n[7]for l=1,#e[n[172]]do
t=t..r[n[117]](n[1967],r[n[249]](o(e[n[172]],n[128],l,l)))end
e[n[172]]=l()L(n[1968]..t)end
end
end)