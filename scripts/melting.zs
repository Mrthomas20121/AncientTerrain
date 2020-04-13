import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.thermalexpansion.Crucible;
import mods.nuclearcraft.melter;
import mods.tconstruct.Melting;

var melting = {
    <tfc:ore/bauxite> : <liquid:molten_bauxite>*25,
    <tfc:ore/bauxite:1> : <liquid:molten_bauxite>*15,
    <tfc:ore/bauxite:2> : <liquid:molten_bauxite>*35,
    <tfc:ore/small/bauxite> : <liquid:molten_bauxite>*10,
} as ILiquidStack[IItemStack];


function registerMelting(liquid as ILiquidStack, item as IItemStack, energyCost as int) {
  Crucible.addRecipe(liquid, item, energyCost);
  melter.addRecipe([item, liquid]);
  Melting.addRecipe(liquid, item, energyCost);

}

for l, item in melting {
  registerMelting(item, l, 750);
}