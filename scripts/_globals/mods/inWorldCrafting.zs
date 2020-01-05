#priority 3400

/*
    This script is a class script for InWorldCrafting

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.inworldcrafting.FluidToItem;

zenClass InWorldCrafting {
	zenConstructor() {
	}

    function addFluidTransform(output as IItemStack, inputFluid as ILiquidStack, inputItems as IIngredient[], consume as bool) {
        FluidToItem.transform(output, inputFluid, inputItems, consume);
    }
}