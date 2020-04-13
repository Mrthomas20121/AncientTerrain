import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.infuser;
import mods.nuclearcraft.dissolver;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.chemical_reactor;
import mods.nuclearcraft.salt_mixer;
import mods.nuclearcraft.electrolyser;
import mods.nuclearcraft.centrifuge;

var water = <liquid:fresh_water>;
var limewater = <liquid:limewater>;
var leather = <minecraft:leather>;
var tannin = <liquid:tannin>;
var rum = <liquid:rum>;
var beer = <liquid:beer>;
var moltensugar = <liquid:sugar>;
var lead_platinum_alcohol_solution = <liquid:lead_platinum_alcohol_solution>;
var tin_silver_alcohol_solution = <liquid:tin_silver_alcohol_solution>;
var calcium_sulfate_solution = <liquid:calcium_sulfate_solution>;
var ender_sulfate_solution = <liquid:ender_sulfate_solution>;
var sterling_silver_alcohol_solution = <liquid:sterling_silver_alcohol_solution>;
var agent = <tfctech:latex/vulcanizing_agents>;
var dustQuartz = <appliedenergistics2:material:3>;
var dustCertusQuartz = <appliedenergistics2:material:2>;
var quartzite = <tfc:raw/quartzite>;
var quartziteClay = <tfc:clay/quartzite>;
var quartziteDirt = <tfc:dirt/quartzite>;
var quartziteSand = <tfc:sand/quartzite>;
var oxygen = <liquid:oxygen>;
var hydrogen = <liquid:hydrogen>;
var hydrofluoric_acid = <liquid:hydrofluoric_acid>;
var carbon_dioxide = <liquid:carbon_dioxide>;
var boric_acid = <liquid:boric_acid>;
var methanol = <liquid:methanol>;

// infuser recipes

// raw hide
infuser.addRecipe([<tfc:hide/raw/small>, limewater*300, <tfc:hide/soaked/small>, 5.0, 1.0, 3.0]);
infuser.addRecipe([<tfc:hide/raw/medium>, limewater*400, <tfc:hide/soaked/medium>, 6.0, 2.0, 3.0]);
infuser.addRecipe([<tfc:hide/raw/large>, limewater*500, <tfc:hide/soaked/large>, 7.0, 3.0, 3.0]);

// scraped hide
infuser.addRecipe([<tfc:hide/scraped/small>, water*300, <tfc:hide/prepared/small>, 5.0, 1.0, 3.0]);
infuser.addRecipe([<tfc:hide/scraped/medium>, water*400, <tfc:hide/prepared/medium>, 6.0, 2.0, 3.0]);
infuser.addRecipe([<tfc:hide/scraped/large>, water*500, <tfc:hide/prepared/large>, 7.0, 3.0, 3.0]);

// prepared hide
infuser.addRecipe([<tfc:hide/prepared/small>, tannin*300, leather, 5.0, 1.0, 3.0]);
infuser.addRecipe([<tfc:hide/prepared/medium>, tannin*400, leather*2, 6.0, 2.0, 3.0]);
infuser.addRecipe([<tfc:hide/prepared/large>, tannin*500, leather*3, 7.0, 3.0, 3.0]);


// tfctech rubber mix
infuser.addRecipe([agent, <liquid:latex>*300, <tfctech:latex/rubber_mix>*6, 4.0, 3.0, 4.4]);

// mortar
infuser.addRecipe([<ore:sand>, limewater*100, <tfc:mortar>*16, 4.0, 1.0, 5.0]);

// dried brick to bricks
infuser.addRecipe([<tconstruct:dried_clay:1>, water*250, <minecraft:brick_block>, 3.2, 1.0, 5.2]);

infuser.removeRecipeWithOutput([<thermalfoundation:material:167>]);
infuser.removeRecipeWithOutput([<thermalfoundation:material:103>]);
infuser.removeRecipeWithOutput([<thermalfoundation:material:166>]);
infuser.removeRecipeWithOutput([<thermalfoundation:material:165>]);
infuser.removeRecipeWithOutput([<thermalfoundation:material:102>]);
infuser.removeRecipeWithOutput([<thermalfoundation:material:101>]);

// dissolver recipes
// limewater
dissolver.addRecipe([<tfc:powder/flux>, water*500, limewater*500, 1.0, 4.0, 0.0]);

// rum
dissolver.addRecipe([<minecraft:sugar>, water*500, rum*500, 7.0, 3.0, 3.0]);
// Beer
dissolver.addRecipe([<tfc:food/barley_flour>, water*500, beer*500, 7.0, 3.0, 3.0]);
// Whiskey
dissolver.addRecipe([<tfc:food/wheat_flour>, water*500, <liquid:whiskey>*500, 7.0, 3.0, 3.0]);
// rye Whiskey
dissolver.addRecipe([<tfc:food/rye_flour>, water*500, <liquid:rye_whiskey>*500, 7.0, 3.0, 3.0]);
// corn whiskey
dissolver.addRecipe([<tfc:food/rye_flour>, water*500, <liquid:corn_whiskey>*500, 7.0, 3.0, 3.0]);
// sake
dissolver.addRecipe([<tfc:food/rice_flour>, water*500, <liquid:sake>*500, 7.0, 3.0, 3.0]);

var liquids = [beer*250, rum*250, <liquid:whiskey>*250, <liquid:rye_whiskey>*250, <liquid:corn_whiskey>*250, <liquid:sake>*250, <liquid:vodka>*250, <liquid:cider>*250] as ILiquidStack[];

for l in liquids {
  dissolver.addRecipe([<ore:categoryFruit>, l, <liquid:vinegar>*250, 7.0, 3.0, 3.0]);
}

// alchohol solution
chemical_reactor.addRecipe([<liquid:sic_vapor>*144, rum*1000, <liquid:alcohol_solution>*1000, water*200, 1.0, 4.0, 1.0]);
chemical_reactor.addRecipe([<liquid:sic_vapor>*144, beer*1000, <liquid:alcohol_solution>*1000, water*200, 1.0, 4.0, 1.0]);
chemical_reactor.addRecipe([<liquid:sic_vapor>*144, <liquid:whiskey>*1000, <liquid:alcohol_solution>*1000, water*200, 1.0, 4.0, 1.0]);
chemical_reactor.addRecipe([<liquid:sic_vapor>*144, <liquid:rye_whiskey>*1000, <liquid:alcohol_solution>*1000, water*200, 1.0, 4.0, 1.0]);
chemical_reactor.addRecipe([<liquid:sic_vapor>*144, <liquid:corn_whiskey>*1000, <liquid:alcohol_solution>*1000, water*200, 1.0, 4.0, 1.0]);

// tannin
dissolver.addRecipe([<ore:logWoodTannin>, water*1000, tannin*10000, 2.0, 4.0, 0.0]);

// Silicon carbide vapor
dissolver.addRecipe([<nuclearcraft:alloy:13>, <liquid:brine>*100, <liquid:sic_vapor>*100, 7.0, 5.0, 5.0]);

// salt mixer recipes
salt_mixer.addRecipe([<liquid:lead>*500, <liquid:platinum>*500, <liquid:lead_platinum>*500, 3.0, 6.0, 3.0]);
salt_mixer.addRecipe([<liquid:tin>*500, <liquid:silver>*500, <liquid:tin_silver>*500, 3.0, 6.0, 3.0]);
salt_mixer.addRecipe([<liquid:copper>*500, <liquid:silver>*500, <liquid:sterling_silver>*500, 3.0, 6.0, 3.0]);

// chemical reactor recipes
// enderium
chemical_reactor.addRecipe([<liquid:lead_platinum>*1000, <liquid:alcohol_solution>*500, lead_platinum_alcohol_solution*1000, null, 3.0, 6.0, 3.0]);
chemical_reactor.addRecipe([calcium_sulfate_solution*666, <liquid:ender_nak>*250, ender_sulfate_solution*666, <liquid:sulfur_dioxide>*300, 4.0, 6.0, 3.0]);
chemical_reactor.addRecipe([lead_platinum_alcohol_solution*1000, ender_sulfate_solution*666, <liquid:enderium>*1000, null, 3.0, 6.0, 3.0]);
// lumium
chemical_reactor.addRecipe([<liquid:tin_silver>*1000, <liquid:alcohol_solution>*500, tin_silver_alcohol_solution*1000, null, 3.0, 6.0, 3.0]);
chemical_reactor.addRecipe([tin_silver_alcohol_solution*1000, <liquid:glowstone>*288, <liquid:lumium>*1000, null, 3.0, 6.0, 3.0]);
// signalum
chemical_reactor.addRecipe([<liquid:sterling_silver>*1000, <liquid:alcohol_solution>*500, sterling_silver_alcohol_solution*1000, null, 3.0, 6.0, 3.0]);
chemical_reactor.addRecipe([sterling_silver_alcohol_solution*1000, <liquid:redstone_alloy>*288, <liquid:signalum>*1000, null, 3.0, 6.0, 3.0]);

// alloy furnace recipes
alloy_furnace.removeRecipeWithInput([<nuclearcraft:dust:2>, <minecraft:iron_ingot>]);
// silicon
alloy_furnace.addRecipe([<ore:dustNetherQuartz>, agent, <appliedenergistics2:material:5>, 6.0, 1.0, 2.0]);

// clay coted glowstone dust
alloy_furnace.addRecipe([<minecraft:clay_ball>, <minecraft:glowstone_dust>, <enderio:item_material:76>, 3.0, 1.0, 5.0]);

manufactory.removeRecipeWithInput([<minecraft:sand>]);
manufactory.addRecipe([<tfc:rock/rocksalt>, <tfc:powder/salt>*4, 1.0, 1.0, 3.0]);
manufactory.addRecipe([<ore:sand>, <contenttweaker:sand_dust>, 1.0, 1.0, 3.0]);
manufactory.addRecipe([<ore:dirt>, <contenttweaker:dirt_dust>, 1.0, 1.0, 3.0]);

electrolyser.addRecipe([water*1000, hydrogen*950, <liquid:deuterium>*50, oxygen*500, null]);
electrolyser.removeRecipeWithInput([<liquid:water>*1000]);
electrolyser.removeRecipeWithInput([<liquid:naoh>*666]);
electrolyser.addRecipe([<liquid:naoh>*666, <liquid:sodium>*144, water*1000, oxygen*500, null]);

electrolyser.removeRecipeWithInput([<liquid:koh>*666]);
electrolyser.addRecipe([<liquid:koh>*666, <liquid:potassium>*144, water*1000, oxygen*500, null]);

// oil
electrolyser.addRecipe([<liquid:fluidoil>*1000, <liquid:fluiddiesel>*1000, <liquid:sulfuric_acid>*1000, <liquid:fluidglyceryl>*500, methanol*1000]);
electrolyser.addRecipe([<liquid:crude_oil>*1000, <liquid:fluiddiesel>*1000, <liquid:sulfuric_acid>*1000, <liquid:fluidglyceryl>*500, methanol*1000]);

// chemical reactor compat tfc
chemical_reactor.removeRecipeWithInput([<liquid:sugar>*144, <liquid:water>*1000]);
chemical_reactor.addRecipe([<liquid:sugar>*144, water*1000, <liquid:ethanol>*4000, carbon_dioxide*4000, 6.0, 6.0, 3.0]);
chemical_reactor.removeRecipeWithInput([<liquid:diborane>*500, <liquid:water>*3000]);
chemical_reactor.addRecipe([<liquid:diborane>*500, water*3000, boric_acid*1000, hydrogen*3000]);
chemical_reactor.removeRecipeWithInput([<liquid:sodium_fluoride_solution>*666, <liquid:water>*1000]);
chemical_reactor.addRecipe([<liquid:sodium_fluoride_solution>*666, water*1000, <liquid:sodium_hydroxide_solution>*666, hydrofluoric_acid*1000]);
chemical_reactor.removeRecipeWithInput([<liquid:potassium_fluoride_solution>*666, <liquid:water>*1000]);
chemical_reactor.addRecipe([<liquid:potassium_fluoride_solution>*666, water*1000, <liquid:potassium_hydroxide_solution>*666, hydrofluoric_acid*1000]);
chemical_reactor.removeRecipeWithInput([<liquid:oxygen_difluoride>*1000, <liquid:water>*1000]);
chemical_reactor.addRecipe([<liquid:oxygen_difluoride>*1000, water*1000, oxygen*666, hydrofluoric_acid*1000]);
chemical_reactor.removeRecipeWithInput([<liquid:sulfur_trioxide>*1000, <liquid:water>*1000]);
chemical_reactor.addRecipe([<liquid:sulfur_trioxide>*1000, water*1000, <liquid:sulfuric_acid>*666, null]);
chemical_reactor.removeRecipeWithInput([carbon_dioxide*1000, hydrogen*1000]);
chemical_reactor.addRecipe([carbon_dioxide*1000, hydrogen*1000, <liquid:carbon_monoxide>*666, water*1000]);
chemical_reactor.removeRecipeWithInput([methanol*1000, hydrofluoric_acid*1000]);
chemical_reactor.addRecipe([methanol*1000, hydrofluoric_acid*1000, <liquid:fluoromethane>*666, water*1000]);
chemical_reactor.removeRecipeWithInput([boric_acid*1000, <liquid:ammonia>*1000]);
chemical_reactor.addRecipe([boric_acid*1000, <liquid:ammonia>*1000, <liquid:boron_nitride_solution>*666, water*2000]);

// tech reborn support

// glyceryl
chemical_reactor.addRecipe([water*1000, <liquid:fluidnitrocarbon>*1000, <liquid:fluidglyceryl>*1000, null]);

chemical_reactor.addRecipe([<liquid:fluidglyceryl>*1000, <liquid:fluiddiesel>*1000, <liquid:fluidnitrodiesel>*1000, null]);

chemical_reactor.addRecipe([<liquid:fluidoil>*1000, <liquid:nitrogen>*1000, <liquid:fluidnitrofuel>*1000, <liquid:fluidnitrocarbon>*100]);
chemical_reactor.addRecipe([<liquid:crude_oil>*1000, <liquid:nitrogen>*1000, <liquid:fluidnitrofuel>*1000, <liquid:fluidnitrocarbon>*100]);