import mods.immersivetechnology.Distiller;

// recipes removal
Distiller.removeRecipe(<liquid:water>);

// recipes addition
Distiller.addRecipe(<liquid:fresh_water> * 1000, <liquid:salt_water> * 1000, <ore:dustSalt>.firstItem, 4000, 40, 1);
Distiller.addRecipe(<liquid:distwater> * 1000, <liquid:fresh_water> * 1000, <ore:dustSalt>.firstItem, 4000, 40, 0.1);