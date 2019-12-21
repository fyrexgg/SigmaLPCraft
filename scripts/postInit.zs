#priority -100

/*
	Post initialization script

	This script is the main runner for the pack. 
    
    This file should ONLY be modified if you know what you are doing. 
    Changing anything in here could cause potential script failures and game breaking issues.

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

// ==================================

// Initialize Scripts
initItemModifiers();
initRecipes();
initIntegration();

function initRecipes() {
	scripts.recipes.hideCategory.init();
	scripts.recipes.removeAndHide.init();
	
	scripts.recipes.mods.akashicTome.init();
	scripts.recipes.mods.apotheosis.init();
	scripts.recipes.mods.appliedEnergistics.init();
	scripts.recipes.mods.chanceCubes.init();
	scripts.recipes.mods.evilcraft.init();
	scripts.recipes.mods.huntingDim.init();
	scripts.recipes.mods.mysticalAgriculture.init();
	scripts.recipes.mods.oreEx.init();
	scripts.recipes.mods.rustic.init();
	scripts.recipes.mods.veFluids.init();
}

function initIntegration() {
	scripts.modIntegrations.actuallyAdditions.init();
	scripts.modIntegrations.enderIO.init();
	scripts.modIntegrations.initialInventory.init();
	scripts.modIntegrations.loottabletweaker.init();
	scripts.modIntegrations.mekanism.init();
	scripts.modIntegrations.rustic.init();
	scripts.modIntegrations.thermalExpansion.init();
}

function initItemModifiers() {
	scripts.itemModifiers.burnTime.init();
	scripts.itemModifiers.hardness.init();
	scripts.itemModifiers.hide.init();
	scripts.itemModifiers.rename.init();
	scripts.itemModifiers.tooltips.init();
}