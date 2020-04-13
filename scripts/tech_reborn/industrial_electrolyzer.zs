import mods.techreborn.industrialElectrolyzer;

// industrialElectrolyzer.addRecipe(IItemStack output1, IItemStack output2, IItemStack output3, IItemStack output4, IIngredient cells, IIngredient input2, int ticktime, int euTick)
var air_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}});
var silicon_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidsilicon", Amount: 1000}});
var calcium_cell = <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcalcium", Amount: 1000}});
var dustWroughtIron = <tfc:metal/dust/wrought_iron>;

// Pyrite dust
industrialElectrolyzer.removeInputRecipe(<techreborn:dust:39>);
industrialElectrolyzer.addRecipe(dustWroughtIron, <tfc:powder/sulfur>*2, null, null, <techreborn:dust:39>*3, null, 200, 144);

// peridot dust
industrialElectrolyzer.removeInputRecipe(<techreborn:dust:36>);
industrialElectrolyzer.addRecipe(<techreborn:dust:30>*2, dustWroughtIron*2, silicon_cell, air_cell*2, <techreborn:dust:36>*9, <techreborn:dynamiccell>*3, 300, 144);

// Almandine dust
industrialElectrolyzer.removeInputRecipe(<techreborn:dust>);
industrialElectrolyzer.addRecipe(dustWroughtIron*3, <tfc:metal/dust/aluminium>*2, silicon_cell*3, air_cell*6, <techreborn:dust>*20, <techreborn:dynamiccell>*9, 820, 328);

// Andradite
industrialElectrolyzer.removeInputRecipe(<techreborn:dust:2>);
industrialElectrolyzer.addRecipe(calcium_cell, dustWroughtIron*2, silicon_cell*3, air_cell*6, <techreborn:dust:2>*20, <techreborn:dynamiccell>*9, 820, 328);

industrialElectrolyzer.removeInputRecipe(<minecraft:sand>);
// industrialElectrolyzer.addRecipe(silicon_cell, air_cell, <appliedenergistics2:material:3>*2, <appliedenergistics2:material:2>, <ore:sandSilica>*6, <techreborn:dynamiccell>*2, 200, 61);