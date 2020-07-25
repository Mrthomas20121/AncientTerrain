#priority 20
/*
  recipe_removal.zs By Mrthomas20121
*/
var energy_cell = <thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000});
var cellframe = <thermalexpansion:frame:128>;
var leadWire = <tfctech:metal/lead_wire>;
var goldRackwheel = <tfctech:metal/gold_rackwheel>;
var copperInductor = <tfctech:metal/copper_inductor>;
var redstoneConductance = <thermalfoundation:material:515>;
var quartzGlass = <appliedenergistics2:quartz_glass>;
var machineFrame = <thermalexpansion:frame>;
var tinWire = <tfctech:metal/tin_wire>;
var tinGear = <tfctech:metal/tin_gear>;
var copperGear = <tfctech:metal/copper_gear>;
var machineChassis = <nuclearcraft:part:10>;
var steel = <tfc:metal/ingot/steel>;
var lead = <tfc:metal/ingot/lead>;
var toughAlloy = <nuclearcraft:alloy:1>;
var piston = <minecraft:piston>;
var servo = <thermalfoundation:material:512>;
var redcoil = <thermalfoundation:material:513>;
var gearworkdie = <thermalexpansion:augment:337>;
var solenoidCopper = <nuclearcraft:part:4>;
var electricMotor = <nuclearcraft:part:8>;
var wroughtIron = <ore:ingotWroughtIron>;
var memorycard = <appliedenergistics2:memory_card>.withTag({});
var transmissionCoil = <thermalfoundation:material:514>;
var receptionCoil = <thermalfoundation:material:513>;
var silverWire = <tfctech:metal/silver_wire>;
var goldWire = <tfctech:metal/gold_wire>;
var fairydust = <wings:fairy_dust>;
var freshWaterWoodenBucket = <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}});
var freshWaterBucket = <forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000});
var toolforge = <tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 0 as short}});
// recipes removal
recipes.remove(<thermalexpansion:cell>);
recipes.remove(cellframe);
recipes.remove(machineFrame);
recipes.remove(redstoneConductance);
recipes.remove(machineChassis);
recipes.remove(toolforge);
recipes.remove(solenoidCopper);
recipes.remove(<thermalexpansion:machine:5>);
recipes.remove(gearworkdie);
recipes.remove(servo);
recipes.remove(electricMotor);
recipes.remove(fairydust);
recipes.remove(<techreborn:industrial_blast_furnace>);
furnace.remove(<thermalfoundation:rockwool:7>, <thermalfoundation:material:864>);
furnace.remove(<appliedenergistics2:material:5>);
recipes.remove(<actuallyadditions:item_misc:7>);
recipes.remove(<actuallyadditions:item_misc:8>);
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.remove(<actuallyadditions:block_coal_generator>);
recipes.remove(<immersiveengineering:metal_device1:2>);

var recipeToRemove = [
  "thermalfoundation:clay_ball", 
  "enderio:tweak_wood_hopper",
  "appliedenergistics2:tools/network_memory_card",
  "appliedenergistics2:tools/network_biometric_card",
  "appliedenergistics2:network/parts/tunnels_me",
  "thermalexpansion:satchel_1",
  "techreborn:cable_6",
  "techreborn:cable_7",
  "techreborn:cable_8",
  "immersiveengineering:stone_decoration/coke_brick",
  "immersiveengineering:stone_decoration/blast_brick",
  "immersiveengineering:sheetmetal/iron_sheetmetal",
  "immersiveengineering:material/plate_uranium",
  "immersiveengineering:material/plate_steel",
  "immersiveengineering:material/plate_silver",
  "immersiveengineering:material/plate_copper",
  "immersiveengineering:material/plate_aluminum",
  "immersiveengineering:material/plate_nickel",
  "immersiveengineering:material/plate_lead",
  "immersiveengineering:material/plate_iron",
  "immersiveengineering:material/plate_gold",
  "immersiveengineering:material/plate_electrum",
  "immersiveengineering:material/plate_constantan",
  "immersiveengineering:material/hammercrushing_galena",
  "immersiveengineering:material/hammercrushing_bauxite",
  "immersiveengineering:material/hammercrushing_pyrite",
  "immersiveengineering:material/hammercrushing_sphalerite",
  "immersiveengineering:material/hammercrushing_sodalite",
  "immersiveengineering:stone_decoration_insulating_glass"
] as string[];

for recipe_ in recipeToRemove {
  recipes.removeByRecipeName(recipe_);
}