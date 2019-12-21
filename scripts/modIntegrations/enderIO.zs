/*
    This script handles the recipes for EnderIO

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

function init() {
    //Charged Certus Quartz
    enderio.removeSagMill(<appliedenergistics2:charged_quartz_ore>);

    //Ore Excavation
    enderio.addEnchanter(<enchantment:oeintegration:oreexcavation>, <oeintegration:excavatemodifier>, 8, 2);
}