import mods.techreborn.assemblingMachine;

// insulated copper cable
assemblingMachine.addRecipe(<techreborn:cable:5>, <techreborn:cable:0>, <techreborn:part:32>*2, 50, 100);

// advanced control circuit
recipes.remove(<mekanism:controlcircuit:1>);
assemblingMachine.addRecipe(<mekanism:controlcircuit:1>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>*2, 50, 100);