#priority 3400

/*
    This script is a class script for Rustic

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.rustic.Condenser;
import mods.rustic.CrushingTub;
import mods.rustic.EvaporatingBasin;

zenClass Rustic {
    zenConstructor() {
    }

    //Add a Crushing Tub recipe.
    function addCrushingTub(output as ILiquidStack, input as IItemStack) {
        addCrushingTub(output, null, input);
    }

    function addCrushingTub(output as ILiquidStack, byproduct as IItemStack, input as IItemStack) {
        CrushingTub.addRecipe(output, byproduct, input);
    }

    //Remove a Crushing Tub recipe.
    function removeCrushingTub(output as ILiquidStack, input as IItemStack) {
        CrushingTub.removeRecipe(output, input);
    }

    //Add an Evaporating Basin recipe
    function addEvaporatingBasin(output as IItemStack, input as ILiquidStack) {
        EvaporatingBasin.addRecipe(output, input);
    }

    //Remove an Evaporating Basin recipe
    function removeEvaporatingBasin(output as IItemStack) {
        EvaporatingBasin.removeRecipe(output);
    }

    //Add a Condenser recipe
    function addCondenser(output as IItemStack, firstInput as IItemStack, secondInput as IItemStack) {
        Condenser.addRecipe(output, firstInput, secondInput);
    }

    function addCondenser(output as IItemStack, modifier as IItemStack, inputs as IItemStack[]) {
        Condenser.addRecipe(output, modifier, inputs);
    }

    //Remove a Condenser recipe
    function removeCondenser(output as IItemStack) {
        Condenser.removeRecipe(output);
    }
}