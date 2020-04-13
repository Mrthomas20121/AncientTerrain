// remove ender io conduit binder recipe
recipes.remove(<enderio:item_material:22>);
furnace.remove(<enderio:item_material:4>);

furnace.addRecipe(<enderio:item_material:22>, <tconstruct:soil>);

// gears
recipes.remove(<ore:gearWood>);
recipes.removeByRecipeName("enderio:gear_wood");
recipes.removeByRecipeName("enderio:gear_ae2_messes_things_up");
recipes.removeByRecipeName("enderio:gear_just_to_be_sure");
recipes.removeByRecipeName("enderio:gear_better_save_than_sorry");
recipes.removeByRecipeName("thermalfoundation:material_59");
recipes.removeByRecipeName("appliedenergistics2:misc/grindstone_woodengear");
recipes.addShaped("crafttweaker_gear_wood", <thermalfoundation:material:22>, [
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
  [<ore:plankWood>, null, <ore:plankWood>],
  [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],
]);