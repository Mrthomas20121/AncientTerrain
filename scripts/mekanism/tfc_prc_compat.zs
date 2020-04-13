import mods.mekanism.reaction;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.thermalevaporation;

var water = <liquid:fresh_water>;

// remove all recipes
reaction.removeAllRecipes();

reaction.addRecipe(<mekanism:biofuel>*2, water*10, <gas:hydrogen>*100, <mekanism:substrate>, <gas:ethene>*100, 80.0, 50);
reaction.addRecipe(<mekanism:substrate>, <liquid:liquidethene>*50, <gas:oxygen>*10, <mekanism:polyethene>, <gas:oxygen>*5, 80.0, 50);
reaction.addRecipe(<ore:plankWood>, water*20, <gas:oxygen>*20, null, <gas:hydrogen>*20, 50.0, 40);
reaction.addRecipe(<ore:slabWood>, water*10, <gas:oxygen>*10, null, <gas:hydrogen>*10, 50.0, 40);
reaction.addRecipe(<ore:logWood>, water*100, <gas:oxygen>*100, null, <gas:hydrogen>*20, 50.0, 100);
reaction.addRecipe(<ore:blockCharcoal>, water, <gas:oxygen>, <tfc:powder/sulfur>*9, <gas:hydrogen>*1000, 50.0, 40);
reaction.addRecipe(<ore:dustCharcoal>, water, <gas:oxygen>, <tfc:powder/sulfur>, <gas:hydrogen>*100, 50.0, 40);

crystallizer.removeRecipe(<mekanism:salt>);
crystallizer.removeRecipe(<mekanism:otherdust:4>);
crystallizer.addRecipe(<gas:brine>, <tfc:powder/salt>);
crystallizer.addRecipe(<gas:lithium>, <nuclearcraft:dust:6>);
crystallizer.addRecipe(<gas:osmium>, <tfc:metal/ingot/osmium>);

thermalevaporation.removeRecipe(<liquid:water>, <liquid:brine>);
thermalevaporation.addRecipe(<liquid:salt_water>, <liquid:brine>);