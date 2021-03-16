#split fence east into 2 hitboxes
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/east0
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/east1