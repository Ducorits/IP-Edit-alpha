#split fence north into 2 hitboxes
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/north0
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/north1
