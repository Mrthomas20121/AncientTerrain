import mods.techreborn.blastFurnace;

var metals = {
  'sterling_silver':1000,
  'invar':1000,
  'electrum':1500,
  'steel':2000
} as int[string];

// for metalName, heat in metals {
//   blastFurnace.addRecipe(OreDict['ingotHot'], <techreborn:dust:15>*4, itemUtils.getItem('tfc:metal/ingot/' + metalName), null, 100, 50, heat);
// }

blastFurnace.addRecipe(<nuclearcraft:dust_oxide:3>, <techreborn:dust:15>*4, <tfc:ore/pyrolusite>, null, 100, 60, 2000);