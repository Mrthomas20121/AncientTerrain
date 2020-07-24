#priority 1
// removal
<ore:dustQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:dustNetherQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:ingotPigiron>.remove(<tfc:metal/ingot/pig_iron>);

for item in <ore:dirt>.items {
  <ore:blockDirt>.add(item);
}

<ore:dustEnder>.add(<techreborn:dust:20>);

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