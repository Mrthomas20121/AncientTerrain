#priority 1
// removal
<ore:dustQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:dustNetherQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:ingotPigiron>.remove(<tfc:metal/ingot/pig_iron>);

for item in <ore:dirt>.items {
  <ore:blockDirt>.add(item);
}

<ore:dustEnder>.add(<techreborn:dust:20>);

// stones
<ore:stoneGranite>.add(<tfc:raw/granite>);
<ore:stoneDiorite>.add(<tfc:raw/andesite>);

// copper
var copperTFC = <ore:copperTFC>;
var copperSmallTFC = <ore:copperSmall>;

// malachite
<ore:dyeGreen>.add(<tfc:powder/malachite>);
<ore:dye>.add(<tfc:powder/malachite>);
copperTFC.add(<tfc:ore/malachite:*>);
copperSmallTFC.add(<tfc:ore/small/malachite>);

// native copper
copperTFC.add(<tfc:ore/native_copper:*>);
copperSmallTFC.add(<tfc:ore/small/native_copper>);
// tetrahedrite
copperTFC.add(<tfc:ore/tetrahedrite:*>);
copperSmallTFC.add(<tfc:ore/small/tetrahedrite>);

// tin
var tinTFC = <ore:tinTFC>;
tinTFC.add(<tfc:ore/cassiterite:*>);

// wrought iron
var wroughtIronTFC = <ore:wroughtIronTFC>;

wroughtIronTFC.add(<tfc:ore/magnetite:*>);
wroughtIronTFC.add(<tfc:ore/limonite:*>);
wroughtIronTFC.add(<tfc:ore/hematite:*>);

// zinc
var zincTFC = <ore:zincTFC>;
zincTFC.add(<tfc:ore/sphalerite:*>);

// silver
var silverTFC = <ore:silverTFC>;
silverTFC.add(<tfc:ore/native_silver:*>);

// gold
var goldTFC = <ore:goldTFC>;
goldTFC.add(<tfc:ore/native_gold:*>);

// platinum
var platinumTFC = <ore:platinumTFC>;
platinumTFC.add(<tfc:ore/native_platinum:*>);

// lead
var leadTFC = <ore:leadTFC>;
leadTFC.add(<tfc:ore/galena:*>);

// coal
var coal = <ore:coal>;
var gemCoal = <ore:gemCoal>;

coal.add(<tfc:ore/bituminous_coal>);
coal.add(<tfc:ore/lignite>);
gemCoal.remove(<tfc:ore/bituminous_coal>);
gemCoal.remove(<tfc:ore/lignite>);

var rubber = <ore:itemRubber>;
rubber.add(<tfctech:latex/rubber>);

var dirtDust = <ore:dustDirt>;
dirtDust.add(<contenttweaker:dirt_dust>);

var sandDust = <ore:dustSand>;
sandDust.add(<contenttweaker:sand_dust>);

var dust = <ore:basicDust>;

dust.add(<contenttweaker:dirt_dust>);
dust.add(<contenttweaker:sand_dust>);

var shovel = <ore:shovel>;
var pick = <ore:pick>;

shovel.add(<tconstruct:shovel>);
pick.add(<tconstruct:pickaxe>);

// ores
var cassiterite = <ore:oreCassiterite>;
cassiterite.add(<tfc:ore/cassiterite/granite>);

var stoneDiorite = <ore:stoneDiorite>;

stoneDiorite.add(<tfc:raw/diorite>);