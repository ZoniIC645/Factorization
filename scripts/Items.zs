#loader contenttweaker
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack as IItemStack;

//Creative tab
//val zsTab = VanillaFactory.createCreativeTab("Score Item", <minecraft:dragon_egg>);
//zsTab.register();

//Obsidian_Prime
var Obsidian_Prime = VanillaFactory.createItem("obsidian_prime");
Obsidian_Prime.maxStackSize = 1;
Obsidian_Prime.register();

//Unstable_Obsidian_Prime
var Unstable_Obsidian_Prime = VanillaFactory.createItem("unstable_obsidian_prime");
Unstable_Obsidian_Prime.register();

//Plant_Ball_of_TerraFirma
var Plant_Ball_of_TerraFirma = VanillaFactory.createItem("plantball_terrafirma");
Plant_Ball_of_TerraFirma.register();

//Abyss_Stew
var Abyss_Stew = VanillaFactory.createItem("abyss_stew");
Abyss_Stew.register();

//Happiness_Circuit
var Void_Happiness_Circuit = VanillaFactory.createItem("void_happiness_circuit");
var Burnt_Happiness_Circuit = VanillaFactory.createItem("burnt_happiness_circuit");
var Happiness_Circuit = VanillaFactory.createItem("happiness_circuit");
Void_Happiness_Circuit.register();
Burnt_Happiness_Circuit.register();
Happiness_Circuit.register();

//Stalinless_Steel
var Stalinless_Steel = VanillaFactory.createItem("stalinless_steel");
Stalinless_Steel.register();

//Biological_Iron
var Biological_Iron = VanillaFactory.createItem("biological_iron");
Biological_Iron.register();

//korean_ramen_powder
var korean_ramen_powder = VanillaFactory.createItem("korean_ramen_powder");
korean_ramen_powder.register();