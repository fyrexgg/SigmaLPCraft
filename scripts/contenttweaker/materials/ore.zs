#loader contenttweaker

/*
    ContentTweaker Ore Script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.materials.utils.addDefaultOreData;
import scripts.contenttweaker.materials.init.materials;

function init() {
    //Aquamarine Ore
    var oreAquamarineData = materials.aquamarine.registerPart("ore").getData();
	addDefaultOreData(oreAquamarineData);
	oreAquamarineData.addDataValue("drops", "astralsorcery:itemcraftingcomponent");
	oreAquamarineData.addDataValue("harvestLevel", "1");
}