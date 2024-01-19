# Written by NathanLithia for Crafttweaker Fabric 1.20.1 on 20/01/2024
# RemoveItemBulkJEI.zs
# Use "/ct hand" or "/ct inventory" to get item ID lists from crafttweaker.log

import crafttweaker.api.text.Component;
import mods.jeitweaker.Jei;

var ItemsToRemoveArray = [
<item:computercraft:turtle_normal>,
<item:computercraft:turtle_advanced>,
<item:computercraft:turtle_normal>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_shovel"}),
<item:computercraft:turtle_normal>.withTag({RightUpgrade: "minecraft:crafting_table"}),
<item:computercraft:turtle_normal>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_axe"}),
<item:computercraft:turtle_normal>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_hoe"}),
<item:computercraft:turtle_normal>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_pickaxe"}),
<item:computercraft:turtle_normal>.withTag({RightUpgrade: "computercraft:wireless_modem_normal"}),
<item:computercraft:turtle_normal>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_sword"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_shovel"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgrade: "minecraft:crafting_table"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_axe"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_hoe"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgrade: "computercraft:speaker"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_pickaxe"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgradeNbt: {Tag: {Damage: 0}}, RightUpgrade: "minecraft:diamond_sword"}),
<item:computercraft:turtle_normal>.withTag({RightUpgrade: "computercraft:wireless_modem_advanced"}),
<item:computercraft:turtle_normal>.withTag({RightUpgrade: "computercraft:speaker"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgrade: "computercraft:wireless_modem_advanced"}),
<item:computercraft:turtle_advanced>.withTag({RightUpgrade: "computercraft:wireless_modem_normal"})
];

for item in ItemsToRemoveArray{
craftingTable.remove(item);
Jei.hideIngredient(item);
}

