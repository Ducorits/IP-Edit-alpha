#split fence west into 2 hitboxes
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/west0
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/west1

