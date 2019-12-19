/*
    Hide script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

static hideIngredients as IItemStack[] = [
];

function init() {
    for ingredient in hideIngredients {
        JEI.hide(ingredient);
    }
}