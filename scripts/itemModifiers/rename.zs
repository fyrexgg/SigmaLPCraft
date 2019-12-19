/*
    Renaming script

    Note: These scripts are created and for the usage in modpacks curated by FyreXgg. 
    You can use these scripts for reference and for learning but not for copying and 
    pasting and claiming as your own.
*/

import crafttweaker.item.IItemStack;

static itemRenameArray as string[IItemStack] = {
    //VoltzEngine Fluids
    <vefluids:vebucket>: "Wooden Bucket"
};

function init() {
    for item, displayName in itemRenameArray {
        item.displayName = displayName;
    }

    game.setLocalization("fluid.ale","Sigma ALE P");
}