/*
    This script handles the recipes for Actually Additions

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

function init() {
    //Charged Certus Quartz
    actuallyadditions.addEmpowerer(<appliedenergistics2:material:1> * 5, <appliedenergistics2:material>, <appliedenergistics2:material>, <appliedenergistics2:material>, <appliedenergistics2:material>, <appliedenergistics2:material>, 450, 600, [0.2, 0.25, 0.3]);

    //Base infusion crystal
    actuallyadditions.addEmpowerer(<mysticalagriculture:infusion_crystal>, <minecraft:diamond>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:5>, 10000, 6000, [0.0, 0.31, 0.31]);
    
    //Inferium infusion crystal
    actuallyadditions.addEmpowerer(<matc:inferiumcrystal>, <mysticalagriculture:infusion_crystal>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, 30000, 9600, [0.26, 0.32, 0.1]);

    //Prudentium infusion crystal
    actuallyadditions.addEmpowerer(<matc:prudentiumcrystal>, <mysticalagriculture:infusion_crystal>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, 30000, 12000, [0.05, 0.23, 0.0]);

    //Intermedium infusion crystal
    actuallyadditions.addEmpowerer(<matc:intermediumcrystal>, <mysticalagriculture:infusion_crystal>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, 40000, 15000, [0.39, 0.2, 0.02]);

    //Superium infusion crystal
    actuallyadditions.addEmpowerer(<matc:superiumcrystal>, <mysticalagriculture:infusion_crystal>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, 50000, 18000, [0.12, 0.19, 0.34]);

    //Supremium infusion crystal
    actuallyadditions.addEmpowerer(<matc:supremiumcrystal>, <mysticalagriculture:infusion_crystal>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, 75000, 20000, [0.28, 0.0, 0.0]);
}