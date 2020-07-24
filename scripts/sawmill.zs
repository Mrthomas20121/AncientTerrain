import mods.thermalexpansion.Sawmill;
import mods.techreborn.industrialSawmill;

import crafttweaker.item.IItemStack;

var sawdust = <tfctech:powder/wood>;

val tfc_woods = {
    'acacia': {
        'log': <tfc:wood/log/acacia>,
        'plank': <tfc:wood/planks/acacia>,
        'lumber': <tfc:wood/lumber/acacia>,
        'trapdoor': <tfc:wood/trapdoor/acacia>,
        'door': <tfc:wood/door/acacia>
    } as IItemStack[string],
    'ash': {
        'log': <tfc:wood/log/ash>,
        'plank': <tfc:wood/planks/ash>,
        'lumber': <tfc:wood/lumber/ash>,
        'trapdoor': <tfc:wood/trapdoor/ash>,
        'door': <tfc:wood/door/ash>
    } as IItemStack[string],
    'aspen': {
        'log': <tfc:wood/log/aspen>,
        'plank': <tfc:wood/planks/aspen>,
        'lumber': <tfc:wood/lumber/aspen>,
        'trapdoor': <tfc:wood/trapdoor/aspen>,
        'door': <tfc:wood/door/aspen>
    } as IItemStack[string],
    'birch': {
        'log': <tfc:wood/log/birch>,
        'plank': <tfc:wood/planks/birch>,
        'lumber': <tfc:wood/lumber/birch>,
        'trapdoor': <tfc:wood/trapdoor/birch>,
        'door': <tfc:wood/door/birch>
    } as IItemStack[string],
    'blackwood': {
        'log': <tfc:wood/log/blackwood>,
        'plank': <tfc:wood/planks/blackwood>,
        'lumber': <tfc:wood/lumber/blackwood>,
        'trapdoor': <tfc:wood/trapdoor/blackwood>,
        'door': <tfc:wood/door/blackwood>
    } as IItemStack[string],
    'chestnut': {
        'log': <tfc:wood/log/chestnut>,
        'plank': <tfc:wood/planks/chestnut>,
        'lumber': <tfc:wood/lumber/chestnut>,
        'trapdoor': <tfc:wood/trapdoor/chestnut>,
        'door': <tfc:wood/door/chestnut>
    } as IItemStack[string],
    'douglas_fir': {
        'log': <tfc:wood/log/douglas_fir>,
        'plank': <tfc:wood/planks/douglas_fir>,
        'lumber': <tfc:wood/lumber/douglas_fir>,
        'trapdoor': <tfc:wood/trapdoor/douglas_fir>,
        'door': <tfc:wood/door/douglas_fir>
    } as IItemStack[string],
    'hickory': {
        'log': <tfc:wood/log/hickory>,
        'plank': <tfc:wood/planks/hickory>,
        'lumber': <tfc:wood/lumber/hickory>,
        'trapdoor': <tfc:wood/trapdoor/hickory>,
        'door': <tfc:wood/door/hickory>
    } as IItemStack[string],
    'hevea': {
        'log': <tfc:wood/log/hevea>,
        'plank': <tfc:wood/planks/hevea>,
        'lumber': <tfc:wood/lumber/hevea>,
        'trapdoor': <tfc:wood/trapdoor/hevea>,
        'door': <tfc:wood/door/hevea>
    } as IItemStack[string],
    'kapok': {
        'log': <tfc:wood/log/kapok>,
        'plank': <tfc:wood/planks/kapok>,
        'lumber': <tfc:wood/lumber/kapok>,
        'trapdoor': <tfc:wood/trapdoor/kapok>,
        'door': <tfc:wood/door/kapok>
    } as IItemStack[string],
    'maple': {
        'log': <tfc:wood/log/maple>,
        'plank': <tfc:wood/planks/maple>,
        'lumber': <tfc:wood/lumber/maple>,
        'trapdoor': <tfc:wood/trapdoor/maple>,
        'door': <tfc:wood/door/maple>
    } as IItemStack[string],
    'oak': {
        'log': <tfc:wood/log/oak>,
        'plank': <tfc:wood/planks/oak>,
        'lumber': <tfc:wood/lumber/oak>,
        'trapdoor': <tfc:wood/trapdoor/oak>,
        'door': <tfc:wood/door/oak>
    } as IItemStack[string],
    'palm': {
        'log': <tfc:wood/log/palm>,
        'plank': <tfc:wood/planks/palm>,
        'lumber': <tfc:wood/lumber/palm>,
        'trapdoor': <tfc:wood/trapdoor/palm>,
        'door': <tfc:wood/door/palm>
    } as IItemStack[string],
    'pine': {
        'log': <tfc:wood/log/pine>,
        'plank': <tfc:wood/planks/pine>,
        'lumber': <tfc:wood/lumber/pine>,
        'trapdoor': <tfc:wood/trapdoor/pine>,
        'door': <tfc:wood/door/pine>
    } as IItemStack[string],
    'rosewood': {
        'log': <tfc:wood/log/rosewood>,
        'plank': <tfc:wood/planks/rosewood>,
        'lumber': <tfc:wood/lumber/rosewood>,
        'trapdoor': <tfc:wood/trapdoor/rosewood>,
        'door': <tfc:wood/door/rosewood>
    } as IItemStack[string],
    'sequoia': {
        'log': <tfc:wood/log/sequoia>,
        'plank': <tfc:wood/planks/sequoia>,
        'lumber': <tfc:wood/lumber/sequoia>,
        'trapdoor': <tfc:wood/trapdoor/sequoia>,
        'door': <tfc:wood/door/sequoia>
    } as IItemStack[string],
    'sycamore': {
        'log': <tfc:wood/log/sycamore>,
        'plank': <tfc:wood/planks/sycamore>,
        'lumber': <tfc:wood/lumber/sycamore>,
        'trapdoor': <tfc:wood/trapdoor/sycamore>,
        'door': <tfc:wood/door/sycamore>
    } as IItemStack[string],
    'spruce': {
        'log': <tfc:wood/log/spruce>,
        'plank': <tfc:wood/planks/spruce>,
        'lumber': <tfc:wood/lumber/spruce>,
        'trapdoor': <tfc:wood/trapdoor/spruce>,
        'door': <tfc:wood/door/spruce>
    } as IItemStack[string],
    'white_cedar': {
        'log': <tfc:wood/log/white_cedar>,
        'plank': <tfc:wood/planks/white_cedar>,
        'lumber': <tfc:wood/lumber/white_cedar>,
        'trapdoor': <tfc:wood/trapdoor/white_cedar>,
        'door': <tfc:wood/door/white_cedar>
    } as IItemStack[string],
    'willow': {
        'log': <tfc:wood/log/willow>,
        'plank': <tfc:wood/planks/willow>,
        'lumber': <tfc:wood/lumber/willow>,
        'trapdoor': <tfc:wood/trapdoor/willow>,
        'door': <tfc:wood/door/willow>
    } as IItemStack[string],
} as IItemStack[string][string];

for woodTypes, wood in tfc_woods {
  Sawmill.addRecipe(wood['plank']*6, wood['log'], 2000, sawdust, 20);
  Sawmill.addRecipe(wood['plank']*3, wood['door'], 2000, sawdust, 20);
  Sawmill.addRecipe(wood['plank']*3, wood['trapdoor'], 2000, sawdust, 20);
  Sawmill.addRecipe(wood['lumber']*6, wood['plank'], 2000, sawdust, 20);
  Sawmill.addRecipe(sawdust*4, wood['lumber'], 2000);
  industrialSawmill.addRecipe(wood['plank']*8, sawdust, null, wood['log'], <liquid:fresh_water>*1000, 300, 100).setUseOreDict(false);
  industrialSawmill.addRecipe(wood['plank']*6, sawdust, null, wood['door'], <liquid:fresh_water>*1000, 300, 100).setUseOreDict(false);
  industrialSawmill.addRecipe(wood['plank']*6, sawdust, null, wood['trapdoor'], <liquid:fresh_water>*1000, 300, 100).setUseOreDict(false);
  industrialSawmill.addRecipe(wood['lumber']*8, sawdust, null, wood['plank'], <liquid:fresh_water>*1000, 300, 100).setUseOreDict(false);
}
industrialSawmill.addRecipe(sawdust*8, null, null, <ore:lumber>, <liquid:fresh_water>*1000, 100, 100);