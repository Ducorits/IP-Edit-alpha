# instant raycast scoreboards
# scoreboard objectives add r_clicked minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rc_id dummy
scoreboard objectives add rc_count dummy
scoreboard objectives add rc_const dummy
scoreboard objectives add rc_system dummy
scoreboard objectives add rc_hitbox dummy

# set constants
scoreboard players set %1000 rc_const 1000
scoreboard players set %100 rc_const 100
scoreboard players set %10 rc_const 10
scoreboard players set %1 rc_const 1

scoreboard objectives add rayX dummy
scoreboard objectives add rayY dummy
scoreboard objectives add rayZ dummy

scoreboard objectives add Xpos dummy
scoreboard objectives add Ypos dummy
scoreboard objectives add Zpos dummy

scoreboard objectives add Xblock dummy
scoreboard objectives add Yblock dummy
scoreboard objectives add Zblock dummy

scoreboard objectives add cor0X dummy
scoreboard objectives add cor0Y dummy
scoreboard objectives add cor0Z dummy

scoreboard objectives add cor1X dummy
scoreboard objectives add cor1Y dummy
scoreboard objectives add cor1Z dummy

scoreboard objectives add cor2X dummy
scoreboard objectives add cor2Y dummy
scoreboard objectives add cor2Z dummy

scoreboard objectives add cor3X dummy
scoreboard objectives add cor3Y dummy
scoreboard objectives add cor3Z dummy

scoreboard objectives add cor4X dummy
scoreboard objectives add cor4Y dummy
scoreboard objectives add cor4Z dummy

scoreboard objectives add cor5X dummy
scoreboard objectives add cor5Y dummy
scoreboard objectives add cor5Z dummy

scoreboard objectives add cor6X dummy
scoreboard objectives add cor6Y dummy
scoreboard objectives add cor6Z dummy

scoreboard objectives add cor7X dummy
scoreboard objectives add cor7Y dummy
scoreboard objectives add cor7Z dummy

# # slow raycast scoreboards
# scoreboard objectives add rc_steps dummy
# scoreboard objectives add rc_particle_end dummy
# scoreboard objectives add rc_particle_id dummy
# scoreboard objectives add rc_duration dummy
# scoreboard objectives add rc_age dummy
# scoreboard objectives add rc_current_step dummy
