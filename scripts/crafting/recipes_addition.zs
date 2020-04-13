#priority 10
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
var toughAlloy = <nuclearcraft:alloy:1>;
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
var autochisel = <chisel:auto_chisel>;
var fairydust = <wings:fairy_dust>;
var factory = <chisel:factory1:4>;
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
  [factory, <ore:wireCopper>, factory],
  [<ore:wireCopper>, tinGear, <ore:wireCopper>],
  [factory, <ore:wireCopper>, factory]
]);

recipes.addShaped("chisel/factory", factory*8, [
  [<tfc:metal/ingot/mithril>, <ore:stonePolished>, <tfc:metal/ingot/mithril>],
  [<ore:stonePolished>, copperInductor, <ore:stonePolished>],
  [<tfc:metal/ingot/mithril>, <ore:stonePolished>, <tfc:metal/ingot/mithril>]
]);

// machine chassis
recipes.addShaped("nuclearcraft/machine_chassis", machineChassis, [
  [lead, toughAlloy, lead],
  [steel, factory, steel],
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

// piston
recipes.addShaped("minecraft/vanilla/piston", piston, [
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<ore:cobblestone>, wroughtIron, <ore:cobblestone>],
  [<ore:cobblestone>, redstoneDust, <ore:cobblestone>]
]);

// sticky_piston
recipes.addShaped("minecraft/vanilla/sticky_piston", <minecraft:sticky_piston>, [
  [null, <ore:slimeball>, null],
  [null, piston, null],
  [null, null, null]
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

// auto chisel
recipes.addShaped("chisel/autochisel", autochisel, [
  [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
  [<ore:blockGlass>, <ore:dustRedstone>, <ore:blockGlass>],
  [wroughtIron, wroughtIron, wroughtIron]
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

// basic coil
recipes.addShaped('actuallyaddition/coil/basic', <actuallyadditions:item_misc:7>, [
  [null, <ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <tfc:metal/double_ingot/tin>, <ore:plankWood>],
  [<ore:plankWood>, <ore:plankWood>, null]
]);

// advanced coil
recipes.addShaped('actuallyaddition/coil/advanced', <actuallyadditions:item_misc:8>, [
  [null, <ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, <tfctech:metal/electrum_wire>, <ore:plankWood>],
  [<ore:plankWood>, <ore:plankWood>, null]
]);
// advanced coil upgrade
recipes.addShaped('actuallyaddition/coil/advanced_upgrade', <actuallyadditions:item_misc:8>, [
  [null, <ore:ingotElectrum>, null],
  [<ore:ingotElectrum>, <actuallyadditions:item_misc:7>, <ore:ingotElectrum>],
  [null, <ore:ingotElectrum>, null]
]);

// coal generator
recipes.addShaped('actuallyaddition/generator/coal', <actuallyadditions:block_coal_generator>, [
  [<ore:cobblestone>, <minecraft:torch>, <ore:cobblestone>],
  [<ore:cobblestone>, <actuallyadditions:item_misc:7>, <ore:cobblestone>],
  [<ore:cobblestone>, <minecraft:torch>, <ore:cobblestone>]
]);

// iron casing
recipes.addShaped('actuallyaddition/casing/iron', <actuallyadditions:block_misc:9>, [
  [<tfc:metal/sheet/wrought_iron>, <ore:cobblestone>, <tfc:metal/sheet/wrought_iron>],
  [<ore:cobblestone>, <actuallyadditions:block_misc:4>, <ore:cobblestone>],
  [<tfc:metal/sheet/wrought_iron>, <ore:cobblestone>, <tfc:metal/sheet/wrought_iron>]
]);

recipes.addShaped('actuallyaddition/casing/iron/refined', <actuallyadditions:block_misc:9>*2, [
  [<techreborn:ingot:19>, <ore:cobblestone>, <techreborn:ingot:19>],
  [<ore:cobblestone>, <actuallyadditions:block_misc:4>, <ore:cobblestone>],
  [<techreborn:ingot:19>, <ore:cobblestone>, <techreborn:ingot:19>]
]);

// to do, replace recipes using glowstone dust