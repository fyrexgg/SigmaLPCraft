/*
    This script handles the recipes for Akashic Tome

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Shaped Recipes
static shapedRecipes as IIngredient[][][][IItemStack] = {
    <akashictome:tome>.withTag({"akashictome:data": {industrialforegoing: {id: "industrialforegoing:book_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "industrialforegoing"}, Damage: 0 as short}, rftoolscontrol: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftoolscontrol:rftoolscontrol_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftoolscontrol"}, Damage: 0 as short}, integratedtunnels: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, valkyrielib: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, rftools: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, deepmoblearning: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, rftools1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, extendedcrafting: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, inventorygenerators: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:inventorygenerators-guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "inventorygenerators"}, Damage: 0 as short}, mysticalworld: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "mysticalworld", "patchouli:book": "mysticalworld:world_guide"}, Damage: 0 as short}, extrautils2: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}, actuallyadditions: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, opencomputers: {id: "opencomputers:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "opencomputers"}, Damage: 4 as short}, openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, forestry: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "forestry:book_forester", Count: 1 as byte, tag: {"akashictome:definedMod": "forestry"}, Damage: 0 as short}, cyclicmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "cyclicmagic"}, Damage: 0 as short}, xnet: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "xnet:xnet_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "xnet"}, Damage: 0 as short}}}) : [
			[
	  			[<minecraft:book>, <ore:bookshelf>]
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
    <akashictome:tome>
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