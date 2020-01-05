#priority 3400

/*
    This script is a class script for Mekanism

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.mekanism.enrichment;
import mods.mekanism.infuser;

zenClass Mekanism {
    zenConstructor() {
    }

    //Enrichment Chamber
    function addEnrichment(input as IIngredient, output as IItemStack) {
        enrichment.addRecipe(input, output);
    }
    
    function removeEnrichment(input as IIngredient) {
        enrichment.removeRecipe(input);
    }

    //Infuser
    function addInfuser(infusionType as string, infusionConsumed as int, input as IIngredient, output as IItemStack) {
        infuser.addRecipe(infusionType, infusionConsumed, input, output);
    }

    function removeInfuser(output as IItemStack) {
        infuser.removeRecipe(output);
    }
}