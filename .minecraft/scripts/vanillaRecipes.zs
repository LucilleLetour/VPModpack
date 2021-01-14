recipes.remove(<minecraft:wooden_pickaxe>, false);
recipes.remove(<minecraft:stone_pickaxe>, false);
recipes.remove(<minecraft:iron_pickaxe>, false);
recipes.remove(<minecraft:golden_pickaxe>, false);
recipes.remove(<minecraft:diamond_pickaxe>, false);

recipes.remove(<minecraft:wooden_axe>, false);
recipes.remove(<minecraft:stone_axe>, false);
recipes.remove(<minecraft:iron_axe>, false);
recipes.remove(<minecraft:golden_axe>, false);
recipes.remove(<minecraft:diamond_axe>, false);

recipes.remove(<minecraft:wooden_sword>, false);
recipes.remove(<minecraft:stone_sword>, false);
recipes.remove(<minecraft:iron_sword>, false);
recipes.remove(<minecraft:golden_sword>, false);
recipes.remove(<minecraft:diamond_sword>, false);

recipes.remove(<minecraft:wooden_shovel>, false);
recipes.remove(<minecraft:stone_shovel>, false);
recipes.remove(<minecraft:iron_shovel>, false);
recipes.remove(<minecraft:golden_shovel>, false);
recipes.remove(<minecraft:diamond_shovel>, false);

val nuggie = <minecraft:iron_nugget>;
val gnuggie = <minecraft:gold_nugget>;
val nrack = <minecraft:netherrack>;
val ssand = <minecraft:soul_sand>;
val dirt = <minecraft:dirt>;


recipes.addShapedMirrored("SoulSoilCR1", <futuremc:soul_soil> * 4, [
    [ssand,dirt],
    [dirt,ssand]
]);

recipes.addShaped("SoulTorchCR1", <futuremc:soul_fire_torch> * 4, [
    [<minecraft:coal>],
    [<minecraft:stick>],
    [<futuremc:soul_soil>]
]);

recipes.addShaped("SoulLanternCR1", <futuremc:soul_fire_lantern>, [
    [nuggie,nuggie,nuggie],
    [nuggie,<futuremc:soul_fire_torch>,nuggie],
    [nuggie,nuggie,nuggie]
]);

recipes.addShaped("PigstepCR1", <futuremc:record_pigstep>, [
    [nrack,gnuggie,nrack],
    [gnuggie,<minecraft:record_11>,gnuggie],
    [nrack,gnuggie,nrack]
]);