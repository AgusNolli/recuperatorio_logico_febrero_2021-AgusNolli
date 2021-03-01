Ratatouille
"No cualquiera puede convertirse en un gran artista, pero un gran artista puede provenir de cualquier lado"

¡Bonjour! En una ciudad donde ratas y humanos saben cocinar, tenemos la siguiente información en nuestra base de conocimiento:

rata(remy, gusteaus).
rata(emile, bar).
rata(django, pizzeria).

cocina(linguini, ratatouille, 3).
cocina(linguini, sopa, 5). 
cocina(colette, salmonAsado, 9).
cocina(horst, ensaladaRusa, 8).

De las ratas sabemos su nombre y dónde viven. De los humanos, además de su nombre, qué platos saben cocinar y cuánta experiencia (del 1 al 10) tienen preparándolos. También tenemos información acerca de quién trabaja en cada restaurante:

trabajaEn(gusteaus, linguini).
trabajaEn(gusteaus, colette).
trabajaEn(gusteaus, skinner).
trabajaEn(gusteaus, horst).
trabajaEn(cafeDes2Moulins, amelie).

Desarrollá los siguientes predicados, asegurando que sean completamente inversibles:

1. inspeccionSatisfactoria/1 se cumple para un restaurante cuando no viven ratas allí.

2. chef/2: relaciona un empleado con un restaurante si el empleado trabaja allí y sabe cocinar algún plato.

3. chefcito/1: se cumple para una rata si vive en el mismo restaurante donde trabaja linguini.

4. cocinaBien/2 es verdadero para una persona si su experiencia preparando ese plato es mayor a 7. Además, remy cocina bien cualquier plato que exista.

5. seEspecializaEn/2: Un restaurante se especializa en un plato, cuando todos los empleados saben cocinar bien ese plato. 
