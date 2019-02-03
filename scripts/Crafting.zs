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
	//poppy+hemp+ghast tear
		mods.immersiveengineering.Mixer.addRecipe(<liquid:happiness_fluid>*100,<liquid:dist_water>*500,[<minecraft:ghast_tear>,<minecraft:red_flower>,<immersiveengineering:seed>],4800);

//Happiness_Circuit
		//rune alter / infusion
		mods.thaumcraft.Infusion.registerRecipe("void_happiness_circuit","",<contenttweaker:void_happiness_circuit>, 20,[<aspect:aer>*64,<aspect:terra>*64,<aspect:ignis>*64,<aspect:aqua>*64,<aspect:ordo>*64,<aspect:perditio>*64],<immersiveengineering:material:27>, [<contenttweaker:obsidian_prime>,<minecraft:book>,<exnihilocreatio:item_material:5>]);
		mods.botania.RuneAltar.addRecipe(<contenttweaker:void_happiness_circuit>, [<immersiveengineering:material:27>*3,<contenttweaker:obsidian_prime>*3,<minecraft:book>*3,<exnihilocreatio:item_material:5>*3], 1000000);
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

//kongaltan
	recipes.addShapeless(<contenttweaker:kongaltan>, [<ore:dustTinySulfur>,<ore:dustSaltpeter>,<ore:dustSmallCharcoal>,<ore:paper>]);
	mods.pneumaticcraft.explosioncrafting.addRecipe(<contenttweaker:kongaltan>, <contenttweaker:kongaltan_ash>, 90);

//ultimate
	//overcharged_iron
	mods.thermalexpansion.Infuser.addRecipe(<contenttweaker:overcharged_iron>,<minecraft:iron_ingot>, 100000);
	mods.immersiveengineering.Mixer.addRecipe(<liquid:ultimate>*10, <liquid:ic2uu_matter>*10, [<techreborn:uumatter>,<contenttweaker:overcharged_iron>], 100000);

//meta_matter
	infuseFluid(<minecraft:glass>,<liquid:ultimate>,<contenttweaker:meta_matter>,100000,500);

//plastick	
	//naphtha->liquidethene
	mods.techreborn.centrifuge.addRecipe(null,null,<techreborn:dynamiccell>*3,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "liquidethene", Amount: 1000}}),<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "naphtha", Amount: 1000}})*4,null, 600, 100);
	//liquidethene -> plastic liquid
		//add
		mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:liquidethene>*20, null,4, 300, <liquid:liquidplastic>*10);
	//plastick
	mods.techreborn.vacuumFreezer.addRecipe(<contenttweaker:plastick>,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "liquidplastic", Amount: 1000}}), 300, 80);

//heater
	recipes.addShaped(<contenttweaker:heat4>, [[<techreborn:plates:32>, <contenttweaker:alkaline_battery>, <techreborn:plates:32>],[<contenttweaker:sunshine_battery>, <ic2:te:12>, <contenttweaker:sunshine_battery>], [<techreborn:plates:32>, <contenttweaker:alkaline_battery>, <techreborn:plates:32>]]);
	recipes.addShaped(<contenttweaker:heat4>, [[<techreborn:plates:32>, <forestry:bituminous_peat>, <techreborn:plates:32>],[<forestry:bituminous_peat>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}).onlyWithTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}), <forestry:bituminous_peat>], [<techreborn:plates:32>, <forestry:bituminous_peat>, <techreborn:plates:32>]]);
	recipes.addShaped(<contenttweaker:heat4> * 3, [[<techreborn:plates:32>, <techreborn:part>, <techreborn:plates:32>],[<techreborn:part:8>, <techreborn:lapotronicorb>, <techreborn:part:11>], [<techreborn:plates:32>, <techreborn:part:37>, <techreborn:plates:32>]]);
	recipes.addShaped(<contenttweaker:heat4> * 3, [[<techreborn:plates:32>, <botania:rune:5>, <techreborn:plates:32>],[<botania:manaresource>, <botania:manaresource:5>, <botania:manaresource:7>], [<techreborn:plates:32>, <botania:manaresource:4>, <techreborn:plates:32>]]);
	recipes.addShaped(<contenttweaker:heat3> * 5, [[<botania:manaresource:4>, <ore:manaDiamond>, <botania:manaresource:4>],[<forestry:thermionic_tubes:7>, <botania:specialflower>.withTag({type: "exoflame"}), <forestry:thermionic_tubes:7>], [<botania:manaresource:4>, <botania:manaresource:1>, <botania:manaresource:4>]]);
	recipes.addShaped(<contenttweaker:heat3> * 5, [[<thaumcraft:ingot:1>, <ore:nitor>, <thaumcraft:ingot:1>],[<forestry:thermionic_tubes:7>, <thaumcraft:phial:1>, <forestry:thermionic_tubes:7>], [<thaumcraft:ingot:1>, <thaumcraft:alumentum>, <thaumcraft:ingot:1>]]);
	recipes.addShaped(<contenttweaker:heat3> * 3, [[<thaumcraft:ingot>, <ore:nitor>, <thaumcraft:ingot>],[<forestry:thermionic_tubes:7>, <thaumcraft:phial:1>, <forestry:thermionic_tubes:7>], [<thaumcraft:ingot>, <thaumcraft:alumentum>, <thaumcraft:ingot>]]);
	recipes.addShaped(<contenttweaker:heat3> * 3, [[<botania:manaresource:7>, <botania:manaresource:8>, <botania:manaresource:7>],[<forestry:thermionic_tubes:7>, <botania:specialflower>.withTag({type: "exoflame"}), <forestry:thermionic_tubes:7>], [<botania:manaresource:7>, <botania:manaresource:9>, <botania:manaresource:7>]]);
	recipes.addShaped(<contenttweaker:heat3> * 2, [[<botania:manaresource>, <botania:manaresource:1>, <botania:manaresource>],[<forestry:thermionic_tubes:7>, <botania:specialflower>.withTag({type: "exoflame"}), <forestry:thermionic_tubes:7>], [<botania:manaresource>, <botania:manaresource:2>, <botania:manaresource>]]);
	recipes.addShaped(<contenttweaker:heat2> * 4, [[null, <techreborn:part:7>, null],[<ic2:nuclear:3>, <ic2:te:24>, <ic2:nuclear:3>], [null, <techreborn:part:7>, null]]);
	recipes.addShaped(<contenttweaker:heat2> * 4, [[null, <techreborn:part:10>, null],[<ic2:nuclear:3>, <ic2:te:24>, <ic2:nuclear:3>], [null, <techreborn:part:10>, null]]);
	recipes.addShaped(<contenttweaker:heat2> * 2, [[<techreborn:part:36>, <techreborn:part:36>, <techreborn:part:36>],[<ic2:nuclear:3>, <ic2:te:24>, <ic2:nuclear:3>], [<techreborn:part:36>, <techreborn:part:36>, <techreborn:part:36>]]);
	recipes.addShaped(<contenttweaker:heat2> * 2, [[null, <techreborn:part:7>, null],[<ic2:nuclear:1>, <ic2:te:24>, <ic2:nuclear:1>], [null, <techreborn:part:7>, null]]);
	recipes.addShaped(<contenttweaker:heat2> * 2, [[null, <techreborn:part:10>, null],[<ic2:nuclear:1>, <ic2:te:24>, <ic2:nuclear:1>], [null, <techreborn:part:10>, null]]);
	recipes.addShaped(<contenttweaker:heat2>, [[<techreborn:part:36>, <techreborn:part:36>, <techreborn:part:36>],[<ic2:nuclear:1>, <ic2:te:24>, <ic2:nuclear:1>], [<techreborn:part:36>, <techreborn:part:36>, <techreborn:part:36>]]);
	recipes.addShaped(<contenttweaker:heat1>, [[<ic2:casing>, <ore:blockCoal>, <ic2:casing>],[<ore:blockCoal>, <techreborn:iron_furnace>, <ore:blockCoal>], [<ic2:casing>, <ore:blockCoal>, <ic2:casing>]]);
	recipes.addShaped(<contenttweaker:heat1> * 4, [[<ic2:casing>, <techreborn:part:14>, <ic2:casing>],[<techreborn:part:14>, <techreborn:iron_furnace>, <techreborn:part:14>], [<ic2:casing>, <techreborn:part:14>, <ic2:casing>]]);
	recipes.addShaped(<contenttweaker:heat1> * 3, [[<ic2:casing>, <techreborn:part:15>, <ic2:casing>],[<techreborn:part:15>, <techreborn:iron_furnace>, <techreborn:part:15>], [<ic2:casing>, <techreborn:part:15>, <ic2:casing>]]);
	recipes.addShaped(<contenttweaker:heat1>, [[<ic2:casing>, <techreborn:part:13>, <ic2:casing>],[<techreborn:part:13>, <techreborn:iron_furnace>, <techreborn:part:13>], [<ic2:casing>, <techreborn:part:13>, <ic2:casing>]]);
	recipes.addShaped(<contenttweaker:heat1> * 2, [[<ic2:casing>, <ore:blockFuelCoke>, <ic2:casing>],[<ore:blockFuelCoke>, <techreborn:iron_furnace>, <ore:blockFuelCoke>], [<ic2:casing>, <ore:blockFuelCoke>, <ic2:casing>]]);
	recipes.addShaped(<contenttweaker:heat1>, [[<ic2:casing>, <forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}).onlyWithTag({FluidName: "fire_water", Amount: 1000}), <ic2:casing>],[<forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}).onlyWithTag({FluidName: "fire_water", Amount: 1000}), <techreborn:iron_furnace>, <forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}).onlyWithTag({FluidName: "fire_water", Amount: 1000})], [<ic2:casing>, <forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}).onlyWithTag({FluidName: "fire_water", Amount: 1000}), <ic2:casing>]]);

//liquidair
	mods.techreborn.compressor.addRecipe(<ic2:fluid_cell>.withTag({	Fluid: {FluidName: "fluidcompressedair", Amount: 1000}}),<ic2:fluid_cell>, 60, 40);
	mods.techreborn.vacuumFreezer.addRecipe(<ic2:fluid_cell>.withTag({Fluid: {FluidName: "liquidair", Amount: 1000}}), <ic2:fluid_cell>.withTag({Fluid: {FluidName: "fluidcompressedair", Amount: 1000}}), 60, 30);
		//fraction distillation
		mods.immersivepetroleum.Distillation.addRecipe([<liquid:liquidoxygen>*21,<liquid:airargon>*1,<liquid:airnitrogen>*78], [<ic2:crafting:23>], <liquid:liquidair>*100, 100, 1, [0.1]);
			//argon_discharge_tube
				recipes.addShaped(<contenttweaker:discharge_tube>,[[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>],[<techreborn:cable>,null,<techreborn:cable>],[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>]]);
				infuseFluid(<contenttweaker:discharge_tube>,<liquid:airargon>,<contenttweaker:argon_discharge_tube>,1000,100);
			//enhanced_rocket_fuel
				mods.tconstruct.Alloy.addRecipe(<liquid:enhanced_rocket_fuel>*1000, [<liquid:liquidoxygen>*2000,<liquid:rocket_fuel>*500]);
				//ammonia&fert

mods.thermalexpansion.Imbuer.addRecipe(<liquid:carbondioxide> * 1000, <minecraft:coal>, <liquid:liquidoxygen> * 1000, 2048);
mods.enderio.SagMill.addRecipe([<contenttweaker:fine_magnetite>],[0.01],<ore:pieceIron>);
mods.pneumaticcraft.pressurechamber.addRecipe([<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidhydrogen", Amount: 1000}}) * 4,<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "airnitrogen", Amount: 1000}}), <contenttweaker:fine_magnetite>], 4, [<contenttweaker:fine_magnetite>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "ammonia", Amount: 1000}})]);
mods.techreborn.chemicalReactorRecipe.addRecipe(<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "urea", Amount: 1000}}), <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "ammonia", Amount: 1000}}), <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "carbondioxide", Amount: 1000}}), 100, 32);
infuseFluid(<forestry:fertilizer_compound>,<liquid:urea>,<contenttweaker:fert>,2000,250);
mods.forestry.Carpenter.addRecipe(<contenttweaker:boxed_fert>, [[<contenttweaker:fert>,<contenttweaker:fert>,<contenttweaker:fert>],[<contenttweaker:fert>,<contenttweaker:fert>,<contenttweaker:fert>],[<contenttweaker:fert>,<contenttweaker:fert>,<contenttweaker:fert>]], 60, <liquid:water> * 100, <forestry:crate>);