#priority 4049

/*
    CraftingHelper script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/**
 * Creates a surrounded recipe.
 * 1 1 1
 * 1 2 1
 * 1 1 1
 * @param {IIngredient} surroundIngredient - The ingredient to surround the core
 * @param {IIngredient} coreIngredient - The core ingredient
 */
function createSurroundedRecipe(surroundIngredient as IIngredient, coreIngredient as IIngredient) as IIngredient[][] {
	return [
		[surroundIngredient, surroundIngredient, surroundIngredient],
		[surroundIngredient, coreIngredient, surroundIngredient],
		[surroundIngredient, surroundIngredient, surroundIngredient]
	];
}

/**
 * Creates a 3x3 recipe using a single ingredient
 */
function create3By3(singleIngredient as IIngredient) as IIngredient[][] {
	return [
		[singleIngredient, singleIngredient, singleIngredient],
		[singleIngredient, singleIngredient, singleIngredient],
		[singleIngredient, singleIngredient, singleIngredient]
	];
}

/**
 * Creates an OR IIngredient containing all bucket containers for a given liquid
 * @param {string} liquidName - The name of the liquid. You can use ILiquidStack.name to obtain it.
 */
static buckets as IItemStack[] = [
	<forge:bucketfilled:0>
];

static tanks as IItemStack[] = [];

function getBucketIngredientFromName(liquidName as string) as IIngredient {
	var bucketsIngredient as IIngredient = null;

	for bucket in buckets {
		var bucketIngredient as IIngredient = scripts.helper.formatBucketIngredient(bucket, liquidName);

		if (!isNull(bucketIngredient)) {
			if (isNull(bucketsIngredient)) {
				bucketsIngredient = bucketIngredient;
			} else {
				bucketsIngredient |= bucketIngredient;
			}
		}
	}

	var tanksIngredient as IIngredient = null;

	for tank in tanks {
		var tankIngredient as IIngredient = scripts.helper.formatTankIngredient(tank, liquidName);

		if (!isNull(tankIngredient)) {
			if (isNull(tanksIngredient)) {
				tanksIngredient = tankIngredient;
			} else {
				tanksIngredient |= tankIngredient;
			}
		}
	}

	if (isNull(bucketsIngredient) & isNull(tanksIngredient)) {
		logger.logError("Unable to create a bucket ingredient for " ~ liquidName);
		return null;
	} else if (isNull(bucketsIngredient)) {
		return tanksIngredient;
	} else if (isNull(tanksIngredient)) {
		return bucketsIngredient;
	}

	// if both are not null, return an OR ingredient
	return bucketsIngredient | tanksIngredient;
}

/**
 * Creates an OR IIngredient containing all bucket containers for a given liquid
 * @param {ILiquidStack} liquid
 */
function getBucketIngredient(liquid as ILiquidStack) as IIngredient {
	return getBucketIngredientFromName(liquid.name);
}