#split fence south into 2 hitboxes
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/south0
execute unless predicate rc:raystop run function rc:raycast/block/fence/hitbox/south1
