// ender io energy conduit
recipes.removeByRecipeName("enderio:conduit_endergy_tier_1");
recipes.addShaped('energy_conduit', <enderio:item_power_conduit>, [
  [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
  [<ore:ingotBismuthBronze>, <ore:ingotBismuthBronze>, <ore:ingotBismuthBronze>],
  [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

// ender io enhanced energy conduit
recipes.removeByRecipeName("enderio:conduit_endergy_tier_2");
recipes.removeByRecipeName("enderio:conduit_endergy_tier_2_upgrade");
recipes.addShaped('enhanced_energy_conduit', <enderio:item_power_conduit:1>, [
  [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
  [<ore:ingotPigIron>, <enderio:item_power_conduit>, <ore:ingotPigIron>],
  [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);

// ender io enhanced energy conduit
recipes.removeByRecipeName("enderio:conduit_endergy_tier_3");
recipes.removeByRecipeName("enderio:conduit_endergy_tier_3_upgrade");
recipes.addShaped('ender_energy_conduit', <enderio:item_power_conduit:2>, [
  [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
  [<ore:ingotRedSteel>, <enderio:item_power_conduit:1>, <ore:ingotRedSteel>],
  [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]
]);