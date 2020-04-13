import mods.mekanism.enrichment;
import mods.mekanism.crusher;
import mods.mekanism.combiner;
import mods.mekanism.infuser;
import mods.mekanism.separator;

combiner.removeAllRecipes();
combiner.addRecipe(<ore:itemFlint>, <ore:cobblestone>, <minecraft:gravel>);

// gold
enrichment.removeRecipe(<mekanism:dirtydust:1>, <mekanism:dust:1>);
enrichment.removeRecipe(<minecraft:gold_ore>, <mekanism:dust:1>);
enrichment.addRecipe(<mekanism:dirtydust:1>, <tfc:metal/dust/gold>);
crusher.removeRecipe(<mekanism:dust:1>);
crusher.addRecipe(<tfc:metal/ingot/gold>, <tfc:metal/dust/gold>);

// tin
enrichment.removeRecipe(<mekanism:dirtydust:4>, <mekanism:dust:4>);
enrichment.removeRecipe(<thermalfoundation:ore:1>, <mekanism:dust:4>);
enrichment.addRecipe(<mekanism:dirtydust:4>, <tfc:metal/dust/tin>);
crusher.removeRecipe(<mekanism:dust:4>);
crusher.addRecipe(<tfc:metal/ingot/tin>, <tfc:metal/dust/tin>);

// silver
enrichment.removeRecipe(<mekanism:dirtydust:5>, <mekanism:dust:5>);
enrichment.removeRecipe(<thermalfoundation:ore:2>, <mekanism:dust:5>);
enrichment.addRecipe(<mekanism:dirtydust:5>, <tfc:metal/dust/silver>);
crusher.removeRecipe(<mekanism:dust:5>);
crusher.addRecipe(<tfc:metal/ingot/silver>, <tfc:metal/dust/silver>);

// copper
enrichment.removeRecipe(<mekanism:dirtydust:3>, <mekanism:dust:3>);
enrichment.removeRecipe(<thermalfoundation:ore:0>, <mekanism:dust:3>);
enrichment.removeRecipe(<mekanism:oreblock:1>, <mekanism:dust:3>);
enrichment.removeRecipe(<nuclearcraft:ore:0>, <mekanism:dust:3>);
enrichment.addRecipe(<mekanism:dirtydust:3>, <tfc:metal/dust/copper>);
crusher.removeRecipe(<mekanism:dust:3>);
crusher.addRecipe(<tfc:metal/ingot/copper>, <tfc:metal/dust/copper>);

// lead
enrichment.removeRecipe(<mekanism:dirtydust:6>, <mekanism:dust:6>);
enrichment.removeRecipe(<thermalfoundation:ore:3>, <mekanism:dust:6>);
enrichment.removeRecipe(<nuclearcraft:ore:2>, <mekanism:dust:6>);
enrichment.addRecipe(<mekanism:dirtydust:6>, <tfc:metal/dust/lead>);
crusher.removeRecipe(<mekanism:dust:6>);
crusher.addRecipe(<tfc:metal/ingot/lead>, <tfc:metal/dust/lead>);

infuser.removeRecipe(<mekanism:ingot:2>, <mekanism:ingot:5>, 'TIN');
infuser.removeRecipe(<mekanism:ingot:2>, <thermalfoundation:material:128>, 'TIN');
infuser.removeRecipe(<mekanism:ingot:2>, <nuclearcraft:ingot>, 'TIN');
// redstone
infuser.removeRecipe(<mekanism:controlcircuit>, <mekanism:ingot:1>, 'REDSTONE');
infuser.removeRecipe(<mekanism:enrichedalloy>, <minecraft:iron_ingot>, 'REDSTONE');
infuser.addRecipe('REDSTONE', 10, <techreborn:ingot:19>, <mekanism:enrichedalloy>);

infuser.addRecipe('TIN', 10, <tfc:metal/ingot/copper>*3, <tfc:metal/ingot/bronze>);

separator.removeRecipe(<liquid:water>);
separator.addRecipe(<liquid:fresh_water>, 5000, <gas:hydrogen>*2, <gas:oxygen>);

crusher.removeRecipe(<mekanism:dust:2>);
crusher.addRecipe(<tfc:metal/ingot/osmium>, <ore:dustOsmium>.firstItem);
crusher.addRecipe(<ore:obsidian>, <ore:dustObsidian>.firstItem);