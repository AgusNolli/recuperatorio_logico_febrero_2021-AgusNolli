% rata(nombre,domicilio).
rata(remy, gusteaus).
rata(emile, bar).
rata(django, pizzeria).

% cocina(nombre, platillo, exp).
cocina(linguini, ratatouille, 3).
cocina(linguini, sopa, 5). 
cocina(colette, salmonAsado, 9).
cocina(horst, ensaladaRusa, 8).
cocina(ramsey, sushi, 8).

% trabajaEn(restaurante, empleado).
trabajaEn(gusteaus, linguini).
trabajaEn(gusteaus, colette).
trabajaEn(gusteaus, skinner).
trabajaEn(gusteaus, horst).
trabajaEn(cafeDes2Moulins, amelie).
trabajaEn(bar, ramsey).

% 1)

inspeccionSatisfactoria(Restaurante) :-
    not(rata(Rata, Restaurante)).

% 2)

chef(Empleado, Restaurante) :- 
    trabajaEn(Restaurante, Empleado),
    cocina(Empleado, _, _).

% 3)

chefcito(Rata) :-
    rata(Rata,Restaurante),
    trabajaEn(Restaurante, linguini).

% 4)

cocinaBien(Persona, Platillo) :-
    cocina(Persona, Platillo, Exp),
    Exp > 7.
    
cocinaBien(remi, _).

% 5)

seEspecializaEn(Restaurante, Platillo) :-
    chef(_, Restaurante),
    cocina(_,Platillo,_),
    forall(trabajaEn(Restaurante,Empleado), cocinaBien(Empleado,Platillo)).