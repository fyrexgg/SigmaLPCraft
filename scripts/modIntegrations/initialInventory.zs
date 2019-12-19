/*
    This script handles the Initial Inventory of a player when then login for the first time

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import mods.initialinventory.InvHandler.addStartingItem;

//Add the Akashic Tome to the players inventory with some useful books/manuals already inside.
function init() {
    addStartingItem(<akashictome:tome>.withTag({"akashictome:data": {extendedcrafting: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "extendedcrafting:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "extendedcrafting"}, Damage: 0 as short}, integratedtunnels: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, actuallyadditions: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, logisticspipes: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "logisticspipes:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "logisticspipes"}, Damage: 0 as short}, chococraft: {id: "chococraft:chocopedia", Count: 1 as byte, tag: {"akashictome:definedMod": "chococraft"}, Damage: 0 as short}, modcurrency: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "modcurrency:guidebook", Count: 1 as byte, tag: {"akashictome:definedMod": "modcurrency"}, Damage: 0 as short}, rftools: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftoolsdim:rftoolsdim_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, cyclicmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "cyclicmagic"}, Damage: 0 as short}, openblocks: {id: "openblocks:info_book", Count: 1 as byte, tag: {"akashictome:definedMod": "openblocks"}, Damage: 0 as short}, rftools1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rftools2: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools2"}, Damage: 0 as short}}}), 1);
}
