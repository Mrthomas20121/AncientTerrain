#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.PartBuilder;

// sandyDust
var sand_dust = VanillaFactory.createItem("sand_dust");
sand_dust.maxStackSize = 64;
sand_dust.register();

// dirt dust
var dirt_dust = VanillaFactory.createItem("dirt_dust");
dirt_dust.maxStackSize = 64;
dirt_dust.register();

var molten_bauxite = VanillaFactory.createFluid("molten_bauxite", Color.fromHex("9E5C3D"));
molten_bauxite.register();

var alcohol_solution = VanillaFactory.createFluid("alcohol_solution", Color.fromHex("8F96F7"));
alcohol_solution.register();

var lead_platinum_alcohol_solution = VanillaFactory.createFluid("lead_platinum_alcohol_solution", Color.fromHex("6C87F7"));
lead_platinum_alcohol_solution.register();

var tin_silver_alcohol_solution = VanillaFactory.createFluid("tin_silver_alcohol_solution", Color.fromHex("F0F0F0"));
tin_silver_alcohol_solution.register();

var sterling_silver_alcohol_solution = VanillaFactory.createFluid("sterling_silver_alcohol_solution", Color.fromHex("FED83E"));
sterling_silver_alcohol_solution.register();

var ender_sulfate_solution = VanillaFactory.createFluid("ender_sulfate_solution", Color.fromHex("117171"));
ender_sulfate_solution.register();