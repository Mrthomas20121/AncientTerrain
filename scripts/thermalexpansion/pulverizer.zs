import mods.thermalexpansion.Pulverizer;

var sulfurDust = <tfc:powder/sulfur>;
var coal1 = <tfc:ore/bituminous_coal>;
var coal2 = <tfc:ore/lignite>;
var dustCoal = <thermalfoundation:material:768>;

Pulverizer.addRecipe(dustCoal, coal1, 2000, sulfurDust, 15);
Pulverizer.addRecipe(dustCoal, coal2, 2000, sulfurDust, 15);
// dirt dust
for dirt in <ore:blockDirt>.items {
  Pulverizer.addRecipe(<contenttweaker:dirt_dust>, dirt, 2000, <contenttweaker:sand_dust>, 15);
}
// sand dust
Pulverizer.addRecipe(<contenttweaker:sand_dust>, <minecraft:sand>, 2000, <contenttweaker:dirt_dust>, 15);