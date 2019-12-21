/*
    This script handles the recipes for ChanceCubes

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Shaped Recipes
static shapedRecipes as IIngredient[][][][IItemStack] = {
    <chancecubes:chance_cube> : [
			[
	  			[<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>],
	   			[<ore:blockLapis>, <ore:blockDiamond>, <ore:blockLapis>],
	  			[<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>]
			]
	],
    <chancecubes:silk_touch_pendant> : [
			[
	  			[<minecraft:string>, <ore:blockLapis>, <minecraft:string>],
	   			[<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33}]}), <chancecubes:chance_pendant_tier3>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33}]})],
	  			[<minecraft:string>, <ore:blockLapis>, <minecraft:string>]
			]
	]
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
    <chancecubes:chance_cube>,
    <chancecubes:silk_touch_pendant>
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
}


