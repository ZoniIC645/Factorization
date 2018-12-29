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
infuseFluid(<contenttweaker:unstable_obsidian_prime>,<liquid:obsidian>,<contenttweaker:obsidian_prime>,4000,2000);

//Plant_Ball_of_TerraFirma
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:plantball_terrafirma>, <ic2:terra_wart>*4,<industrialforegoing:pink_slime>, 4800);

//Abyss_Stew
mods.immersiveengineering.Mixer.addRecipe(<liquid:abyss_stew>*200, <liquid:dist_water>*200,[<ic2:nuclear:2>,<ore:fish>*2,<minecraft:egg>*2], 4800);
infuseFluid(<minecraft:bowl>,<liquid:abyss_stew>,<contenttweaker:abyss_stew>,300,2000);

//Happiness_Fluid
mods.immersiveengineering.Mixer.addRecipe(<liquid:happiness_fluid>*500,<liquid:dist_water>*500,[<minecraft:ghast_tear>,<minecraft:red_flower>,<immersiveengineering:seed>],4800);

//Happiness_Circuit
mods.thaumcraft.Infusion.registerRecipe("void_happiness_circuit","",<contenttweaker:void_happiness_circuit>, 20,[<aspect:aer>*64,<aspect:terra>*64,<aspect:ignis>*64,<aspect:aqua>*64,<aspect:ordo>*64,<aspect:perditio>*64],<immersiveengineering:material:27>, [<contenttweaker:obsidian_prime>,<minecraft:book>,<exnihilocreatio:item_material:5>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<contenttweaker:void_happiness_circuit>,<thaumcraft:brain>*10], 5, [<contenttweaker:happiness_circuit>]);
infuseFluid(<contenttweaker:burnt_happiness_circuit>,<liquid:happiness_fluid>,<contenttweaker:happiness_circuit>,4800,10000);

//biological goo
mods.tconstruct.Alloy.addRecipe(<liquid:bio_goo> * 10, [<liquid:biomass> * 80, <liquid:if.ore_fluid_raw>.withTag({Ore: "oreIron"}) * 10]);
infuseFluid(<minecraft:iron_ingot>,<liquid:bio_goo>,<contenttweaker:biological_iron>,4800,4000);

//stalinless steel
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:stalinless_steel>, <ore:ingotRefinedIron> * 6, <enderio:item_alloy_ingot:9> * 2, 500, 2048, [<ore:dustSmallManganese>, <ore:ingotChrome>], "Alloying");

//essence of greed
infuseFluid(<enderio:item_material:17>,<liquid:xpjuice>,<contenttweaker:greed_crystal>,4800,3390);

//batteries
recipes.addShaped(<contenttweaker:battery_hull>, [[null, <techreborn:cable:4>, null],[<ore:plateLumium>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}), <ore:plateLumium>], [<ore:plateLumium>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "fluidcarbonfiber", Amount: 1000}}), <ore:plateLumium>]]);
infuseFluid(<contenttweaker:battery_hull>,<liquid:alkali>,<contenttweaker:alkaline_battery>,4800,9001);
mods.immersiveengineering.Mixer.addRecipe(<liquid:alkali> * 1000, <liquid:fluidsodium> * 1000, [<ore:dustSmallManganese>, <ore:dustZinc>], 2048);
infuseFluid(<contenttweaker:battery_hull>,<liquid:liquid_sunshine>,<contenttweaker:sunshine_battery>,4800,9001);

//industrial_steel
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:bloom>,<ore:ingotRefinedIron> , null, 300, 300);
mods.tconstruct.Melting.addRecipe(<liquid:molten_bloom>*100,<contenttweaker:bloom>,2000);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:block_bloom>, null, <liquid:molten_bloom>*1000, 10);
recipes.addShapeless(<contenttweaker:industrial_steel>,[<immersiveengineering:tool>.noReturn(),<contenttweaker:block_bloom>]);
