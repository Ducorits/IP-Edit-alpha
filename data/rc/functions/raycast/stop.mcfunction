# Get endpoint data of specific player raycast
execute if predicate rc:raystop run function rc:raycast/get_endpoint_data
# Display particle at the end location for visualization
particle minecraft:mycelium ~ ~ ~ 0 0 0 0 3 force
#tag @e remove last_hit