#priority 3400

/*
    This script is a class script for Thermal Expansion

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;

import mods.thermalexpansion.Infuser;

zenClass ThermalExpansion {
    zenConstructor() {
    }

    //Energetic Infuser
    function addInfuser(output as IItemStack, input as IItemStack, energy as int) {
        Infuser.addRecipe(output, input, energy);
    }

    function removeInfuser(input as IItemStack) {
        Infuser.removeRecipe(input);
    }
}