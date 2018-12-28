#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var abyss_stew = VanillaFactory.createFluid("abyss_stew", Color.fromHex("5f6b5c"));
abyss_stew.fillSound = <soundevent:block.anvil.place>;
abyss_stew.register();

var happiness_fluid = VanillaFactory.createFluid("happiness_fluid", Color.fromHex("42f4f4"));
happiness_fluid.register();

var bio_goo = VanillaFactory.createFluid("bio_goo", Color.fromHex("004f00"));
bio_goo.register();

var alkali = VanillaFactory.createFluid("alkali", Color.fromHex("d8e7ff"));
alkali.register();