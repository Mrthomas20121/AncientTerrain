#priority 10

import mods.terrafirmacraft.Anvil;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val anvilRecipes = {
    "copper" : 1,
    "bismuth" : 1,
    "bronze" : 2,
    "bismuth_bronze" : 2,
    "wrought_iron" : 3,
    "steel": 4,
    "black_steel": 5,
    "blue_steel" : 6,
    "red_steel" : 6,
    "rose_gold": 1
} as int[string];

for key in anvilRecipes {
  if(key == "bismuth" || key == "rose_gold") {
    Anvil.addRecipe('tinker_pick_' + key, itemUtils.getItem("tfc:metal/ingot/" + key) , <tconstruct:pick_head>.withTag({Material: key}), anvilRecipes[key], "tools", "PUNCH_LAST","BEND_NOT_LAST","DRAW_NOT_LAST");
    Anvil.addRecipe('tinker_shovel' + key, itemUtils.getItem("tfc:metal/ingot/" + key) , <tconstruct:shovel_head>.withTag({Material: key}), anvilRecipes[key], "tools", "PUNCH_LAST","HIT_NOT_LAST");
    Anvil.addRecipe('tinker_axe_' + key, itemUtils.getItem("tfc:metal/ingot/" + key) , <tconstruct:axe_head>.withTag({Material: key}), anvilRecipes[key], "tools",  "PUNCH_LAST","HIT_SECOND_LAST","UPSET_THIRD_LAST");
    Anvil.addRecipe('tinker_scythe_' + key, itemUtils.getItem("tfc:metal/ingot/" + key) , <tconstruct:axe_head>.withTag({Material: key}), anvilRecipes[key], "tools",  "HIT_LAST","DRAW_SECOND_LAST","BEND_THIRD_LAST");
    Anvil.addRecipe('tinker_propick_' + key, itemUtils.getItem("tfc:metal/ingot/" + key) , <tfc_tinker:propick_head>.withTag({Material: key}), anvilRecipes[key], "tools",  "PUNCH_LAST","DRAW_NOT_LAST","BEND_NOT_LAST");
    Anvil.addRecipe('tinker_sword_' + key, itemUtils.getItem("tfc:metal/ingot/" + key) , <tconstruct:sword_blade>.withTag({Material: key}), anvilRecipes[key], "tools",  "HIT_LAST","BEND_SECOND_LAST","BEND_THIRD_LAST");
  }
  else {
    recipes.addShapeless('tconstruct/tinker/pick/' + key, <tconstruct:pick_head>.withTag({Material: key}), [itemUtils.getItem("tfc:metal/pick_head/" + key)]);
    recipes.addShapeless('tconstruct/tinker/axe/' + key, <tconstruct:axe_head>.withTag({Material: key}), [itemUtils.getItem("tfc:metal/axe_head/" + key)]);
    recipes.addShapeless('tconstruct/tinker/shovel/' + key, <tconstruct:shovel_head>.withTag({Material: key}), [itemUtils.getItem("tfc:metal/shovel_head/" + key)]);
    recipes.addShapeless('tconstruct/tinker/scythe/' + key, <tconstruct:scythe_head>.withTag({Material: key}), [itemUtils.getItem("tfc:metal/scythe_blade/" + key)]);
    recipes.addShapeless('tconstruct/tinker/sword/' + key, <tconstruct:sword_blade>.withTag({Material: key}), [itemUtils.getItem("tfc:metal/sword_blade/" + key)]);
    recipes.addShapeless('tconstruct/tinker/propick/' + key, <tfc_tinker:propick_head>.withTag({Material: key}), [itemUtils.getItem("tfc:metal/propick_head/" + key)]);

    recipes.addShapeless('tfc/metal/pick_head/' + key, itemUtils.getItem("tfc:metal/pick_head/" + key), [<tconstruct:pick_head>.withTag({Material: key})]);
    recipes.addShapeless('tfc/metal/axe_head/' + key, itemUtils.getItem("tfc:metal/axe_head/" + key), [<tconstruct:axe_head>.withTag({Material: key})]);
    recipes.addShapeless('tfc/metal/shovel_head/' + key, itemUtils.getItem("tfc:metal/shovel_head/" + key), [<tconstruct:shovel_head>.withTag({Material: key})]);
    recipes.addShapeless('tfc/metal/scythe_blade/' + key, itemUtils.getItem("tfc:metal/scythe_blade/" + key), [<tconstruct:scythe_head>.withTag({Material: key})]);
    recipes.addShapeless('tfc/metal/sword_blade/' + key, itemUtils.getItem("tfc:metal/sword_blade/" + key), [<tconstruct:sword_blade>.withTag({Material: key})]);
    recipes.addShapeless('tfc/metal/propick_head/' + key, itemUtils.getItem("tfc:metal/propick_head/" + key), [<tfc_tinker:propick_head>.withTag({Material: key})]);
  }
}