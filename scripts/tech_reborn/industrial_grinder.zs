import mods.techreborn.industrialGrinder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

// remove all recipes
industrialGrinder.removeAll();

// netherrack
industrialGrinder.addRecipe(<techreborn:dust:33>*16, <tfc:metal/nugget/gold>, null, null, <ore:netherrack>*16, null, <liquid:fresh_water>*1000, 1000, 56);
industrialGrinder.addRecipe(<techreborn:dust:33>*8, <tfc:metal/nugget/gold>, null, null, <ore:netherrack>*8, null, <liquid:fresh_water>*1000, 500, 56);
// endstone
industrialGrinder.addRecipe(<techreborn:dust:21>*2, null, null, null, <minecraft:end_bricks>, null, <liquid:fresh_water>*1000, 100, 56);
industrialGrinder.addRecipe(<techreborn:dust:21>, null, null, null, <ore:endstone>, null, <liquid:fresh_water>*1000, 100, 56);

var mercury = <liquid:fluidmercury>;
var ores = {
  'osmium': {
    'rich':<tfc:ore/native_osmium:2>,
    'normal':<tfc:ore/native_osmium>,
    'poor':<tfc:ore/native_osmium:1>,
    'small':<tfc:ore/small/native_osmium>,
    'dust': <ore:dustSmallOsmium>.firstItem
  } as IItemStack[string],
  'copper': {
    'rich':<tfc:ore/native_copper:2>,
    'normal':<tfc:ore/native_copper>,
    'poor':<tfc:ore/native_copper:1>,
    'small':<tfc:ore/small/native_copper>,
    'dust': <ore:dustSmallCopper>.firstItem
  } as IItemStack[string],
  'malachite': {
    'rich':<tfc:ore/malachite:2>,
    'normal':<tfc:ore/malachite>,
    'poor':<tfc:ore/malachite:1>,
    'small':<tfc:ore/small/malachite>,
    'dust': <ore:dustSmallCopper>.firstItem
  } as IItemStack[string],
  'tetrahedrite': {
    'rich':<tfc:ore/tetrahedrite:2>,
    'normal':<tfc:ore/tetrahedrite>,
    'poor':<tfc:ore/tetrahedrite:1>,
    'small':<tfc:ore/small/tetrahedrite>,
    'dust': <ore:dustSmallCopper>.firstItem
  } as IItemStack[string],
  'silver': {
    'rich':<tfc:ore/native_silver:2>,
    'normal':<tfc:ore/native_silver>,
    'poor':<tfc:ore/native_silver:1>,
    'small':<tfc:ore/small/native_silver>,
    'dust': <ore:dustSmallSilver>.firstItem
  } as IItemStack[string],
  'gold': {
    'rich':<tfc:ore/native_gold:2>,
    'normal':<tfc:ore/native_gold>,
    'poor':<tfc:ore/native_gold:1>,
    'small':<tfc:ore/small/native_gold>,
    'dust': <ore:dustSmallGold>.firstItem
  } as IItemStack[string],
  'platinum': {
    'rich':<tfc:ore/native_platinum:2>,
    'normal':<tfc:ore/native_platinum>,
    'poor':<tfc:ore/native_platinum:1>,
    'small':<tfc:ore/small/native_platinum>,
    'dust': <ore:dustSmallPlatinum>.firstItem
  } as IItemStack[string],
  'galena': {
    'rich':<tfc:ore/galena:2>,
    'normal':<tfc:ore/galena>,
    'poor':<tfc:ore/galena:1>,
    'small':<tfc:ore/small/galena>,
    'dust': <ore:dustGalena>.firstItem
  } as IItemStack[string],
  'sphalerite': {
    'rich':<tfc:ore/sphalerite:2>,
    'normal':<tfc:ore/sphalerite>,
    'poor':<tfc:ore/sphalerite:1>,
    'small':<tfc:ore/small/sphalerite>,
    'dust': <ore:dustSphalerite>.firstItem
  } as IItemStack[string],
  'cassiterite': {
    'rich':<tfc:ore/cassiterite:2>,
    'normal':<tfc:ore/cassiterite>,
    'poor':<tfc:ore/cassiterite:1>,
    'small':<tfc:ore/small/cassiterite>,
    'dust': <ore:dustSmallTin>.firstItem
  } as IItemStack[string],
  'ardite': {
    'rich':<tfc:ore/native_ardite:2>,
    'normal':<tfc:ore/native_ardite>,
    'poor':<tfc:ore/native_ardite:1>,
    'small':<tfc:ore/small/native_ardite>,
    'dust': <ore:dustSmallArdite>.firstItem
  } as IItemStack[string],
  'cobalt': {
    'rich':<tfc:ore/cobaltite:2>,
    'normal':<tfc:ore/cobaltite>,
    'poor':<tfc:ore/cobaltite:1>,
    'small':<tfc:ore/small/cobaltite>,
    'dust': <ore:dustSmallCobalt>.firstItem
  } as IItemStack[string],
  'stibnite': {
    'rich':<tfc:ore/stibnite:2>,
    'normal':<tfc:ore/stibnite>,
    'poor':<tfc:ore/stibnite:1>,
    'small':<tfc:ore/small/stibnite>,
    'dust': <ore:dustSmallAntimony>.firstItem
  } as IItemStack[string],
} as IItemStack[string][string];

var liquids = [<liquid:fluidmercury>*500, <liquid:fresh_water>*500] as ILiquidStack[];

for ore, type in ores {

  for liq in liquids {
    if(ore == 'copper' || ore == 'malachite' || ore == 'tetrehedrite') {
    industrialGrinder.addRecipe(type['dust']*8, <ore:dustSmallGold>.firstItem*4, null, null, type['rich'], null, liq, 100, 200).setUseOreDict(false);
    industrialGrinder.addRecipe(type['dust']*6, <ore:dustSmallGold>.firstItem*3, null, null, type['normal'], null, liq, 100, 200).setUseOreDict(false);
    industrialGrinder.addRecipe(type['dust']*4, <ore:dustSmallGold>.firstItem*2, null, null, type['poor'], null, liq, 100, 200).setUseOreDict(false);
    industrialGrinder.addRecipe(type['dust']*2, <ore:dustSmallGold>.firstItem*1, null, null, type['small'], null, liq, 100, 200).setUseOreDict(false);
    }
    else if(ore == 'gold') {
        industrialGrinder.addRecipe(type['dust']*8, <ore:dustSmallCopper>.firstItem*3, null, null, type['rich'], null, liq, 100, 200).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*6, <ore:dustSmallCopper>.firstItem*2, null, null, type['normal'], null, liq, 100, 200).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*4, <ore:dustSmallCopper>.firstItem*1, null, null, type['poor'], null, liq, 100, 200).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*2, <ore:dustSmallCopper>.firstItem*2, null, null, type['small'], null, liq, 100, 200).setUseOreDict(false);
    }
    else if(ore == 'platinum') {
        industrialGrinder.addRecipe(type['dust']*8, <ore:dustSmallIridium>.firstItem*3, null, null, type['rich'], null, liq, 100, 500).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*6, <ore:dustSmallIridium>.firstItem*2, null, null, type['normal'], null, liq, 100, 500).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*4, <ore:dustSmallIridium>.firstItem*1, null, null, type['poor'], null, liq, 100, 500).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*2, <ore:dustSmallIridium>.firstItem*2, null, null, type['small'], null, liq, 100, 500).setUseOreDict(false);
    }
    else {
        industrialGrinder.addRecipe(type['dust']*8, null, null, null, type['rich'], null, liq, 100, 500).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*6, null, null, null, type['normal'], null, liq, 100, 500).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*4, null, null, null, type['poor'], null, liq, 100, 500).setUseOreDict(false);
        industrialGrinder.addRecipe(type['dust']*2, null, null, null, type['small'], null, liq, 100, 500).setUseOreDict(false);
    }
  }
}

// thorium dust
industrialGrinder.addRecipe(<techreborn:smalldust:67>*7, null, null, null, <tfc:ore/thorianite>, null, mercury*500, 100, 500);

industrialGrinder.addRecipe(<minecraft:redstone>*12, <fluxnetworks:flux>*9, null, null, <techreborn:dust:11>*4, null, <liquid:fresh_water>*1000, 30, 500);

// magnesium
industrialGrinder.addRecipe(<techreborn:smalldust:30>*7, <techreborn:smalldust:36>, null, null, <tfc:ore/serpentine>*2, null, <liquid:fresh_water>*500, 100, 50);
industrialGrinder.addRecipe(<techreborn:smalldust:30>*9, <techreborn:smalldust:36>*2, null, null, <tfc:ore/serpentine>*2, null, mercury*500, 100, 50);

// calcium sulfate
industrialGrinder.addRecipe(<nuclearcraft:compound>*1, null, null, null, <tfc:ore/selenite>*2, null, <liquid:fresh_water>*500, 100, 50);
industrialGrinder.addRecipe(<nuclearcraft:compound>*3, null, null, null, <tfc:ore/selenite>*2, null, mercury*500, 100, 50);

// lithium
industrialGrinder.addRecipe(<nuclearcraft:dust:6>*1, null, null, null, <tfc:ore/spodumene>*2, null, <liquid:fresh_water>*500, 100, 50);
industrialGrinder.addRecipe(<nuclearcraft:dust:6>*3, null, null, null, <tfc:ore/spodumene>*2, null, mercury*500, 100, 50);

// chrome
industrialGrinder.addRecipe(<techreborn:dust:10>*7, null, null, null, <tfc:ore/chromite>*2, null, <liquid:fresh_water>*500, 100, 50);
industrialGrinder.addRecipe(<techreborn:dust:10>*9, null, null, null, <tfc:ore/chromite>*2, null, mercury*500, 100, 50);

// olivine
industrialGrinder.addRecipe(<techreborn:dust:36>*7, <techreborn:smalldust:36>*3, null, null, <tfc:ore/olivine>, null, <liquid:fresh_water>*500, 100, 50);
industrialGrinder.addRecipe(<techreborn:dust:36>*9, <techreborn:smalldust:36>*5, null, null, <tfc:ore/olivine>, null, mercury*500, 100, 50); 

// magnesite
industrialGrinder.addRecipe(<jaopca:item_dustsmallwroughtiron>*2, <techreborn:smalldust:31>*5, <jaopca:item_dustsmallcobalt>*2, <techreborn:smalldust:34>*2, <tfc:ore/magnesite>, null, <liquid:fresh_water>*500, 100, 50);
industrialGrinder.addRecipe(<jaopca:item_dustsmallwroughtiron>*2, <techreborn:smalldust:31>*7, <jaopca:item_dustsmallcobalt>*3, <techreborn:smalldust:34>*3, <tfc:ore/magnesite>, null, mercury*500, 100, 50); 