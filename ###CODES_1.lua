Godmode addresses:  - fld dword ptr [eax] and 009C9B2C - comiss xmm0,[ecx]

Armspin and Legspin: - comiss xmm2,xmm1

Noclip: - jmp dword ptr [eax*4+009D40BC]

Armswing: - xmm3,[esi+000000D4]

Paranoid: - al,[edx+000001E0]

Superjump: - movss xmm1,[eax+04]

StayDOwn:- cmp dword ptr [ecx+0000017C],00

Script exploit- movzx edx,byte ptr [eax]
other code-
