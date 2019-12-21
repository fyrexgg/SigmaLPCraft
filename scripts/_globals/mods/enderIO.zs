#priority 3400

/*
    This script is a class script for EnderIO

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.enderio.AlloySmelter;
import mods.enderio.CombustionGen;
import mods.enderio.Enchanter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.enderio.SoulBinder;
import mods.enderio.Tank;
import mods.enderio.Vat;

zenClass EnderIO {
	zenConstructor() {
	}

    //Alloy Smelter
	function addAlloySmelter(output as IItemStack, input as IIngredient[]) {
		AlloySmelter.addRecipe(output, input);
	}
	function addAlloySmelter(output as IItemStack, input as IIngredient[], energyCost as int) {
		AlloySmelter.addRecipe(output, input, energyCost);
	}
	function addAlloySmelter(output as IItemStack, input as IIngredient[], xp as float) {
		AlloySmelter.addRecipe(output, input, xp);
	}
	function addAlloySmelter(output as IItemStack, input as IIngredient[], energyCost as int, xp as float) {
		AlloySmelter.addRecipe(output, input, energyCost, xp);
	}

	function removeAlloySmelter(output as IItemStack) {
		AlloySmelter.removeRecipe(output);
	}

	//Combustion Generator
	function addCombustionGenFuel(fuel as ILiquidStack, powerPerCycleRF as int, totalBurnTime as int) {
		CombustionGen.addFuel(fuel, powerPerCycleRF, totalBurnTime);
	}
	function addCombustionGenCoolant(coolant as ILiquidStack, degreesCoolingPerMB as float) {
		CombustionGen.addCoolant(coolant, degreesCoolingPerMB);
	}

	function removeCombustionGenFuel(fuel as ILiquidStack) {
		CombustionGen.removeFuel(fuel);
	}
	function removeCombustionGenCoolant(coolant as ILiquidStack) {
		CombustionGen.removeCoolant(coolant);
	}

	//Enchanter
	function addEnchanter(output as IEnchantmentDefinition, input as IIngredient, amountPerLevel as int, costMultiplier as double) {
		Enchanter.addRecipe(output, input, amountPerLevel, costMultiplier);
	}

	function removeEnchanter(output as IEnchantmentDefinition) {
		Enchanter.removeRecipe(output);
	}

	//Sagmill
	function addSagMill(output as WeightedItemStack[], input as IIngredient) {
		SagMill.addRecipe(output, input);
	}
	function addSagMill(output as WeightedItemStack[], input as IIngredient, bonusType as string) {
		SagMill.addRecipe(output, input, bonusType);
	}
	function addSagMill(output as WeightedItemStack[], input as IIngredient, energyCost as int) {
		SagMill.addRecipe(output, input, energyCost);
	}
	function addSagMill(output as WeightedItemStack[], input as IIngredient, bonusType as string, energyCost as int) {
		SagMill.addRecipe(output, input, bonusType, energyCost);
	}
	function addSagMill(output as WeightedItemStack[], input as IIngredient, bonusType as string, energyCost as int, xp as float[]) {
		SagMill.addRecipe(output, input, bonusType, energyCost, xp);
	}

	function removeSagMill(input as IItemStack) {
		SagMill.removeRecipe(input);
	}

	//Slice 'n' Splice
	function addSliceNSplice(output as IItemStack, input as IIngredient[], energyCost as int) {
		SliceNSplice.addRecipe(output, input, energyCost);
	}
	function addSliceNSplice(output as IItemStack, input as IIngredient[], xp as float) {
		SliceNSplice.addRecipe(output, input, xp);
	}
	function addSliceNSplice(output as IItemStack, input as IIngredient[], energyCost as int, xp as float) {
		SliceNSplice.addRecipe(output, input, energyCost, xp);
	}

	function removeSliceNSplice(output as IItemStack) {
		SliceNSplice.removeRecipe(output);
	}

	//Soul Binder
	function addSoulBinder(output as IItemStack, input as IIngredient, entities as string[], xpCost as int) {
		SoulBinder.addRecipe(output, input, entities, xpCost);
	}
	function addSoulBinder(output as IItemStack, input as IIngredient, entities as string[], xpCost as int, energyCost as int) {
		SoulBinder.addRecipe(output, input, entities, xpCost, energyCost);
	}

	function removeSoulBinder(output as IItemStack) {
		SoulBinder.removeRecipe(output);
	}

	//Vat
	function addVat(output as ILiquidStack, inMult as float, input as ILiquidStack, slot1Solids as IIngredient[], slot1Mults as float[], slot2Solids as IIngredient[], slot2Mults as float[]) {
		Vat.addRecipe(output, inMult, input, slot1Solids, slot1Mults, slot2Solids, slot2Mults);
	}
	function addVat(output as ILiquidStack, inMult as float, input as ILiquidStack, slot1Solids as IIngredient[], slot1Mults as float[], slot2Solids as IIngredient[], slot2Mults as float[], energyCost as int) {
		Vat.addRecipe(output, inMult, input, slot1Solids, slot1Mults, slot2Solids, slot2Mults, energyCost);
	}

	function removeVat(output as ILiquidStack) {
		Vat.removeRecipe(output);
	}

	//Tank
	function addTank(fill as bool, input as IIngredient, fluid as ILiquidStack, output as IItemStack) {
		Tank.addRecipe(fill, input, fluid, output);
	}

	function removeTank(fill as bool, fluid as ILiquidStack, output as IItemStack) {
		Tank.removeRecipe(fill, fluid, output);
	}
}