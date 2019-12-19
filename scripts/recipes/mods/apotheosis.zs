/*
    This script handles the recipes for Apotheosis

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
    <apotheosis:hellshelf>  
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

    mods.extendedcrafting.TableCrafting.addShaped(0, <apotheosis:hellshelf>, [
        [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>], 
        [null, <ore:bookshelf>, <ore:bookshelf>, <ore:bookshelf>, null], 
        [<ore:blockBlaze>, <ore:bookshelf>, <ore:bookshelf>, <ore:bookshelf>, <ore:cofh:potion>], 
        [null, <ore:bookshelf>, <ore:bookshelf>, <ore:bookshelf>, null], 
        [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]
    ]);
}