/*

Tools.zs - by Mrthomas20121

*/

var pickaxe_copper = <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.3 as float, FreeModifiers: 3, Durability: 335, HarvestLevel: 1, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.3 as float, FreeModifiers: 3, Durability: 335, HarvestLevel: 1, Attack: 3.0 as float}, Special: {Categories: ["harvest", "aoe", "tool"]}, TinkerData: {Materials: ["wood", "copper", "copper"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "established", color: -1204473, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "established", "toolleveling"]});

recipes.addShapeless('pickaxe_copper', pickaxe_copper, [<tconstruct:pick_head>.withTag({Material: "copper"}), <minecraft:stick>]);