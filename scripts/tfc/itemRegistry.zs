#priority 10

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

function registerItem(registry as string, type as string, item as IItemStack) {
  if(registry == 'size') {
    if(type == 'dust') {
      ItemRegistry.registerItemSize(item, "SMALL", "VERY_LIGHT");
    }
    else if(type == 'powder') {
      ItemRegistry.registerItemSize(item, "SMALL", "LIGHT");
    }
    else if(type == 'ingot') {
      ItemRegistry.registerItemSize(item, "VERY_SMALL", "MEDIUM");
    }
  }
}

// register item size
var ingots = [
  <nuclearcraft:alloy:13>, 
  <nuclearcraft:alloy:5>, 
  <nuclearcraft:alloy:8>, 
  <mekanism:ingot>, 
  <mekanism:ingot:3>, 
  <thermalfoundation:material:165>, 
  <thermalfoundation:material:135>, 
  <thermalfoundation:material:166>,
  <thermalfoundation:material:167>,
  <nuclearcraft:ingot:15>,
  <nuclearcraft:alloy:13>,
  <nuclearcraft:ingot_oxide:3>,
  <nuclearcraft:ingot_oxide:2>,
  <nuclearcraft:ingot_oxide:1>,
  <nuclearcraft:ingot_oxide>,
  <nuclearcraft:ingot:11>,
  <nuclearcraft:ingot:4>
  ] as IItemStack[];

for ingot in ingots {
  registerItem('size', 'ingot', ingot);
}

ItemRegistry.registerItemSize(<thermalfoundation:rockwool:7>, "SMALL", "MEDIUM");

var dusts = [
  <fluxnetworks:flux>,
  <appliedenergistics2:material:2>,
  <appliedenergistics2:material:46>,
  <appliedenergistics2:material:8>,
  <appliedenergistics2:material:3>

] as IItemStack[];

for dust in dusts {
  registerItem('size', 'dust', dust);
}

// Register Item Heat
ItemRegistry.registerItemHeat(<enderio:item_material:22>, 0.10, 500.3, false);
ItemRegistry.registerItemHeat(<enderio:item_material:4>, 0.10, 500.5, false);
ItemRegistry.registerItemHeat(<thermalfoundation:material:864>, 0.10, 300.0, false);
ItemRegistry.registerItemHeat(<thermalfoundation:rockwool:7>, 0.20, 450.0, false);
ItemRegistry.registerItemHeat(<nuclearcraft:dust:4>, 0.20, 450.1, false);
ItemRegistry.registerItemHeat(<nuclearcraft:ingot:4>, 0.20, 450.1, false);

// heating recipes
Heating.addRecipe("enderio/conduit_binder", <enderio:item_material:22>, <enderio:item_material:4>, 400, 600);
Heating.addRecipe("thermalfoundation/rockwool", <thermalfoundation:material:864>, <thermalfoundation:rockwool:7>, 300, 600);