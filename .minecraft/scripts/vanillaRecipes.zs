import crafttweaker.item.IIngredient;

recipes.remove(<minecraft:wooden_hoe>, false);
recipes.remove(<minecraft:stone_hoe>, false);
recipes.remove(<minecraft:iron_hoe>, false);
recipes.remove(<minecraft:golden_hoe>, false);
recipes.remove(<minecraft:diamond_hoe>, false);

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

recipes.remove(<minecraft:leather_helmet>, false);
recipes.remove(<minecraft:leather_chestplate>, false);
recipes.remove(<minecraft:leather_leggings>, false);
recipes.remove(<minecraft:leather_boots>, false);

recipes.remove(<minecraft:iron_helmet>, false);
recipes.remove(<minecraft:iron_chestplate>, false);
recipes.remove(<minecraft:iron_leggings>, false);
recipes.remove(<minecraft:iron_boots>, false);

recipes.remove(<minecraft:golden_helmet>, false);
recipes.remove(<minecraft:golden_chestplate>, false);
recipes.remove(<minecraft:golden_leggings>, false);
recipes.remove(<minecraft:golden_boots>, false);

recipes.remove(<minecraft:diamond_helmet>, false);
recipes.remove(<minecraft:diamond_chestplate>, false);
recipes.remove(<minecraft:diamond_leggings>, false);
recipes.remove(<minecraft:diamond_boots>, false);

recipes.remove(<minecraft:bow>, false);
reciped.remove(<minecraft:shears>, false);

recipes.remove(<inventorypets:cobblestone_pet>, false);
recipes.remove(<inventorypets:dirt_pet>, false);

val validPets = [
    <inventorypets:ocelot_pet>, 
    <inventorypets:sheep_pet>, 
    <inventorypets:squid_pet>, 
    <inventorypets:blaze_pet>, 
    <inventorypets:iron_golem_pet>, 
    <inventorypets:magma_cube_pet>, 
    <inventorypets:ender_chest_pet>, 
    <inventorypets:jukebox_pet>, 
    <inventorypets:lead_pet>, 
    <inventorypets:nether_portal_pet>, 
    <inventorypets:saddle_pet>, 
    <inventorypets:cheetah_pet>,  
    <inventorypets:house_pet>, 
    <inventorypets:pixie_pet>,  
    <inventorypets:torch_pet>,  
    <inventorypets:biome_pet>,  
    <inventorypets:loot_pet>,  
    <inventorypets:quiver_pet>,  
    <inventorypets:heart_pet>, 
    <inventorypets:shield_pet>,  
    <inventorypets:siamese_pet>,  
    <inventorypets:black_hole_pet>,  
    <inventorypets:pufferfish_pet>,  
    <inventorypets:crafting_table_pet>] as IIngredient[];

val netheriteingot = <futuremc:netherite_ingot>;

for i, pet in validPets {
    val pr = recipes.getRecipesFor(pet)[0];
    var temp = pr.ingredients2D;
    var new = [
        [netheriteingot, temp[0][1], netheriteingot],
        [netheriteingot, temp[1][1], netheriteingot],
        [netheriteingot, temp[2][1], netheriteingot]
    ] as IIngredient[][];

    var out = pr.output;
    
    recipes.remove(pet);
    recipes.addShaped("" ~ i ~ "newCR", out, new);
}

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