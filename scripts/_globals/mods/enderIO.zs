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

	//Enchanter
	function addEnchanter(output as IEnchantmentDefinition, input as IIngredient, amountPerLevel as int, costMultiplier as double) {
		Enchanter.addRecipe(output, input, amountPerLevel, costMultiplier);
	}

	function removeEnchanter(output as IEnchantmentDefinition) {
		Enchanter.removeRecipe(output);
	}

	//Sag Mill
	function removeSagMill(input as IItemStack) {
		SagMill.removeRecipe(input);
	}
}