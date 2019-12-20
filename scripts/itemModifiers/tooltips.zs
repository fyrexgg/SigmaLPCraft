/*
    Tooltip modification script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

static tooltipArray as IFormattedText[][IItemStack] = {
    //Akashic Tome
    <akashictome:tome>.withTag({"akashictome:data": {extendedcrafting: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, integratedtunnels: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, actuallyadditions: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, logisticspipes: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "logisticspipes:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "logisticspipes"}, Damage: 0 as short}, chococraft: {id: "chococraft:chocopedia", Count: 1 as byte, tag: {"akashictome:definedMod": "chococraft"}, Damage: 0 as short}, modcurrency: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "modcurrency:guidebook", Count: 1 as byte, tag: {"akashictome:definedMod": "modcurrency"}, Damage: 0 as short}, rftools: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftoolsdim:rftoolsdim_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, cyclicmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "cyclicmagic"}, Damage: 0 as short}, openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, rftools1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rftools2: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools2"}, Damage: 0 as short}}}): [
        format.yellow("If you misplace your Akashic Tome they are recraftable")
    ],
    //Chisel
    <chisel:chisel_iron> : [
        format.yellow("Blocks can still be chiseled. Just hidden in JEI.")
    ],
    <chisel:chisel_diamond> : [
        format.yellow("Blocks can still be chiseled. Just hidden in JEI.")
    ],
    <chisel:chisel_hitech> : [
        format.yellow("Blocks can still be chiseled. Just hidden in JEI.")
    ],
    //Applied Energistics
    <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"}) : [
        format.yellow("Stone can be replaced with any non tile entity block")
    ],
    //Ores
    <minecraft:coal_ore> : [
        format.yellow("Spawns in the mining world between y0 and y128")
    ],
    <minecraft:iron_ore> : [
        format.yellow("Spawns in the mining world between y0 and y64")
    ],
    <minecraft:gold_ore> : [
        format.yellow("Spawns in the mining world between y0 and y32")
    ],
    <minecraft:lapis_ore> : [
        format.yellow("Spawns in the mining world between y0 and y24")
    ],
    <minecraft:redstone_ore> : [
        format.yellow("Spawns in the mining world between y0 and y16")
    ],
    <minecraft:diamond_ore> : [
        format.yellow("Spawns in the mining world between y0 and y16")
    ],
    <minecraft:emerald_ore> : [
        format.yellow("Spawns in the mining world between y4 and y28")
    ],
    <thermalfoundation:ore> : [
        format.yellow("Spawns in the hunting dimension between y40 and y75")
    ],
    <thermalfoundation:ore:1> : [
        format.yellow("Spawns in the hunting dimension between y20 and y55")
    ],
    <thermalfoundation:ore:2> : [
        format.yellow("Spawns in the hunting dimension between y5 and y30")
    ],
    <thermalfoundation:ore:3> : [
        format.yellow("Spawns in the hunting dimension between y10 and y35")
    ],
    <thermalfoundation:ore:4> : [
        format.yellow("Spawns in the hunting dimension between y5 and y20")
    ],
    <thermalfoundation:ore:5> : [
        format.yellow("Spawns in the hunting dimension between y5 and y25")
    ],
    <thermalfoundation:ore:6> : [
        format.yellow("Spawns in the hunting dimension between y40 and y75")
    ],
    <thermalfoundation:ore:7> : [
        format.yellow("Spawns in the hunting dimension between y5 and y25")
    ],
    <mekanism:oreblock> : [
        format.yellow("Spawns in the hunting dimension between y40 and y75")
    ],
    <appliedenergistics2:quartz_ore> : [
        format.yellow("Spawns in the hunting dimension between y40 and y75")
    ],
    <appliedenergistics2:sky_stone_block> : [
        format.yellow("Spawns in the hunting dimension between y1 and y30")
    ],
    <evilcraft:dark_ore> : [
        format.yellow("Spawns in the hunting dimension between y6 and y66")
    ],
    <contenttweaker:sub_block_holder_0> : [
        format.yellow("Spawns in the hunting dimension between y6 and y66")
    ],
    <actuallyadditions:block_misc:3> : [
        format.yellow("Spawns in the hunting dimension between y28 and 60")
    ]
};

function init() {
    for item, tooltips in tooltipArray {
        for tooltip in tooltips {
            item.addTooltip(tooltip);
        }
    }
}