#priority 10
import mods.jei.JEI;
import crafttweaker.item.IItemStack;
/*
  jei.zs by Mrthomas20121
*/

var hideItems = [
  <actuallyadditions:item_dust>,
  <actuallyadditions:item_dust:1>,
  <actuallyadditions:item_dust:2>,
  <actuallyadditions:item_dust:3>,
  <actuallyadditions:item_dust:4>,
  <actuallyadditions:item_dust:6>,
  <actuallyadditions:item_dust:5>, 
  <tconstruct:ingots:4>, 
  <tconstruct:nuggets:4>, 
  <tconstruct:ingots:1>, 
  <tconstruct:ingots>, 
  <tconstruct:nuggets:1>, 
  <tconstruct:nuggets>, 
  <tconstruct:ingots:5>, 
  <tconstruct:ingots:2>,
  <mekanism:ingot:1>,
  <mekanism:ingot:2>,
  <mekanism:ingot:4>,
  <mekanism:ingot:5>,
  <mekanism:ingot:6>,
  <mekanism:dust:1>,
  <mekanism:dust:2>,
  <mekanism:dust:3>,
  <mekanism:dust:4>,
  <mekanism:dust:5>,
  <mekanism:dust:6>,
  <mekanism:otherdust:0>,
  <mekanism:otherdust:1>,
  <mekanism:otherdust:3>,
  <mekanism:otherdust:4>,
  <mekanism:otherdust:6>,
  <mekanism:oreblock:2>,
  <mekanism:oreblock>,
  <mekanism:oreblock:1>,
  <nuclearcraft:ore:2>,
  <nuclearcraft:ore:3>,
  <nuclearcraft:ore:5>,
  <nuclearcraft:ore:6>,
  <nuclearcraft:ore:7>,
  <nuclearcraft:gem:6>,
  <nuclearcraft:gem_dust:0>,
  <nuclearcraft:gem_dust:7>,
  <nuclearcraft:gem_dust:3>,
  <nuclearcraft:gem_dust:11>,
  <nuclearcraft:ore:4>,
  <nuclearcraft:ore>,
  <nuclearcraft:ore:1>,
  <nuclearcraft:dust>,
  <nuclearcraft:dust:1>,
  <nuclearcraft:dust:2>,
  <nuclearcraft:dust:4>,
  <nuclearcraft:dust:8>,
  <nuclearcraft:dust:12>,
  <nuclearcraft:dust:13>,
  <nuclearcraft:ingot:13>,
  <nuclearcraft:gem_dust:6>,
  <thermalfoundation:material:771>,
  <thermalfoundation:material:768>,
  <thermalfoundation:material:96>,
  <thermalfoundation:material:32>,
  <thermalfoundation:material:33>,
  <thermalfoundation:material:324>,
  <thermalfoundation:material:135>,
  <thermalfoundation:material:68>,
  <appliedenergistics2:material:46>,
  <thermalfoundation:material:65>,
  <thermalfoundation:material:71>,
  <thermalfoundation:material>,
  <thermalfoundation:material:770>,
  <thermalfoundation:material:69>,
  <thermalfoundation:material:1>,
  <thermalfoundation:material:64>,
  <thermalfoundation:material:67>,
  <techreborn:dust:34>,
  <techreborn:dust:24>,
  <techreborn:dust:29>,
  <techreborn:dust:38>,
  <techreborn:dust:53>,
  <techreborn:dust:14>,
  <techreborn:dust:47>,
  <techreborn:dust:51>,
  <techreborn:dust:52>,
  <techreborn:ingot:11>,
  <techreborn:ingot:4>,
  <techreborn:ingot:9>,
  <techreborn:ingot:8>,
  <techreborn:ingot:13>,
  <techreborn:ingot:10>,
  <appliedenergistics2:material:51>
] as IItemStack[];

for item in hideItems {
  JEI.hide(item);
}
var items = [
  <tconstruct:throwball:1>, 
  <thermalfoundation:material:164>, 
  <thermalfoundation:material:97>, 
  <thermalfoundation:material:98>, 
  <thermalfoundation:material:99>, 
  <thermalfoundation:material:100>, 
  <thermalfoundation:material:128>, 
  <thermalfoundation:material:129>, 
  <thermalfoundation:material:130>, 
  <thermalfoundation:material:131>, 
  <thermalfoundation:material:132>,
  <thermalfoundation:material:133>, 
  <thermalfoundation:material:134>, 
  <thermalfoundation:material:136>,
  <thermalfoundation:material:160>, 
  <thermalfoundation:material:161>, 
  <thermalfoundation:material:162>, 
  <thermalfoundation:material:163>, 
  <nuclearcraft:ingot>, 
  <nuclearcraft:ingot:1>, 
  <nuclearcraft:ingot:2>, 
  <nuclearcraft:ingot:12>, 
  <nuclearcraft:alloy>, 
  <nuclearcraft:alloy:5>, 
  <thermalfoundation:ore:8>, 
  <thermalfoundation:material:256>, 
  <thermalfoundation:material:24>, 
  <thermalfoundation:material:25>, 
  <thermalfoundation:material:257>, 
  <thermalfoundation:material:258>, 
  <thermalfoundation:material:259>, 
  <thermalfoundation:material:260>, 
  <thermalfoundation:material:261>, 
  <thermalfoundation:material:262>, 
  <thermalfoundation:material:288>, 
  <thermalfoundation:material:289>, 
  <thermalfoundation:material:290>, 
  <thermalfoundation:material:291>, 
  <thermalfoundation:material:292>, 
  <enderio:item_material:5>,
  <tconstruct:stone_torch>
] as IItemStack[];

for item in items {
  JEI.removeAndHide(item);
}

var mat = ['copper', 'silver', 'constantan', 'steel', 'platinum', 'tin', 'nickel', 'aluminum', 'lead', 'electrum', 'diamond', 'gold', 'iron', 'bronze', 'invar'] as string[];

for str in mat {

  if(str == 'diamond' || str == 'gold' || str == 'iron') {
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.fishing_rod_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.sickle_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.hammer_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.excavator_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.shield_'+str));
	  JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.bow_'+str));
    if(str != 'iron') {
      JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.shears_'+str));
    }
  }
  else {
    // tools
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.axe_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.pickaxe_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.shovel_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.sword_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.hoe_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.bow_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.fishing_rod_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.shears_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.sickle_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.hammer_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.excavator_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:tool.shield_'+str));
    // armor
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:armor.helmet_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:armor.plate_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:armor.legs_'+str));
    JEI.removeAndHide(itemUtils.getItem('thermalfoundation:armor.boots_'+str));
  }
}