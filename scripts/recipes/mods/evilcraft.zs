/*
    This script handles the recipes for Evilcraft

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Shaped Recipes
static shapedRecipes as IIngredient[][][][IItemStack] = {
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

//Mirrored Recipes
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

//Shapeless Recipes
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

//Removals
static removeRecipes as IItemStack[] = [
    <evilcraft:blood_chest>
];

function init() {
	// Un-named recipes
	recipeHelper.process(shapedRecipes, false);
    recipeHelper.process(mirroredRecipes, true);
    recipeHelper.process(shapelessRecipes);

	// Named recipes
	recipeHelper.processNamed(namedShapedRecipes, false);
    recipeHelper.processNamed(namedMirroredRecipes, true);
    recipeHelper.processNamed(namedShapelessRecipes);

	recipeHelper.removeRecipes(removeRecipes);

    //Blood chest
    mods.extendedcrafting.TableCrafting.addShaped(0, <evilcraft:blood_chest>, [
        [<ore:plankWood>, <evilcraft:blood_orb:1>, <evilcraft:blood_orb:1>, <evilcraft:blood_orb:1>, <ore:plankWood>], 
        [<ore:plankWood>, <evilcraft:blood_infusion_core>, <ore:chest>, <evilcraft:blood_infusion_core>, <ore:plankWood>], 
        [<ore:plankWood>, <ore:chest>, <evilcraft:blood_infusion_core>, <ore:chest>, <ore:plankWood>], 
        [<ore:plankWood>, <evilcraft:blood_infusion_core>, <ore:chest>, <evilcraft:blood_infusion_core>, <ore:plankWood>], 
        [<ore:plankWood>, <evilcraft:blood_orb:1>, <evilcraft:blood_orb:1>, <evilcraft:blood_orb:1>, <ore:plankWood>]
    ]);
}