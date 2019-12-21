#priority 3400

/*
    This script is a class script for Actually Additions

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;

import mods.actuallyadditions.Empowerer;

zenClass ActuallyAdditions {
    zenConstructor() {
    }

    function addEmpowerer(output as IItemStack, center as IItemStack, mod1 as IItemStack, mod2 as IItemStack, mod3 as IItemStack, mod4 as IItemStack, energy as int, time as int) {
        Empowerer.addRecipe(output, center, mod1, mod2, mod3, mod4, energy, time);
    }

    function addEmpowerer(output as IItemStack, center as IItemStack, mod1 as IItemStack, mod2 as IItemStack, mod3 as IItemStack, mod4 as IItemStack, energy as int, time as int, particle as float[]) {
        Empowerer.addRecipe(output, center, mod1, mod2, mod3, mod4, energy, time, particle);
    }

    function removeEmpowerer(output as IItemStack) {
        Empowerer.removeRecipe(output);
    }
}
