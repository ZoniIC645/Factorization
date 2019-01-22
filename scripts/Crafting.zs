import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.liquid.ILiquidStack as ILiquidStack;
//experimental
function infuseFluid(input as IItemStack,fluid as ILiquidStack,output as IItemStack,energyAmount as int,FluidAmount as int){
	mods.immersiveengineering.BottlingMachine.addRecipe(output,input,fluid*FluidAmount);
	mods.thermalexpansion.Transposer.addFillRecipe(output, input,fluid*FluidAmount, energyAmount);
	mods.tconstruct.Casting.addTableRecipe(output,input, fluid, FluidAmount,true);
}

//Obsidian Prime 
mods.biggercraftingtables.Huge.addShapeless(<contenttweaker:unstable_obsidian_prime>,[<minecraft:obsidian>,<chisel:obsidian>,<chisel:obsidian:1>,<chisel:obsidian:2>,<chisel:obsidian:3>,<chisel:obsidian:4>,<chisel:obsidian:5>,<chisel:obsidian:6>,<chisel:obsidian:7>,<chisel:obsidian:8>,<chisel:obsidian:9>,<chisel:obsidian:10>,<chisel:obsidian:11>,<chisel:obsidian:12>,<chisel:obsidian:13>,<chisel:obsidian:14>]);
infuseFluid(<contenttweaker:unstable_obsidian_prime>,<liquid:obsidian>,<contenttweaker:obsidian_prime>,4000,6000);

//Plant_Ball_of_TerraFirma
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:plantball_terrafirma>, <ic2:terra_wart>*4,<industrialforegoing:pink_slime>, 4800);

//Abyss_Stew
mods.immersiveengineering.Mixer.addRecipe(<liquid:abyss_stew>*200, <liquid:dist_water>*200,[<ic2:nuclear:2>,<ore:fish>*2,<minecraft:egg>*2], 4800);
infuseFluid(<minecraft:bowl>,<liquid:abyss_stew>,<contenttweaker:abyss_stew>,300,2000);

//Happiness_Fluid
mods.immersiveengineering.Mixer.addRecipe(<liquid:happiness_fluid>*100,<liquid:dist_water>*500,[<minecraft:ghast_tear>,<minecraft:red_flower>,<immersiveengineering:seed>],4800);

//Happiness_Circuit
mods.thaumcraft.Infusion.registerRecipe("void_happiness_circuit","",<contenttweaker:void_happiness_circuit>, 20,[<aspect:aer>*64,<aspect:terra>*64,<aspect:ignis>*64,<aspect:aqua>*64,<aspect:ordo>*64,<aspect:perditio>*64],<immersiveengineering:material:27>, [<contenttweaker:obsidian_prime>,<minecraft:book>,<exnihilocreatio:item_material:5>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<contenttweaker:void_happiness_circuit>,<thaumcraft:brain>*10], 5, [<contenttweaker:happiness_circuit>]);
infuseFluid(<contenttweaker:burnt_happiness_circuit>,<liquid:happiness_fluid>,<contenttweaker:happiness_circuit>,4800,2000);

//biological goo
mods.tconstruct.Alloy.addRecipe(<liquid:bio_goo> * 10, [<liquid:biomass> * 80, <liquid:if.ore_fluid_raw>.withTag({Ore: "oreIron"}) * 10]);
infuseFluid(<minecraft:iron_ingot>,<liquid:bio_goo>,<contenttweaker:biological_iron>,4800,200);

//stalinless steel
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:stalinless_steel>, <ore:ingotRefinedIron> * 6, <enderio:item_alloy_ingot:9> * 2, 500, 2048, [<ore:dustSmallManganese>, <ore:ingotChrome>], "Alloying");
//essence of greed
infuseFluid(<enderio:item_material:17>,<liquid:xpjuice>,<contenttweaker:greed_crystal>,4800,1337);

//batteries
recipes.addShaped(<contenttweaker:battery_hull>, [[null, <techreborn:cable:4>, null],[<ore:plateLumium>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}), <ore:plateLumium>], [<ore:plateLumium>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}), <ore:plateLumium>]]);
infuseFluid(<contenttweaker:battery_hull>,<liquid:alkali>,<contenttweaker:alkaline_battery>,4800,4001);
mods.immersiveengineering.Mixer.addRecipe(<liquid:alkali> * 1000, <liquid:fluidsodium> * 1000, [<ore:dustSmallManganese>, <ore:dustZinc>], 2048);
infuseFluid(<contenttweaker:battery_hull>,<liquid:liquid_sunshine>,<contenttweaker:sunshine_battery>,4800,4001);

//industrial_steel
mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 75, 300);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:bloom>,<ore:ingotRefinedIron> , null, 300, 300);
mods.immersiveengineering.BlastFurnace.addRecipe(<contenttweaker:bloom>, <ore:ingotRefinedIron>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:molten_bloom>*100,<contenttweaker:bloom>,2000);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:block_bloom>, null, <liquid:molten_bloom>, 1000);
recipes.addShapeless(<contenttweaker:industrial_steel>,[<immersiveengineering:tool>,<contenttweaker:block_bloom>]);

//chrome
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:chrome>,<ore:oreRuby>*5,null,300,300);

//hots
infuseFluid(<minecraft:ender_pearl>,<liquid:liquid_death>,<contenttweaker:hots_used>,4800,500);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:hots>, <contenttweaker:hots_used>,<contenttweaker:burnt_happiness_circuit>, 3000, 480, [<contenttweaker:happiness_circuit>,<ic2:crafting:6>*4]);

//manastone
mods.immersiveengineering.Mixer.addRecipe(<liquid:overheated_mana_steam>*2000,<liquid:ic2superheated_steam>*2000,[<minecraft:shulker_shell>],4800);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:waterflame>,<thermalfoundation:material:1024>, <thermalfoundation:material:1025>, 4800);
mods.thaumcraft.Crucible.registerRecipe("teraburning", "", <contenttweaker:teraburning>, <ore:dustPetrotheum>,[<aspect:ignis>*64]);
mods.immersiveengineering.Mixer.addRecipe(<liquid:mana>*1000,<liquid:overheated_mana_steam>*2000,[<contenttweaker:waterflame>,<contenttweaker:teraburning>],4800);
infuseFluid(<ic2:resource:11>,<liquid:mana>,<contenttweaker:manastone>,4800,500);

//Beeholder
mods.thaumcraft.Crucible.registerRecipe("tainted_bee","",<contenttweaker:tainted_bee>,<forestry:bee_princess_ge>,[<aspect:vitium>*64]);
mods.pneumaticcraft.assembly.addLaserRecipe(<contenttweaker:tainted_bee>,<contenttweaker:beeholders_eye>);

//bluebird
mods.thaumcraft.Infusion.registerRecipe("bluebird","",<contenttweaker:bluebird>,20,[<aspect:ignis>*10],<minecraft:feather>,[<minecraft:lapis_block>,<minecraft:cooked_chicken>,<minecraft:rotten_flesh>,<minecraft:leather>,<thaumcraft:brain>]);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:bluebird>*3, <contenttweaker:bluebird>, <contenttweaker:happiness_circuit>, 9600, <contenttweaker:burnt_happiness_circuit>, 100);

//twitter
mods.techreborn.chemicalReactorRecipe.addRecipe(<contenttweaker:offline_twitter>, <contenttweaker:bluebird>, <ore:ingotDemonicMetal>, 40, 128);
mods.pneumaticcraft.pressurechamber.addRecipe([<contenttweaker:offline_twitter>,<extrautils2:terraformer:1>], 3.0, [<contenttweaker:twitter>]);

//little prince 
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:hat>,<minecraft:leather_helmet> , <contenttweaker:happiness_circuit>, 9600, <contenttweaker:burnt_happiness_circuit>, 100);
	//hat -> boa (2way)
	mods.techreborn.extractor.addRecipe(<contenttweaker:boa>, <contenttweaker:hat>, 300, 100);
	mods.thermalexpansion.Centrifuge.addRecipe([<contenttweaker:boa>], <contenttweaker:hat>, <liquid:water>*3000, 30000);
mods.thermalexpansion.Centrifuge.addRecipe([<contenttweaker:snake_slough>,<contenttweaker:elephant>], <contenttweaker:boa>, <liquid:blood>*30, 30000);

//python
recipes.addShaped(<contenttweaker:python>,[[<contenttweaker:snake_slough>, <contenttweaker:snake_slough>, <contenttweaker:snake_slough>],[<contenttweaker:snake_slough>, <immersiveengineering:material:27>, <contenttweaker:snake_slough>], [<contenttweaker:snake_slough>, <contenttweaker:snake_slough>, <contenttweaker:snake_slough>]]);

//sprucians
recipes.addShaped(<contenttweaker:sprucians>, [[<minecraft:planks:1>*16, <appliedenergistics2:facade>, <minecraft:planks:1>*16],[<appliedenergistics2:facade>, <minecraft:sign>*3, <appliedenergistics2:facade>], [<bibliocraft:potionshelf:1>, <appliedenergistics2:facade>, <bibliocraft:potionshelf:1>]]);
