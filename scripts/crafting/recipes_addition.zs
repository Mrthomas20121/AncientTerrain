#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
/*
  Crafting.zs By Mrthomas20121
*/
var energy_cell = <thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000});
var cellframe = <thermalexpansion:frame:128>;
var leadWire = <tfctech:metal/lead_wire>;
var goldRackwheel = <tfctech:metal/gold_rackwheel>;
var copperInductor = <tfctech:metal/copper_inductor>;
var redstoneBlock = <ore:blockRedstone>;
var electrumScrew = <tfctech:metal/electrum_screw>;
var electrumWire = <tfctech:metal/electrum_wire>;
var redstoneConductance = <thermalfoundation:material:515>;
var quartzGlass = <appliedenergistics2:quartz_glass>;
var machineFrame = <thermalexpansion:frame>;
var tinWire = <tfctech:metal/tin_wire>;
var tinGear = <tfctech:metal/tin_gear>;
var copperGear = <tfctech:metal/copper_gear>;
var machineChassis = <nuclearcraft:part:10>;
var steel = <tfc:metal/ingot/steel>;
var lead = <tfc:metal/ingot/lead>;
var toughAlloy = <ore:ingotTough>;
var clay = <ore:itemClay>;
var slag = <ore:itemSlag>;
var dirt = <ore:dirt>;
var dust = <ore:basicDust>;
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
var compactor = <thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
var pulverizer = <thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
var redstoneDust = <ore:dustRedstone>;


// cell frame recipe
recipes.addShaped("thermalexpansion/energy_cell_frame", cellframe, [
  [<tfctech:metal/lead_rod>, goldRackwheel, <tfctech:metal/lead_rod>],
  [goldRackwheel, null, goldRackwheel],
  [<tfctech:metal/lead_rod>, goldRackwheel, <tfctech:metal/lead_rod>]
]);

// energy cell recipe
recipes.addShaped("thermalexpansion/energy_cell", energy_cell, [
  [<tfctech:metal/copper_rod>, redstoneBlock, <tfctech:metal/copper_rod>],
  [electrumScrew, cellframe, electrumScrew],
  [<tfctech:metal/copper_rod>, redstoneConductance, <tfctech:metal/copper_rod>]
]);

// redstone conductance coil
recipes.addShaped("thermalfoundation/conductance_coil", redstoneConductance, [
  [redstoneDust, <tfctech:metal/electrum_rod>, null],
  [<tfctech:metal/electrum_rod>, redstoneDust, <tfctech:metal/electrum_rod>],
  [null, <tfctech:metal/electrum_rod>, redstoneDust]
]);

// redstone transmission coil
recipes.remove(transmissionCoil);
recipes.addShaped("thermalfoundation/transmission_coil", transmissionCoil, [
  [null, <tfctech:metal/silver_rod>, redstoneDust],
  [<tfctech:metal/silver_rod>, redstoneDust, <tfctech:metal/silver_rod>],
  [redstoneDust, <tfctech:metal/silver_rod>, null]
]);

// redstone reception coil
recipes.remove(receptionCoil);
recipes.addShaped("thermalfoundation/reception_coil", receptionCoil, [
  [null, <tfctech:metal/gold_rod>, redstoneDust],
  [<tfctech:metal/gold_rod>, redstoneDust, <tfctech:metal/gold_rod>],
  [redstoneDust, <tfctech:metal/gold_rod>, null]
]);

// machine frame
recipes.addShaped("thermalexpansion/machine_frame", machineFrame, [
  [<tfc:metal/ingot/mithril>, <ore:wireCopper>, <tfc:metal/ingot/mithril>],
  [<ore:wireCopper>, tinGear, <ore:wireCopper>],
  [<tfc:metal/ingot/mithril>, <ore:wireCopper>, <tfc:metal/ingot/mithril>]
]);

// machine chassis
recipes.addShaped("nuclearcraft/machine_chassis", machineChassis, [
  [lead, toughAlloy, lead],
  [steel, <tfc:metal/ingot/mithril>, steel],
  [lead, toughAlloy, lead]
]);

recipes.addShapeless("thermalfoundation/clay_ball", <minecraft:clay_ball>*4, [slag, slag, freshWaterBucket.or(freshWaterWoodenBucket), dirt]);

// thermal compactor
recipes.addShaped("thermalexpansion/compactor", compactor, [
  [null, piston, null],
  [<ore:ingotBrass>, machineFrame, <ore:ingotBrass>],
  [copperGear, redcoil, copperGear]
]);

// thermal pulverizer
recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped("thermalexpansion/pulverizer", pulverizer, [
  [null, piston, null],
  [<minecraft:flint>, machineFrame, <minecraft:flint>],
  [copperGear, redcoil, copperGear]
]);

// redstone servo
recipes.addShaped("thermalfoundation/redstone_servo", servo, [
  [null, redstoneDust, null],
  [null, wroughtIron, null],
  [null, <ore:dusRedstone>, null]
]);

// gear work die
recipes.addShaped("thermalexpansion/augment/gearworkdie", gearworkdie, [
  [null, <tfctech:metal/wrought_iron_gear>, null],
  [<thermalfoundation:material:323>, servo, <thermalfoundation:material:323>],
  [null, piston, null]
]);

// solenoid copper
recipes.addShaped("nuclearcraft/solenoid/copper", solenoidCopper*2, [
  [<ore:ingotCopper>, <ore:ingotCopper>, null],
  [wroughtIron, wroughtIron, null],
  [<ore:ingotCopper>, <ore:ingotCopper>, null]
]);

// electric motor
recipes.addShaped("nuclearcraft/electric_motor", electricMotor, [
  [<ore:ingotSteel>, <ore:ingotSteel>, <tfc:metal/nugget/gold>],
  [solenoidCopper, solenoidCopper, wroughtIron],
  [<ore:ingotSteel>, <ore:ingotSteel>, <tfc:metal/nugget/gold>]
]);

// memory card
recipes.addShaped("appliedenergistics2/tools/network_memory_card", memorycard, [
  [null, null, null],
  [<appliedenergistics2:material:23>, wroughtIron, wroughtIron],
  [<tfc:metal/ingot/gold>, <ore:dustRedstone>, <tfc:metal/ingot/gold>]
]);

// biometric card
recipes.addShaped("appliedenergistics2/tools/network_biometric_card", <appliedenergistics2:biometric_card>.withTag({}), [
  [null, null, null],
  [<appliedenergistics2:material:24>, wroughtIron, wroughtIron],
  [<tfc:metal/ingot/gold>, <ore:dustRedstone>, <tfc:metal/ingot/gold>]
]);

// P2P ME
recipes.addShaped("appliedenergistics2/network/parts/tunnels_me", <appliedenergistics2:part:460>, [
  [null, wroughtIron, null],
  [wroughtIron, <appliedenergistics2:material:24>, wroughtIron],
  [<appliedenergistics2:material:7>, <appliedenergistics2:material:7>, <appliedenergistics2:material:7>]
]);

// P2P Fluid
recipes.addShaped("appliedenergistics2/network/parts/tunnels_fluid", <appliedenergistics2:part:463>, [
  [null, <minecraft:bucket>, null],
  [wroughtIron, <appliedenergistics2:material:24>, wroughtIron],
  [<appliedenergistics2:material:7>, <appliedenergistics2:material:7>, <appliedenergistics2:material:7>]
]);

// fairy dust
recipes.addShaped("wings/fairy_dust", fairydust, [
  [<ore:dustRedstone>, dust, null],
  [<tfc:metal/dust/mithril>, <tfc:metal/dust/bismuth_bronze>, null],
  [null, null, null]
]);

// blast furnace
recipes.addShaped('techreborn/blast_furnace', <techreborn:industrial_blast_furnace>.withTag({}), [
  [<techreborn:part:30>, <techreborn:part:13>, <techreborn:part:30>],
  [<techreborn:part:13>, <tfc:blast_furnace>, <techreborn:part:13>],
  [<techreborn:part:30>, <techreborn:machine_frame:1>, <techreborn:part:30>]
]);

// insulated copper cable
recipes.addShaped('techreborn/insulated_copper_cable', <techreborn:cable:5>*3, [
  [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
  [<techreborn:cable>, <techreborn:cable>, <techreborn:cable>],
  [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]
]);

// ie recipes

// blastbrick
recipes.addShaped('ie/stone_decoration/blastbrick', <immersiveengineering:stone_decoration:1>*3, [
  [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
  [<minecraft:brick>, <tfc:powder/sulfur>, <minecraft:brick>],
  [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

// coke brick
recipes.addShaped('ie/stone_decoration/cokebrick', <immersiveengineering:stone_decoration>*3, [
  [<tfc:ceramics/unfired/clay_brick>, <minecraft:brick>, <tfc:ceramics/unfired/clay_brick>],
  [<minecraft:brick>, freshWaterBucket.or(freshWaterWoodenBucket), <minecraft:brick>],
  [<tfc:ceramics/unfired/clay_brick>, <minecraft:brick>, <tfc:ceramics/unfired/clay_brick>]
]);

// Iron Sheet metal
recipes.addShaped('ie/sheetmetal/iron_sheetmetal', <immersiveengineering:sheetmetal:9>*4, [
  [null, <ore:plateWroughtIron>, null],
  [<ore:plateWroughtIron>, null, <ore:plateWroughtIron>],
  [null, <ore:plateWroughtIron>, null]
]);

// kinetic dynamo 
recipes.addShaped('ie/metal_devices/dynamo', <immersiveengineering:metal_device1:2>*4, [
  [null, <ore:plateWroughtIron>, null],
  [<tfc:metal/ingot/red_alloy>, <immersiveengineering:metal_decoration0>, <tfc:metal/ingot/red_alloy>],
  [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>]
]);

recipes.addShaped('ie/decoration/insulating_glass', <immersiveengineering:stone_decoration:8>*2, [
  [null, <ore:blockGlass>, null],
  [<tfc:metal/dust/wrought_iron>, <tfc:powder/malachite>, <tfc:metal/dust/wrought_iron>],
  [null, <ore:blockGlass>, null]
]);


// to do, replace recipes using glowstone dust