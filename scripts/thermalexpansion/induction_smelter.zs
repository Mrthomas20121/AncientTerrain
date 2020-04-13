import mods.thermalexpansion.InductionSmelter;
import mods.nuclearcraft.alloy_furnace;

var siliconCarbideIngot = <nuclearcraft:alloy:13>;
var silicon = <appliedenergistics2:material:5>;
var graphiteDust = <tfc:powder/graphite>;
var graphite = <tfc:ore/graphite>;
var siliconCarbideFiber = <nuclearcraft:part:13>;
var cinabar = <thermalfoundation:material:866>;

furnace.remove(silicon);

// rubber
InductionSmelter.addRecipe(<tfctech:latex/rubber>, <minecraft:sand>, <tfctech:latex/rubber_mix>, 2000);

// silicon carbide ingot
InductionSmelter.addRecipe(siliconCarbideIngot*2, silicon, graphiteDust, 1500);
InductionSmelter.addRecipe(siliconCarbideIngot*2, silicon, graphite, 1500);
InductionSmelter.addRecipe(siliconCarbideIngot*2, silicon, <nuclearcraft:ingot:8>, 1500);

// silicon carbide fiber
InductionSmelter.addRecipe(siliconCarbideFiber, siliconCarbideIngot, <minecraft:string>*4, 1500);
alloy_furnace.addRecipe([siliconCarbideIngot, <minecraft:string>*4, siliconCarbideFiber, 5.0, 5.0, 0.0]);

// steel
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:769>);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <thermalfoundation:material>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:802>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <thermalfoundation:material:0>);
alloy_furnace.removeRecipeWithOutput(<thermalfoundation:material:160>);
alloy_furnace.removeRecipeWithOutput(<thermalfoundation:storage_alloy>);

// high carbon steel
InductionSmelter.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/pig_iron>, <thermalfoundation:material:768>*2, 2000);
InductionSmelter.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/high_carbon_steel>, siliconCarbideIngot, 2000);
alloy_furnace.addRecipe([<thermalfoundation:material:768>*2, <tfc:metal/ingot/pig_iron>, <tfc:metal/ingot/high_carbon_steel>, 5.0, 4.0, 0.0]);
alloy_furnace.addRecipe([siliconCarbideIngot, <tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/steel>, 5.0, 4.0, 0.0]);
// weak black steel
InductionSmelter.addRecipe(<tfc:metal/ingot/high_carbon_black_steel>, <tfc:metal/ingot/weak_steel>, <tfc:metal/ingot/pig_iron>, 2000);
alloy_furnace.addRecipe([<tfc:metal/ingot/pig_iron>, <tfc:metal/ingot/weak_steel>, <tfc:metal/ingot/high_carbon_black_steel>, 5.0, 4.0, 4.0]);
// black steel
InductionSmelter.addRecipe(<tfc:metal/ingot/black_steel>, <tfc:metal/ingot/high_carbon_black_steel>, siliconCarbideIngot, 2000);
alloy_furnace.addRecipe([siliconCarbideIngot, <tfc:metal/ingot/high_carbon_black_steel>, <tfc:metal/ingot/black_steel>, 6.0, 4.0, 4.0]);

// hopper to wrought iron
InductionSmelter.removeRecipe(<minecraft:sand>, <minecraft:hopper>);
InductionSmelter.addRecipe(<minecraft:sand>, <minecraft:hopper>, <tfc:metal/ingot/wrought_iron>*5, 2000, <thermalfoundation:material:864>, 25);

// bucket to wrought iron
InductionSmelter.removeRecipe(<minecraft:sand>, <minecraft:bucket>);
InductionSmelter.addRecipe(<minecraft:sand>, <minecraft:bucket>, <tfc:metal/ingot/wrought_iron>*3, 2000, <tfc:metal/nugget/red_steel>, 15);

// compass to wrought iron
InductionSmelter.removeRecipe(<minecraft:sand>, <minecraft:compass>);
InductionSmelter.addRecipe(<minecraft:sand>, <minecraft:compass>, <tfc:metal/ingot/wrought_iron>*3, 2000, <minecraft:redstone>, 15);