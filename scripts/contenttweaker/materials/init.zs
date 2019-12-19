#loader contenttweaker
#priority 4000

/*
    ContentTweaker Base Materials Script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;

static materials as Material[string] = {
    "aquamarine": MaterialSystem.getMaterialBuilder().setName("Aquamarine").setColor(2009855).build()
};