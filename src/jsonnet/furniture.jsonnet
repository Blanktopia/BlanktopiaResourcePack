local furniture(name, customModelData) = {
    "predicate": {
        "custom_model_data": customModelData,
    },
    "model": "blanktopia:furniture/" + name
};

local wooden(name, customModelData) = [
    furniture("oak_" + name, customModelData + 0),
    furniture("spruce_" + name, customModelData + 1),
    furniture("birch_" + name, customModelData + 2),
    furniture("jungle_" + name, customModelData + 3),
    furniture("acacia_" + name, customModelData + 4),
    furniture("dark_oak_" + name, customModelData + 5),
    furniture("crimson_" + name, customModelData + 6),
    furniture("warped_" + name, customModelData + 7),
];

{
    "parent": "item/handheld_rod",
    "textures": {
        "layer0": "item/leather_horse_armor"
    },
    "overrides": 
        wooden("chair", 1000) +
        wooden("stool", 1010) +
        wooden("desk", 1020) +
        wooden("garden_table", 1030) +
        wooden("beach_chair", 1040)
}