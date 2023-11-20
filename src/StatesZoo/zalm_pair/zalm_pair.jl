function cf(Ns, n)
    return sqrt((Ns.^n)./(Ns+1).^(n+1))
end

function cascaded_source_photonic(Ns, eAs, eBs, eD, Pd, VisF)
    c0 = cf(Ns, 0)
    c1 = cf(Ns, 1)
    c2 = cf(Ns, 2)
    
    v1 = [(1/4)*((-1)+Pd)^2*(4*c0^8*Pd^2+4*c1^8*((-1)+eAs)
    ^2*((-1)+eBs)^2*((-1)+eD)^2*(eD+Pd+(-2)*eD*Pd)^2+
    4*c0^6*Pd*(2*c2^2*(2+(-2)*eAs+eAs^2+(-2)*eBs+
    eBs^2)*((-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)
    +eAs+eBs)*((-2)*Pd+eD*((-1)+3*Pd)))+4*c0^2*c1^4*((
    -1)+eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))
    *(c1^2*((-2)+eAs+eBs)*((-1)*Pd+eD*((-1)+2*Pd))+
    c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*((
    -3)+5*Pd)))+c0^4*(8*c2^4*((-1)+eAs)^2*((-1)+eBs)
    ^2*((-1)+eD)^2*(4*eD*(1+(-2)*Pd)*Pd+2*Pd^2+eD^2*
    (1+(-6)*Pd+7*Pd^2))+4*c1^2*c2^2*((-1)+eAs)*((-1)+
    eBs)*((-2)+eAs+eBs)*((-1)+eD)*(2*eD*(3+(-7)*Pd)*Pd+
    4*Pd^2+eD^2*(1+(-8)*Pd+11*Pd^2))+c1^4*(4*(6+
    eAs^2+(-6)*eBs+eBs^2+eAs*((-6)+4*eBs))*Pd^2+(-4)*(6+
    eAs^2+(-6)*eBs+eBs^2+eAs*((-6)+4*eBs))*eD*Pd*((-1)+
    3*Pd)+eD^2*(4+eAs^2*(1+(-3)*Pd)^2+eBs^2*(1+(-3)*
    Pd)^2+(-32)*Pd+52*Pd^2+(-4)*eBs*(1+(-8)*Pd+13*Pd^2)
    +2*eAs*((-2)+eBs+16*Pd+(-10)*eBs*Pd+(-26)*Pd^2+17*
    eBs*Pd^2))))),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0]

    v2 = [0,(-1/4)*eBs*((-1)+Pd)^2*(4*
    c1^8*((-1)+eAs)^2*((-1)+eBs)*((-1)+eD)^2*(eD+Pd+(-2)
    *eD*Pd)^2+2*c0^6*Pd*(4*c2^2*((-1)+eBs)*((-1)+eD)
    *((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*((-1)+3*
    Pd)))+2*c0^2*c1^4*((-1)+eAs)*((-1)+eD)*((-2)*Pd+eD*
    ((-1)+3*Pd))*(c1^2*((-3)+eAs+2*eBs)*((-1)*Pd+eD*((
    -1)+2*Pd))+2*c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((
    -2)*Pd+eD*((-3)+5*Pd)))+c0^4*(8*c2^4*((-1)+eAs)^2*
    ((-1)+eBs)*((-1)+eD)^2*(4*eD*(1+(-2)*Pd)*Pd+2*Pd^2+
    eD^2*(1+(-6)*Pd+7*Pd^2))+2*c1^2*c2^2*((-1)+eAs)*(
    (-3)+eAs+2*eBs)*((-1)+eD)*(2*eD*(3+(-7)*Pd)*Pd+4*
    Pd^2+eD^2*(1+(-8)*Pd+11*Pd^2))+c1^4*(4*((-3)+2*
    eAs+eBs)*Pd^2+(-4)*((-3)+2*eAs+eBs)*eD*Pd*((-1)+3*
    Pd)+eD^2*((-2)+eBs*(1+(-3)*Pd)^2+16*Pd+(-26)*Pd^2+
    eAs*(1+(-10)*Pd+17*Pd^2))))),0,0,0,0,(1/4)*c0^2*
    c1^2*eD*((-1)+Pd)^3*(2*c0^4*eAs^(1/2)*eBs^(1/2)*
    Pd+(-4)*c0^3*c2*((1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)
    *eAs)^(1/2)*eBs^(1/2)+eAs^(1/2)*(1+(-1)*eBs)^(1/2)*
    ((-1)*((-1)+eBs)*eBs)^(1/2))*((-1)+eD)*Pd+2*c1^4*((
    -1)+eAs)*eAs^(1/2)*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((
    -1)*Pd+eD*((-1)+2*Pd))+(-2)*c0*c1^2*c2*((-1)*(1+(
    -1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*eBs^(1/2)
    +(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*
    eBs^(3/2)+((-1)+eAs)*eAs^(1/2)*(1+(-1)*eBs)^(1/2)*((
    -1)*((-1)+eBs)*eBs)^(1/2))*((-1)+eD)*((-2)*Pd+eD*((
    -1)+3*Pd))+c0^2*(8*c2^2*(1+(-1)*eAs)^(1/2)*((-1)*(
    (-1)+eAs)*eAs)^(1/2)*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2)*((-1)+eD)^2*Pd+c1^2*eAs^(1/2)*
    eBs^(1/2)*((-2)+eAs+eBs)*((-2)*Pd+eD*((-1)+3*Pd)))),0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

    v3 = [0,0,
    (1/4)*c0^2*c2^2*eBs^2*((-1)+eD)*((-1)+Pd)^2*(4*
    c0^4*Pd*((-1)*Pd+eD*((-1)+2*Pd))+c1^4*((-1)+eAs)
    ^2*((-1)+eD)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+
    (-14)*Pd+15*Pd^2))+2*c0^2*((-1)+eAs)*(2*c2^2*((-1)
    +eAs)*((-1)+eD)*(4*eD*(1+(-2)*Pd)*Pd+2*Pd^2+eD^2*(
    1+(-6)*Pd+7*Pd^2))+c1^2*(2*eD*(3+(-7)*Pd)*Pd+4*
    Pd^2+eD^2*(1+(-8)*Pd+11*Pd^2)))),0,0,0,0,(-1/2)*2^(
    -1/2)*c0^3*c1^2*c2*eBs^(1/2)*(eBs^2)^(1/2)*((-1)+
    eD)*eD*((-1)+Pd)^3*(2*c0*(c0*eAs^(1/2)+(-2)*c2*(1+
    (-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*((-1)+eD)
    )*Pd+c1^2*((-1)+eAs)*eAs^(1/2)*((-2)*Pd+eD*((-1)+3*
    Pd))),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0]

    v4 = [0,0,0,(-1/4)*eBs*((-1)+Pd)^2*(4*c1^8*((-1)+eAs)
    ^2*((-1)+eBs)*((-1)+eD)^2*(eD+Pd+(-2)*eD*Pd)^2+2*
    c0^6*Pd*(4*c2^2*((-1)+eBs)*((-1)+eD)*((-1)*Pd+eD*(
    (-1)+2*Pd))+c1^2*((-2)*Pd+eD*((-1)+3*Pd)))+2*c0^2*
    c1^4*((-1)+eAs)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))*(
    c1^2*((-3)+eAs+2*eBs)*((-1)*Pd+eD*((-1)+2*Pd))+2*
    c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*((
    -3)+5*Pd)))+c0^4*(8*c2^4*((-1)+eAs)^2*((-1)+eBs)*((
    -1)+eD)^2*(4*eD*(1+(-2)*Pd)*Pd+2*Pd^2+eD^2*(1+(-6)
    *Pd+7*Pd^2))+2*c1^2*c2^2*((-1)+eAs)*((-3)+eAs+2*
    eBs)*((-1)+eD)*(2*eD*(3+(-7)*Pd)*Pd+4*Pd^2+eD^2*(
    1+(-8)*Pd+11*Pd^2))+c1^4*(4*((-3)+2*eAs+eBs)*Pd^2+(
    -4)*((-3)+2*eAs+eBs)*eD*Pd*((-1)+3*Pd)+eD^2*((-2)+
    eBs*(1+(-3)*Pd)^2+16*Pd+(-26)*Pd^2+eAs*(1+(-10)*Pd+
    17*Pd^2))))),0,0,0,0,0,0,0,0,0,0,0,0,0,0,(1/4)*c0^2*
    c1^2*eD*((-1)+Pd)^3*(2*c0^4*eAs^(1/2)*eBs^(1/2)*
    Pd+(-4)*c0^3*c2*((1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)
    *eAs)^(1/2)*eBs^(1/2)+eAs^(1/2)*(1+(-1)*eBs)^(1/2)*
    ((-1)*((-1)+eBs)*eBs)^(1/2))*((-1)+eD)*Pd+2*c1^4*((
    -1)+eAs)*eAs^(1/2)*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((
    -1)*Pd+eD*((-1)+2*Pd))+(-2)*c0*c1^2*c2*((-1)*(1+(
    -1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*eBs^(1/2)
    +(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*
    eBs^(3/2)+((-1)+eAs)*eAs^(1/2)*(1+(-1)*eBs)^(1/2)*((
    -1)*((-1)+eBs)*eBs)^(1/2))*((-1)+eD)*((-2)*Pd+eD*((
    -1)+3*Pd))+c0^2*(8*c2^2*(1+(-1)*eAs)^(1/2)*((-1)*(
    (-1)+eAs)*eAs)^(1/2)*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2)*((-1)+eD)^2*Pd+c1^2*eAs^(1/2)*
    eBs^(1/2)*((-2)+eAs+eBs)*((-2)*Pd+eD*((-1)+3*Pd)))),0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

    v5 = [0,0,0,0,(1/4)*c1^4*
    eBs^2*((-1)+Pd)^2*(4*c1^4*((-1)+eAs)^2*((-1)+eD)
    ^2*(eD+Pd+(-2)*eD*Pd)^2+c0^4*((-2)*Pd+eD*((-1)+3*
    Pd))^2+2*c0^2*((-1)+eAs)*((-1)+eD)*((-2)*Pd+eD*((-1)
    +3*Pd))*(c1^2*((-2)*Pd+eD*((-2)+4*Pd))+c2^2*((-1)+
    eAs)*((-1)+eD)*((-2)*Pd+eD*((-3)+5*Pd)))),0,0,0,0,(
    -1/4)*c0^2*c1^4*eBs^(3/2)*eD*((-1)+Pd)^3*(2*
    c1^2*((-1)+eAs)*eAs^(1/2)*((-1)+eD)*((-1)*Pd+eD*((
    -1)+2*Pd))+c0^2*eAs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))+(
    -2)*c0*c2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)
    ^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,0,
    0,0,0,0,(-1/4)*c0^2*c1^4*eBs^(3/2)*eD*((-1)+Pd)^3*
    (2*c1^2*((-1)+eAs)*eAs^(1/2)*((-1)+eD)*((-1)*Pd+eD*
    ((-1)+2*Pd))+c0^2*eAs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))
    +(-2)*c0*c2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)
    ^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,(
    1/4)*c0^4*c1^4*eAs*eBs*eD^2*((-1)+Pd)^4*VisF,0,0,
    0,0,0,0,0,0,0,0,0]

    v6 = [0,0,0,0,0,(1/4)*c0^2*c2^2*eBs^2*((
    -1)+eD)*((-1)+Pd)^2*(4*c0^4*Pd*((-1)*Pd+eD*((-1)+
    2*Pd))+c1^4*((-1)+eAs)^2*((-1)+eD)*(8*eD*(1+(-2)*
    Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2))+2*c0^2*(
    (-1)+eAs)*(2*c2^2*((-1)+eAs)*((-1)+eD)*(4*eD*(1+(-2)
    *Pd)*Pd+2*Pd^2+eD^2*(1+(-6)*Pd+7*Pd^2))+c1^2*(2*
    eD*(3+(-7)*Pd)*Pd+4*Pd^2+eD^2*(1+(-8)*Pd+11*Pd^2))
    )),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(-1/2)*2^(-1/2)*c0^3*
    c1^2*c2*eBs^(1/2)*(eBs^2)^(1/2)*((-1)+eD)*eD*((-1)
    +Pd)^3*(2*c0*(c0*eAs^(1/2)+(-2)*c2*(1+(-1)*eAs)^(
    1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*((-1)+eD))*Pd+c1^2*
    ((-1)+eAs)*eAs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,
    0,0,0,0,0,0,0,0,0,0,0]

    v7 = [0,(1/4)*c0^2*c1^2*eD*(((-1)+Pd)
    ^3)*(2*c0^4*eAs^(1/2)*eBs^(1/2)*Pd+(-4)*c0^3*c2*
    ((1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*
    eBs^(1/2)+eAs^(1/2)*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2))*((-1)+eD)*Pd+2*c1^4*((-1)+eAs)*
    eAs^(1/2)*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((-1)*Pd+
    eD*((-1)+2*Pd))+(-2)*c0*c1^2*c2*((-1)*(1+(-1)*eAs)
    ^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*eBs^(1/2)+(1+(-1)
    *eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*eBs^(3/2)+((
    -1)+eAs)*eAs^(1/2)*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2))*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))+
    c0^2*(8*c2^2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*
    eAs)^(1/2)*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)
    ^(1/2)*((-1)+eD)^2*Pd+c1^2*eAs^(1/2)*eBs^(1/2)*((
    -2)+eAs+eBs)*((-2)*Pd+eD*((-1)+3*Pd)))),0,0,0,0,(-1/4)*
    eAs*((-1)+Pd)^2*(4*c1^8*((-1)+eAs)*((-1)+eBs)^2*((
    -1)+eD)^2*(eD+Pd+(-2)*eD*Pd)^2+2*c0^6*Pd*(4*
    c2^2*((-1)+eAs)*((-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+
    c1^2*((-2)*Pd+eD*((-1)+3*Pd)))+2*c0^2*c1^4*((-1)+
    eBs)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))*(c1^2*((-3)+
    2*eAs+eBs)*((-1)*Pd+eD*((-1)+2*Pd))+2*c2^2*((-1)+
    eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*((-3)+5*Pd)))+
    c0^4*(8*c2^4*((-1)+eAs)*((-1)+eBs)^2*((-1)+eD)^2*(
    4*eD*(1+(-2)*Pd)*Pd+2*Pd^2+eD^2*(1+(-6)*Pd+7*
    Pd^2))+2*c1^2*c2^2*((-1)+eBs)*((-3)+2*eAs+eBs)*((
    -1)+eD)*(2*eD*(3+(-7)*Pd)*Pd+4*Pd^2+eD^2*(1+(-8)*
    Pd+11*Pd^2))+c1^4*(4*((-3)+eAs+2*eBs)*Pd^2+(-4)*((
    -3)+eAs+2*eBs)*eD*Pd*((-1)+3*Pd)+eD^2*((-2)+eBs+eAs*
    (1+(-3)*Pd)^2+16*Pd+(-10)*eBs*Pd+(-26)*Pd^2+17*eBs*
    Pd^2)))),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0]

    v8 = [0,0,(-1/2)*2^(-1/2)*c0^3*c1^2*c2*eBs^(1/2)\
    *(eBs^2)^(1/2)*((-1)+eD)*eD*((-1)+Pd)^3*(2*c0*(
    c0*eAs^(1/2)+(-2)*c2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+
    eAs)*eAs)^(1/2)*((-1)+eD))*Pd+c1^2*((-1)+eAs)*eAs^(
    1/2)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,(1/2)*eAs*eBs*
    ((-1)+eD)*((-1)+Pd)^2*(2*c1^8*((-1)+eAs)*((-1)+eBs)*
    ((-1)+eD)*(eD+Pd+(-2)*eD*Pd)^2+c0^2*c1^4*((-2)*Pd+
    eD*((-1)+3*Pd))*(c1^2*((-2)+eAs+eBs)*((-1)*Pd+eD*((
    -1)+2*Pd))+2*c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((
    -2)*Pd+eD*((-3)+5*Pd)))+2*c0^4*Pd*(c1^4*((-1)*Pd+
    eD*((-1)+2*Pd))+4*c2^4*((-1)+eAs)*((-1)+eBs)*((-1)+
    eD)^2*((-1)*Pd+eD*((-2)+3*Pd))+c1^2*c2^2*((-2)+eAs+
    eBs)*((-1)+eD)*((-2)*Pd+eD*((-3)+5*Pd)))),0,0,0,0,(
    -1/2)*2^(-1/2)*c0^3*c1^2*c2*eAs^(1/2)*(eAs^2)^(
    1/2)*((-1)+eD)*eD*((-1)+Pd)^3*(2*c0*(c0*eBs^(1/2)+(
    -2)*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)^(
    1/2)*((-1)+eD))*Pd+c1^2*((-1)+eBs)*eBs^(1/2)*((-2)*
    Pd+eD*((-1)+3*Pd))),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0]

    v9 = [0,0,0,0,0,0,0,0,(-1/4)*c0^2*c2^2*eAs*eBs^2*(
    (-1)+eD)^2*((-1)+Pd)^2*(8*c0^2*c2^2*((-1)+eAs)*((
    -1)+eD)*Pd*((-1)*Pd+eD*((-2)+3*Pd))+2*c0^2*c1^2*
    Pd*((-2)*Pd+eD*((-3)+5*Pd))+c1^4*((-1)+eAs)*(8*eD*(
    1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2))),0,
    0,0,0,c0^4*c1^2*c2^2*eAs^(1/2)*(eAs^2)^(1/2)*
    eBs^(1/2)*(eBs^2)^(1/2)*((-1)+eD)^2*eD*(((-1)+Pd)
    ^3)*Pd,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

    v10 = [0,0,0,0,
    (-1/4)*c0^2*c1^4*eBs^(3/2)*eD*((-1)+Pd)^3*(2*
    c1^2*((-1)+eAs)*eAs^(1/2)*((-1)+eD)*((-1)*Pd+eD*((
    -1)+2*Pd))+c0^2*eAs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))+(
    -2)*c0*c2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)
    ^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,(
    1/4)*eAs*eBs*((-1)+Pd)^2*(4*c1^8*((-1)+eAs)*((-1)+
    eBs)*((-1)+eD)^2*(eD+Pd+(-2)*eD*Pd)^2+c0^4*(4*
    c2^2*((-1)+eAs)*((-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+
    c1^2*((-2)*Pd+eD*((-1)+3*Pd)))*(4*c2^2*((-1)+eBs)*
    ((-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*
    ((-1)+3*Pd)))+2*c0^2*c1^4*((-1)+eD)*((-2)*Pd+eD*((
    -1)+3*Pd))*(c1^2*((-2)+eAs+eBs)*((-1)*Pd+eD*((-1)+2*
    Pd))+2*c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+
    eD*((-3)+5*Pd)))),0,0,0,0,0,0,0,0,0,(1/4)*c0^2*c1^4*
    eAs^(1/2)*eBs^(1/2)*(c0*eAs^(1/2)+(-4)*c2*(1+(-1)*
    eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*((-1)+eD))*(
    c0*eBs^(1/2)+(-4)*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2)*((-1)+eD))*eD^2*((-1)+Pd)^4*VisF,0,
    0,0,0,(-1/4)*c0^2*c1^4*eAs^(3/2)*eD*((-1)+Pd)^3*(
    2*c1^2*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((-1)*Pd+eD*(
    (-1)+2*Pd))+c0^2*eBs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))+
    (-2)*c0*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)
    ^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,0,
    0,0,0,0,0,0]

    v11 = [0,0,0,0,0,0,0,0,0,0,(-1/2)*c1^4*eAs*eBs^2*
    ((-1)+eD)*((-1)+Pd)^2*(2*c1^4*((-1)+eAs)*((-1)+eD)*(
    eD+Pd+(-2)*eD*Pd)^2+c0^2*((-2)*Pd+eD*((-1)+3*Pd))*(
    c1^2*((-1)*Pd+eD*((-1)+2*Pd))+c2^2*((-1)+eAs)*((-1)+
    eD)*((-2)*Pd+eD*((-3)+5*Pd)))),0,0,0,0,(1/2)*(2^(-1/2))*c0^3*c1^4*c2*eAs^(1/2)*((eAs^2)^(1/2))*eBs^(3/2)\
    *((-1)+eD)*eD*((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*Pd)),
    0,0,0,0,(1/2)*2^(-1/2)*c0^2*c1^4*c2*eAs^(1/2)*
    eBs*(eBs^2)^(1/2)*((-1)*c0*eAs^(1/2)+4*c2*(1+(-1)*
    eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*((-1)+eD))*((
    -1)+eD)*eD^2*((-1)+Pd)^4,0,0,0,0,(1/2)*c0^2*c1^6*
    eAs^(3/2)*eBs^(3/2)*((-1)+eD)*eD*((-1)+Pd)^3*((-1)*
    Pd+eD*((-1)+2*Pd)),0,0,0,0,0,0,0,0,0,0]

    v12 = [0,0,0,0,0,0,0,0,0,
    0,0,(-1/4)*c0^2*c2^2*eAs*eBs^2*((-1)+eD)*(((-1)+Pd)
    ^2)*(c1^4*((-1)+eAs)*((-1)+eD)*(8*eD*(1+(-2)*Pd)*
    Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2))+2*c0^2*((-1)
    *Pd+eD*((-1)+2*Pd))*(4*c2^2*((-1)+eAs)*((-1)+eD)*((
    -1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*((-1)+3*Pd))
    )),0,0,0,0,0,0,0,0,0,0,(1/2)*2^(-1/2)*c0^2*c1^4*c2*
    eAs^(1/2)*eBs*(eBs^2)^(1/2)*((-1)*c0*eAs^(1/2)+4*
    c2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*((
    -1)+eD))*((-1)+eD)*eD^2*((-1)+Pd)^4,0,0,0,0,(1/2)*2^(
    -1/2)*c0^3*c1^4*c2*eAs^(3/2)*eBs^(1/2)*(eBs^2)^(
    1/2)*((-1)+eD)*eD*((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*
    Pd)),0,0,0,0,0,0,0,0]

    v13 = [0,0,0,0,0,0,0,(-1/2)*2^(-1/2)*
    c0^3*c1^2*c2*eAs^(1/2)*(eAs^2)^(1/2)*((-1)+eD)*
    eD*((-1)+Pd)^3*(2*c0*(c0*eBs^(1/2)+(-2)*c2*(1+(-1)
    *eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)^(1/2)*((-1)+eD))*
    Pd+c1^2*((-1)+eBs)*eBs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd)
    )),0,0,0,0,(1/4)*c0^2*c2^2*eAs^2*((-1)+eD)*(((-1)+Pd)
    ^2)*(4*c0^4*Pd*((-1)*Pd+eD*((-1)+2*Pd))+c1^4*((-1)
    +eBs)^2*((-1)+eD)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+
    eD^2*(3+(-14)*Pd+15*Pd^2))+2*c0^2*((-1)+eBs)*(2*
    c2^2*((-1)+eBs)*((-1)+eD)*(4*eD*(1+(-2)*Pd)*Pd+2*
    Pd^2+eD^2*(1+(-6)*Pd+7*Pd^2))+c1^2*(2*eD*(3+(-7)*
    Pd)*Pd+4*Pd^2+eD^2*(1+(-8)*Pd+11*Pd^2)))),0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    v14 = [0,0,0,0,0,0,0,0,c0^4*
    c1^2*c2^2*eAs^(1/2)*(eAs^2)^(1/2)*eBs^(1/2)*(
    eBs^2)^(1/2)*((-1)+eD)^2*eD*((-1)+Pd)^3*Pd,0,0,0,0,(
    -1/4)*c0^2*c2^2*eAs^2*eBs*((-1)+eD)^2*(((-1)+Pd)
    ^2)*(8*c0^2*c2^2*((-1)+eBs)*((-1)+eD)*Pd*((-1)*Pd+
    eD*((-2)+3*Pd))+2*c0^2*c1^2*Pd*((-2)*Pd+eD*((-3)+
    5*Pd))+c1^4*((-1)+eBs)*(8*eD*(1+(-2)*Pd)*Pd+4*
    Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2))),0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0]
    
    v15 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,c0^4*
    c2^4*eAs^2*eBs^2*((-1)+eD)^3*((-1)+Pd)^2*Pd*((-1)
    *Pd+eD*((-2)+3*Pd)),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0]
    
    v16 = [0,0,0,0,0,0,0,0,0,0,(1/2)*2^(-1/2)*c0^3*c1^4*
    c2*eAs^(1/2)*(eAs^2)^(1/2)*eBs^(3/2)*((-1)+eD)*eD*
    ((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*Pd)),0,0,0,0,(-1/4)*
    c0^2*c2^2*eAs^2*eBs*((-1)+eD)*((-1)+Pd)^2*(c1^4*
    ((-1)+eBs)*((-1)+eD)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+
    eD^2*(3+(-14)*Pd+15*Pd^2))+2*c0^2*((-1)*Pd+eD*((
    -1)+2*Pd))*(4*c2^2*((-1)+eBs)*((-1)+eD)*((-1)*Pd+
    eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*((-1)+3*Pd)))),0,0,
    0,0,0,0,0,0,0,(1/2)*2^(-1/2)*c0^2*c1^4*c2*eAs*(
    eAs^2)^(1/2)*eBs^(1/2)*((-1)*c0*eBs^(1/2)+4*c2*(1+
    (-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)^(1/2)*((-1)+eD)
    )*((-1)+eD)*eD^2*((-1)+Pd)^4,0,0,0,0,0,0,0,0,0,0]
    
    v17 = [0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,(1/4)*c0^2*c1^4*c2^2*
    eAs^2*eBs^2*((-1)+eD)^2*((-1)+Pd)^2*(8*eD*(1+(-2)
    *Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2)),0,0,0,0,
    0,0,0,0,0,(1/2)*c0^2*c1^4*c2^2*eAs*(eAs^2)^(1/2)*
    eBs*(eBs^2)^(1/2)*((-1)+eD)^2*eD^2*((-1)+Pd)^4,0,0,
    0,0,0,0,0,0,0]
    
    v18 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,c0^4*
    c2^4*eAs^2*eBs^2*((-1)+eD)^2*((-1)+Pd)^2*(eD+Pd+(
    -2)*eD*Pd)^2,0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*c1^4*
    c2^2*eAs*(eAs^2)^(1/2)*eBs*(eBs^2)^(1/2)*(((-1)+eD)
    ^2)*eD^2*((-1)+Pd)^4,0,0,0,0,0,0,0]
    
    v19 = [0,0,0,(1/4)*c0^2*
    c1^2*eD*((-1)+Pd)^3*(2*c0^4*eAs^(1/2)*eBs^(1/2)*
    Pd+(-4)*c0^3*c2*((1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)
    *eAs)^(1/2)*eBs^(1/2)+eAs^(1/2)*(1+(-1)*eBs)^(1/2)*
    ((-1)*((-1)+eBs)*eBs)^(1/2))*((-1)+eD)*Pd+2*c1^4*((
    -1)+eAs)*eAs^(1/2)*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((
    -1)*Pd+eD*((-1)+2*Pd))+(-2)*c0*c1^2*c2*((-1)*(1+(
    -1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*eBs^(1/2)
    +(1+(-1)*eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*
    eBs^(3/2)+((-1)+eAs)*eAs^(1/2)*(1+(-1)*eBs)^(1/2)*((
    -1)*((-1)+eBs)*eBs)^(1/2))*((-1)+eD)*((-2)*Pd+eD*((
    -1)+3*Pd))+c0^2*(8*c2^2*(1+(-1)*eAs)^(1/2)*((-1)*(
    (-1)+eAs)*eAs)^(1/2)*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2)*((-1)+eD)^2*Pd+c1^2*eAs^(1/2)*
    eBs^(1/2)*((-2)+eAs+eBs)*((-2)*Pd+eD*((-1)+3*Pd)))),0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,(-1/4)*eAs*((-1)+Pd)^2*(4*
    c1^8*((-1)+eAs)*((-1)+eBs)^2*((-1)+eD)^2*(eD+Pd+(-2)
    *eD*Pd)^2+2*c0^6*Pd*(4*c2^2*((-1)+eAs)*((-1)+eD)
    *((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*((-1)+3*
    Pd)))+2*c0^2*c1^4*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*
    ((-1)+3*Pd))*(c1^2*((-3)+2*eAs+eBs)*((-1)*Pd+eD*((
    -1)+2*Pd))+2*c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((
    -2)*Pd+eD*((-3)+5*Pd)))+c0^4*(8*c2^4*((-1)+eAs)*((
    -1)+eBs)^2*((-1)+eD)^2*(4*eD*(1+(-2)*Pd)*Pd+2*
    Pd^2+eD^2*(1+(-6)*Pd+7*Pd^2))+2*c1^2*c2^2*((-1)+
    eBs)*((-3)+2*eAs+eBs)*((-1)+eD)*(2*eD*(3+(-7)*Pd)*
    Pd+4*Pd^2+eD^2*(1+(-8)*Pd+11*Pd^2))+c1^4*(4*((-3)+
    eAs+2*eBs)*Pd^2+(-4)*((-3)+eAs+2*eBs)*eD*Pd*((-1)+
    3*Pd)+eD^2*((-2)+eBs+eAs*(1+(-3)*Pd)^2+16*Pd+(-10)*
    eBs*Pd+(-26)*Pd^2+17*eBs*Pd^2)))),0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0]
    
    v20 = [0,0,0,0,(-1/4)*c0^2*c1^4*eBs^(3/2)*eD*
    ((-1)+Pd)^3*(2*c1^2*((-1)+eAs)*eAs^(1/2)*((-1)+eD)*
    ((-1)*Pd+eD*((-1)+2*Pd))+c0^2*eAs^(1/2)*((-2)*Pd+
    eD*((-1)+3*Pd))+(-2)*c0*c2*(1+(-1)*eAs)^(1/2)*((-1)
    *((-1)+eAs)*eAs)^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+
    3*Pd))),0,0,0,0,(1/4)*c0^2*c1^4*eAs^(1/2)*eBs^(1/2)*(c0*eAs^(1/2)+(-4)*c2*(1+(-1)*eAs)^(1/2)*((-1)*((
    -1)+eAs)*eAs)^(1/2)*((-1)+eD))*(c0*eBs^(1/2)+(-4)*
    c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)^(1/2)*((
    -1)+eD))*eD^2*((-1)+Pd)^4*VisF,0,0,0,0,0,0,0,0,0,(1/4)*eAs*eBs*((-1)+Pd)^2*(4*c1^8*((-1)+eAs)*((-1)+eBs)
    *((-1)+eD)^2*(eD+Pd+(-2)*eD*Pd)^2+c0^4*(4*c2^2*((
    -1)+eAs)*((-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((
    -2)*Pd+eD*((-1)+3*Pd)))*(4*c2^2*((-1)+eBs)*((-1)+eD)
    *((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*((-1)+3*
    Pd)))+2*c0^2*c1^4*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd)
    )*(c1^2*((-2)+eAs+eBs)*((-1)*Pd+eD*((-1)+2*Pd))+2*
    c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*((
    -3)+5*Pd)))),0,0,0,0,(-1/4)*c0^2*c1^4*eAs^(3/2)*eD*
    ((-1)+Pd)^3*(2*c1^2*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*
    ((-1)*Pd+eD*((-1)+2*Pd))+c0^2*eBs^(1/2)*((-2)*Pd+
    eD*((-1)+3*Pd))+(-2)*c0*c2*(1+(-1)*eBs)^(1/2)*((-1)
    *((-1)+eBs)*eBs)^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+
    3*Pd))),0,0,0,0,0,0,0,0,0,0,0]
    
    v21 = [0,0,0,0,0,0,0,0,0,0,(1/2)*
    2^(-1/2)*c0^2*c1^4*c2*eAs^(1/2)*eBs*(eBs^2)^(
    1/2)*((-1)*c0*eAs^(1/2)+4*c2*(1+(-1)*eAs)^(1/2)*((
    -1)*((-1)+eAs)*eAs)^(1/2)*((-1)+eD))*((-1)+eD)*eD^2*
    ((-1)+Pd)^4,0,0,0,0,0,0,0,0,0,(-1/4)*c0^2*c2^2*eAs*
    eBs^2*((-1)+eD)*((-1)+Pd)^2*(c1^4*((-1)+eAs)*((-1)+
    eD)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+
    15*Pd^2))+2*c0^2*((-1)*Pd+eD*((-1)+2*Pd))*(4*
    c2^2*((-1)+eAs)*((-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+
    c1^2*((-2)*Pd+eD*((-1)+3*Pd)))),0,0,0,0,(1/2)*2^(
    -1/2)*c0^3*c1^4*c2*eAs^(3/2)*eBs^(1/2)*(eBs^2)^(
    1/2)*((-1)+eD)*eD*((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*
    Pd)),0,0,0,0,0,0,0,0,0,0]
    
    v22 = [0,0,0,0,0,(-1/2)*2^(-1/2)*
    c0^3*c1^2*c2*eBs^(1/2)*(eBs^2)^(1/2)*((-1)+eD)*
    eD*((-1)+Pd)^3*(2*c0*(c0*eAs^(1/2)+(-2)*c2*(1+(-1)
    *eAs)^(1/2)*((-1)*((-1)+eAs)*eAs)^(1/2)*((-1)+eD))*
    Pd+c1^2*((-1)+eAs)*eAs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd)
    )),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(1/2)*eAs*eBs*((-1)+eD)*((-1)+Pd)^2*(2*c1^8*((-1)+eAs)*((-1)+eBs)*((-1)+eD)
    *(eD+Pd+(-2)*eD*Pd)^2+c0^2*c1^4*((-2)*Pd+eD*((-1)+
    3*Pd))*(c1^2*((-2)+eAs+eBs)*((-1)*Pd+eD*((-1)+2*Pd))
    +2*c2^2*((-1)+eAs)*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*
    ((-3)+5*Pd)))+2*c0^4*Pd*(c1^4*((-1)*Pd+eD*((-1)+2*
    Pd))+4*c2^4*((-1)+eAs)*((-1)+eBs)*((-1)+eD)^2*((-1)*
    Pd+eD*((-2)+3*Pd))+c1^2*c2^2*((-2)+eAs+eBs)*((-1)+eD)
    *((-2)*Pd+eD*((-3)+5*Pd)))),0,0,0,0,0,0,0,0,(-1/2)*2^(
    -1/2)*c0^3*c1^2*c2*eAs^(1/2)*(eAs^2)^(1/2)*((-1)+
    eD)*eD*((-1)+Pd)^3*(2*c0*(c0*eBs^(1/2)+(-2)*c2*(1+
    (-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)^(1/2)*((-1)+eD)
    )*Pd+c1^2*((-1)+eBs)*eBs^(1/2)*((-2)*Pd+eD*((-1)+3*
    Pd))),0,0,0,0,0]
    
    v23 = [0,0,0,0,0,0,0,0,0,0,0,(1/2)*2^(-1/2)*
    c0^2*c1^4*c2*eAs^(1/2)*eBs*(eBs^2)^(1/2)*((-1)*
    c0*eAs^(1/2)+4*c2*(1+(-1)*eAs)^(1/2)*((-1)*((-1)+
    eAs)*eAs)^(1/2)*((-1)+eD))*((-1)+eD)*eD^2*(((-1)+Pd)
    ^4),0,0,0,0,0,0,0,0,0,0,(-1/2)*c1^4*eAs*eBs^2*((-1)+
    eD)*((-1)+Pd)^2*(2*c1^4*((-1)+eAs)*((-1)+eD)*(eD+Pd+
    (-2)*eD*Pd)^2+c0^2*((-2)*Pd+eD*((-1)+3*Pd))*(
    c1^2*((-1)*Pd+eD*((-1)+2*Pd))+c2^2*((-1)+eAs)*((-1)+
    eD)*((-2)*Pd+eD*((-3)+5*Pd)))),0,0,0,0,(1/2)*c0^2*
    c1^6*eAs^(3/2)*eBs^(3/2)*((-1)+eD)*eD*((-1)+Pd)^3*
    ((-1)*Pd+eD*((-1)+2*Pd)),0,0,0,(1/2)*2^(-1/2)*c0^3*
    c1^4*c2*eAs^(1/2)*(eAs^2)^(1/2)*eBs^(3/2)*((-1)+
    eD)*eD*((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*Pd)),0,0,0,0]


    v24 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(-1/4)*
    c0^2*c2^2*eAs*eBs^2*((-1)+eD)^2*((-1)+Pd)^2*(8*
    c0^2*c2^2*((-1)+eAs)*((-1)+eD)*Pd*((-1)*Pd+eD*((-2)
    +3*Pd))+2*c0^2*c1^2*Pd*((-2)*Pd+eD*((-3)+5*Pd))+
    c1^4*((-1)+eAs)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*
    (3+(-14)*Pd+15*Pd^2))),0,0,0,0,0,0,0,0,0,c0^4*c1^2*
    c2^2*eAs^(1/2)*(eAs^2)^(1/2)*eBs^(1/2)*(eBs^2)^(
    1/2)*((-1)+eD)^2*eD*((-1)+Pd)^3*Pd,0,0]
    
    v25 = [0,0,0,0,(1/4)*
    c0^4*c1^4*eAs*eBs*eD^2*((-1)+Pd)^4*VisF,0,0,0,0,(
    -1/4)*c0^2*c1^4*eAs^(3/2)*eD*((-1)+Pd)^3*(2*
    c1^2*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((-1)*Pd+eD*((
    -1)+2*Pd))+c0^2*eBs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))+(
    -2)*c0*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)
    ^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,0,
    0,0,0,0,(-1/4)*c0^2*c1^4*eAs^(3/2)*eD*((-1)+Pd)^3*
    (2*c1^2*((-1)+eBs)*eBs^(1/2)*((-1)+eD)*((-1)*Pd+eD*
    ((-1)+2*Pd))+c0^2*eBs^(1/2)*((-2)*Pd+eD*((-1)+3*Pd))
    +(-2)*c0*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*eBs)
    ^(1/2)*((-1)+eD)*((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,(
    1/4)*c1^4*eAs^2*((-1)+Pd)^2*(4*c1^4*((-1)+eBs)
    ^2*((-1)+eD)^2*(eD+Pd+(-2)*eD*Pd)^2+c0^4*((-2)*Pd+
    eD*((-1)+3*Pd))^2+2*c0^2*((-1)+eBs)*((-1)+eD)*((-2)
    *Pd+eD*((-1)+3*Pd))*(c1^2*((-2)*Pd+eD*((-2)+4*Pd))+
    c2^2*((-1)+eBs)*((-1)+eD)*((-2)*Pd+eD*((-3)+5*Pd)))),
    0,0,0,0,0,0,0,0,0,0,0]
    
    v26 = [0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*
    c1^6*eAs^(3/2)*eBs^(3/2)*((-1)+eD)*eD*((-1)+Pd)^3*
    ((-1)*Pd+eD*((-1)+2*Pd)),0,0,0,0,(1/2)*2^(-1/2)*
    c0^2*c1^4*c2*eAs*(eAs^2)^(1/2)*eBs^(1/2)*((-1)*
    c0*eBs^(1/2)+4*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+
    eBs)*eBs)^(1/2)*((-1)+eD))*((-1)+eD)*eD^2*(((-1)+Pd)
    ^4),0,0,0,0,(1/2)*2^(-1/2)*c0^3*c1^4*c2*eAs^(3/2)*
    eBs^(1/2)*(eBs^2)^(1/2)*((-1)+eD)*eD*((-1)+Pd)^3*((
    -2)*Pd+eD*((-1)+3*Pd)),0,0,0,0,(-1/2)*c1^4*eAs^2*
    eBs*((-1)+eD)*((-1)+Pd)^2*(2*c1^4*((-1)+eBs)*((-1)+
    eD)*(eD+Pd+(-2)*eD*Pd)^2+c0^2*((-2)*Pd+eD*((-1)+3*
    Pd))*(c1^2*((-1)*Pd+eD*((-1)+2*Pd))+c2^2*((-1)+eBs)
    *((-1)+eD)*((-2)*Pd+eD*((-3)+5*Pd)))),0,0,0,0,0,0,0,0,
    0,0]
    
    v27 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*c1^4*
    c2^2*eAs*(eAs^2)^(1/2)*eBs*(eBs^2)^(1/2)*(((-1)+eD)
    ^2)*eD^2*((-1)+Pd)^4,0,0,0,0,0,0,0,0,0,(1/4)*c0^2*
    c1^4*c2^2*eAs^2*eBs^2*((-1)+eD)^2*((-1)+Pd)^2*(
    8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*
    Pd^2)),0,0,0,0,0,0,0,0,0]
    
    v28 = [0,0,0,0,0,0,0,0,0,0,0,(1/2)*2^(
    -1/2)*c0^3*c1^4*c2*eAs^(3/2)*eBs^(1/2)*(eBs^2)^(
    1/2)*((-1)+eD)*eD*((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*
    Pd)),0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*c1^6*eAs^(3/2)*
    eBs^(3/2)*((-1)+eD)*eD*((-1)+Pd)^3*((-1)*Pd+eD*((-1)
    +2*Pd)),0,0,0,0,(-1/2)*c1^4*eAs^2*eBs*((-1)+eD)*((
    -1)+Pd)^2*(2*c1^4*((-1)+eBs)*((-1)+eD)*(eD+Pd+(-2)*
    eD*Pd)^2+c0^2*((-2)*Pd+eD*((-1)+3*Pd))*(c1^2*((-1)
    *Pd+eD*((-1)+2*Pd))+c2^2*((-1)+eBs)*((-1)+eD)*((-2)*
    Pd+eD*((-3)+5*Pd)))),0,0,0,(1/2)*2^(-1/2)*c0^2*
    c1^4*c2*eAs*(eAs^2)^(1/2)*eBs^(1/2)*((-1)*c0*
    eBs^(1/2)+4*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)*
    eBs)^(1/2)*((-1)+eD))*((-1)+eD)*eD^2*((-1)+Pd)^4,0,0,
    0,0]
    
    v29 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*c1^4*
    c2^2*eAs*(eAs^2)^(1/2)*eBs*(eBs^2)^(1/2)*(((-1)+eD)
    ^2)*eD^2*((-1)+Pd)^4,0,0,0,0,0,0,0,0,0,0,c1^8*eAs^2*
    eBs^2*((-1)+eD)^2*((-1)+Pd)^2*(eD+Pd+(-2)*eD*Pd)^2,
    0,0,0,(1/2)*c0^2*c1^4*c2^2*eAs*(eAs^2)^(1/2)*
    eBs*(eBs^2)^(1/2)*((-1)+eD)^2*eD^2*((-1)+Pd)^4,0,0,
    0]
    
    v30 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    (1/4)*c0^2*c1^4*c2^2*eAs^2*eBs^2*((-1)+eD)^2*((
    -1)+Pd)^2*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+(
    -14)*Pd+15*Pd^2)),0,0,0,0,(1/2)*c0^2*c1^4*c2^2*
    eAs*(eAs^2)^(1/2)*eBs*(eBs^2)^(1/2)*((-1)+eD)^2*
    eD^2*((-1)+Pd)^4,0]
    
    v31 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,(-1/2)*2^(-1/2)*c0^3*c1^2*c2*eAs^(1/2)*(
    eAs^2)^(1/2)*((-1)+eD)*eD*((-1)+Pd)^3*(2*c0*(c0*
    eBs^(1/2)+(-2)*c2*(1+(-1)*eBs)^(1/2)*((-1)*((-1)+eBs)
    *eBs)^(1/2)*((-1)+eD))*Pd+c1^2*((-1)+eBs)*eBs^(1/2)
    *((-2)*Pd+eD*((-1)+3*Pd))),0,0,0,0,0,0,0,0,(1/4)*
    c0^2*c2^2*eAs^2*((-1)+eD)*((-1)+Pd)^2*(4*c0^4*
    Pd*((-1)*Pd+eD*((-1)+2*Pd))+c1^4*((-1)+eBs)^2*((-1)+
    eD)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+
    15*Pd^2))+2*c0^2*((-1)+eBs)*(2*c2^2*((-1)+eBs)*((
    -1)+eD)*(4*eD*(1+(-2)*Pd)*Pd+2*Pd^2+eD^2*(1+(-6)*
    Pd+7*Pd^2))+c1^2*(2*eD*(3+(-7)*Pd)*Pd+4*Pd^2+
    eD^2*(1+(-8)*Pd+11*Pd^2)))),0,0,0,0,0]
    
    v32 = [0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,(1/2)*2^(-1/2)*c0^3*c1^4*
    c2*eAs^(1/2)*(eAs^2)^(1/2)*eBs^(3/2)*((-1)+eD)*eD*
    ((-1)+Pd)^3*((-2)*Pd+eD*((-1)+3*Pd)),0,0,0,0,(1/2)*
    2^(-1/2)*c0^2*c1^4*c2*eAs*(eAs^2)^(1/2)*eBs^(
    1/2)*((-1)*c0*eBs^(1/2)+4*c2*(1+(-1)*eBs)^(1/2)*((
    -1)*((-1)+eBs)*eBs)^(1/2)*((-1)+eD))*((-1)+eD)*eD^2*
    ((-1)+Pd)^4,0,0,0,(-1/4)*c0^2*c2^2*eAs^2*eBs*((-1)+
    eD)*((-1)+Pd)^2*(c1^4*((-1)+eBs)*((-1)+eD)*(8*eD*(
    1+(-2)*Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2))+2*
    c0^2*((-1)*Pd+eD*((-1)+2*Pd))*(4*c2^2*((-1)+eBs)*(
    (-1)+eD)*((-1)*Pd+eD*((-1)+2*Pd))+c1^2*((-2)*Pd+eD*(
    (-1)+3*Pd)))),0,0,0,0]
    
    v33 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*c1^4*c2^2*eAs*(
    eAs^2)^(1/2)*eBs*(eBs^2)^(1/2)*((-1)+eD)^2*eD^2*(
    (-1)+Pd)^4,0,0,0,c0^4*c2^4*eAs^2*eBs^2*(((-1)+eD)
    ^2)*((-1)+Pd)^2*(eD+Pd+(-2)*eD*Pd)^2,0,0,0]
    
    v34 = [0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,c0^4*c1^2*c2^2*
    eAs^(1/2)*(eAs^2)^(1/2)*eBs^(1/2)*(eBs^2)^(1/2)*((
    -1)+eD)^2*eD*((-1)+Pd)^3*Pd,0,0,0,0,0,0,0,0,0,(-1/4)*
    c0^2*c2^2*eAs^2*eBs*((-1)+eD)^2*((-1)+Pd)^2*(8*
    c0^2*c2^2*((-1)+eBs)*((-1)+eD)*Pd*((-1)*Pd+eD*((-2)
    +3*Pd))+2*c0^2*c1^2*Pd*((-2)*Pd+eD*((-3)+5*Pd))+
    c1^4*((-1)+eBs)*(8*eD*(1+(-2)*Pd)*Pd+4*Pd^2+eD^2*
    (3+(-14)*Pd+15*Pd^2))),0,0]
    
    v35 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,(1/2)*c0^2*c1^4*c2^2*
    eAs*(eAs^2)^(1/2)*eBs*(eBs^2)^(1/2)*((-1)+eD)^2*
    eD^2*((-1)+Pd)^4,0,0,0,0,(1/4)*c0^2*c1^4*c2^2*
    eAs^2*eBs^2*((-1)+eD)^2*((-1)+Pd)^2*(8*eD*(1+(-2)
    *Pd)*Pd+4*Pd^2+eD^2*(3+(-14)*Pd+15*Pd^2)),0]
    
    v36 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    0,0,c0^4*c2^4*eAs^2*eBs^2*((-1)+eD)^3*(((-1)+Pd)
    ^2)*Pd*((-1)*Pd+eD*((-2)+3*Pd))]

    hcat(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17,
    v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36)'
end

function cascaded_source_spin(Ns,gA,gB,eAm,eBm,eAs,eBs,eD,Pd,Pdo1,Pdo2,VisF)
    m11=ret_c11(Ns,gA,gB,eAm,eBm,eAs,eBs,eD,Pd,Pdo1,Pdo2,VisF)
    m22=ret_c22(Ns,gA,gB,eAm,eBm,eAs,eBs,eD,Pd,Pdo1,Pdo2,VisF)
    m33=ret_c33(Ns,gA,gB,eAm,eBm,eAs,eBs,eD,Pd,Pdo1,Pdo2,VisF)
    m44=ret_c44(Ns,gA,gB,eAm,eBm,eAs,eBs,eD,Pd,Pdo1,Pdo2,VisF)
    m23=ret_c23(Ns,gA,gB,eAm,eBm,eAs,eBs,eD,Pd,Pdo1,Pdo2,VisF)
    
    return [m11 0 0 0 ; 0 m22 m23 0 ; 0 m23' m33 0 ; 0 0 0 m44]
end


"""
$TYPEDEF

Fields:

$FIELDS

Generate symbolic object for the unnormalized spin-spin density matrix for a 
cascaded source swapped with emissive spin memories. Since the matrix is 'weighted' by the probability for 
success, it is suffixed with a W to distinguish it from the normalized object `ZALMSpinPair`. The cascaded 
source from papers [prajit2022heralded](@cite) and [kevin2023zero](@cite) 
is stored in spin memories as discussed in [prajit2023entangling](@cite).

```jldoctest
julia> using QuantumSavory.StatesZoo: ZALMSpinPairW

julia> r = Register(2);

julia> initialize!(r[1:2], ZALMSpinPairW(1e-3, 0.5, 0.5, 1, 1, 1, 1, 0.9, 1e-8, 1e-8, 1e-8, 0.99));

julia> observable(r[1:2], Z⊗Z)
-6.290288032211147e-9 + 0.0im
```
"""
@withmetadata struct ZALMSpinPairW <: AbstractTwoQubitState
    "mean photon number per mode of the cascaded source model"
    Ns::Float64
    "qubit initialization parameter on Alice's side"
    gA::Float64
    "qubit initialization parameter on Bob's side"
    gB::Float64
    "memory out-coupling efficiency for Alice's side (Allowed range: [0,1])"
    eAm::Float64
    "memory out-coupling efficiency for Bob's side (Allowed range: [0,1])"
    eBm::Float64
    "source out-coupling efficiency for Alice's side (Allowed range: [0,1])"
    eAs::Float64
    "source out-coupling efficiency for Bob's side (Allowed range: [0,1])"
    eBs::Float64
    "detector efficiency (Allowed range: [0,1])"
    eD::Float64
    "dark click probability per photonic mode on source's swap"
    Pd::Float64
    "dark click probability per photonic mode on Alice side swap"
    Pdo1::Float64
    "dark click probability per photonic mode on Bob side swap"
    Pdo2::Float64
    "product of visibilities of all three  interferometers (Allowed range: [0,1])"
    VisF::Float64
end

symbollabel(x::ZALMSpinPairW) = "ρᶻᵃˡᵐᵂ"


"""
$TYPEDEF

Fields:

$FIELDS

Generate symbolic object for the normalized spin-spin density matrix for a 
cascaded source swapped with emissive spin memories. The cascaded 
source from papers [prajit2022heralded](@cite) and [kevin2023zero](@cite) 
is stored in spin memories as discussed in [prajit2023entangling](@cite).

```jldoctest
julia> using QuantumSavory.StatesZoo: ZALMSpinPair

julia> r = Register(2);

julia> initialize!(r[1:2], ZALMSpinPair(1e-3, 0.5, 0.5, 1, 1, 1, 1, 0.9, 1e-8, 1e-8, 1e-8, 0.99));

julia> observable(r[1:2], Z⊗Z)
-0.9999999911111112 + 0.0im
```
"""
@withmetadata struct ZALMSpinPair <: AbstractTwoQubitState
    "mean photon number per mode of the cascaded source model"
    Ns::Float64
    "qubit initialization parameter on Alice's side"
    gA::Float64
    "qubit initialization parameter on Bob's side"
    gB::Float64
    "memory out-coupling efficiency for Alice's side (Allowed range: [0,1])"
    eAm::Float64
    "memory out-coupling efficiency for Bob's side (Allowed range: [0,1])"
    eBm::Float64
    "source out-coupling efficiency for Alice's side (Allowed range: [0,1])"
    eAs::Float64
    "source out-coupling efficiency for Bob's side (Allowed range: [0,1])"
    eBs::Float64
    "detector efficiency (Allowed range: [0,1])"
    eD::Float64
    "dark click probability per photonic mode on source's swap"
    Pd::Float64
    "dark click probability per photonic mode on Alice side swap"
    Pdo1::Float64
    "dark click probability per photonic mode on Bob side swap"
    Pdo2::Float64
    "product of visibilities of all three  interferometers (Allowed range: [0,1])"
    VisF::Float64
end

symbollabel(x::ZALMSpinPair) = "ρᶻᵃˡᵐ"

## express

function express_nolookup(x::ZALMSpinPairW, ::QuantumOpticsRepr)
    data = cascaded_source_spin(x.Ns, x.gA, x.gB, x.eAm, x.eBm, x.eAs, x.eBs, x.eD, x.Pd, x.Pdo1, x.Pdo2, x.VisF)
    return SparseOperator(_bspin⊗_bspin, Complex.(data))
end

function express_nolookup(x::ZALMSpinPair, ::QuantumOpticsRepr)
    data = cascaded_source_spin(x.Ns, x.gA, x.gB, x.eAm, x.eBm, x.eAs, x.eBs, x.eD, x.Pd, x.Pdo1, x.Pdo2, x.VisF)
    return SparseOperator(_bspin⊗_bspin, Complex.(data/tr(data)))
end

## Symbolic trace 
tr(::ZALMSpinPair) = 1