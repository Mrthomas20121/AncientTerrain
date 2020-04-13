import mods.techreborn.compressor;

var met = [
  'sterling_silver', 
  'invar', 
  'electrum', 
  'steel', 
  'red_steel', 
  'wrought_iron', 
  'silver', 
  'nickel', 
  'copper', 
  'gold', 
  'tin',
  'osmium', 
  'nickel_silver', 
  'bismuth', 
  'bismuth_bronze', 
  'bronze', 
  'black_bronze', 
  'black_steel', 
  'blue_steel',
  'lead',
  'pig_iron',
  'platinum',
  'antimony',
  'constantan',
  'red_alloy',
  'mithril',
  'aluminium',
  'aluminium_brass',
  'ardite',
  'cobalt',
  'manyullyn',
  'titanium',
  'tungsten',
  'tungsten_steel'
] as string[];

for m in met {
  compressor.addRecipe(itemUtils.getItem('tfc:metal/sheet/' + m), itemUtils.getItem('tfc:metal/double_ingot/' + m), 100, 50);
  compressor.addRecipe(itemUtils.getItem('tfc:metal/double_sheet/' + m), itemUtils.getItem('tfc:metal/sheet/' + m)*2, 1000, 60);
  compressor.addRecipe(itemUtils.getItem('tfc:metal/double_ingot/' + m), itemUtils.getItem('tfc:metal/ingot/' + m)*2, 1000, 60);
}