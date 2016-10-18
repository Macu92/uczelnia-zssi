Zad 3.

u=seq(0,320,1)
wolny =fuzzy_cone_gset(center=0, radius=150,universe=u)
sredni =fuzzy_trapezoid_gset(corners = c(120, 140, 170, 200),universe=u)
szybki=fuzzy_cone_gset(center=320, radius=130,universe=u)

szybkosc =fuzzy_variable(wolny_s =wolny, sredni_s=sredni, szybki_s=szybki)

plot(szybkosc)

szybkosc$wolny_s[130]
szybkosc$sredni_s[130]
szybkosc$szybki_s[130]

u1=seq(0,10,0.5)
male =fuzzy_cone_gset(center=0, radius=7.5, universe=u1)
duze=fuzzy_cone_gset(center=10, radius=6, universe=u1)

paliwo=fuzzy_variable(male=male, duze=duze)

niska =fuzzy_cone_gset(center=0, radius=7.5, universe=u1)
wysoka=fuzzy_cone_gset(center=10, radius=7.5, universe=u1)

ocena=fuzzy_variable(niska=niska, wysoka=wysoka)

r1=fuzzy_rule(szybkosc %is% sredni || paliwo %is% male, ocena %is% wysoka)
r2=fuzzy_rule(szybkosc %is% wolny, ocena %is% niska)

variables=set(szybkosc=szybkosc,paliwo=paliwo,ocena=ocena)
rules=set(r1,r2)
system = fuzzy_system(variables, rules)

fuzzy_inference(system,list(szybkosc=130, paliwo=5))