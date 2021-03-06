Urban Warfare
=============

Urban Warfare is a fork of the Battle Royale: Ghost Hotel Project. It is being developed
by the original author of Ghost Hotel, Kegan "Ryan" Hollern. It is a last man standing
game mode. Players are thrown into a random city of altis and told to one thing.

Kill, or be Killed.

Search the nearby buildings for weapons and gear and stay within the ever shrinking circle
to be crowned victorious. Your stats are tracked allowing you to compete with friends to 
see who outperforms others in each of the following categories:

- Wins
- Kills
- Winrate
- Longest Kill
- Play Time

As I continue to work hard on this project you can expect it tobe able to support:

- Any Map (ArmA or Modded)
- Any Mod (Weapons, Vehicles, ACE, ect.)
- Linux Players
- Linux Servers (all server extensions will have a linux counterpart)

You can also expect me to release "leaderboard" web files to allow server owners the option
to host a public leaderboard on their own websites.


Game Type:
==========

Fast Paced FPS. Close Quarters Combat. Urban Environment. Last Man Standing.

Game Info:
==========

- Location: Altis & Stratis
- Time: Random
- Weather: Random + Realism (Synced)
- Players: 30
- Weapons: HGuns, SMGs, ARifles, ect.

Requirements:
=============

Vanilla Game Engine (No Addons Required)

License
=======
![Alt text](http://www.bistudio.com/assets/img/licenses/APL-SA.png "APL-SA")

ChangeLog:
==========
- 1.2.1
	1. Removed: Loot bug
	2. Added: CfgMusic
	3. Added: Ambient Sounds
	4. Added: Limited Third Person
	5. Updated: Spectator camera is now synced between clients
	6. Updated: Unit recoil to be more realistic
	7. Fixed: Players laying down after teleporting bug
	8. Removed: Remnants of BattleRoyale ( as no more code from that project exists )
	
- 1.2.0
	1. Removed: Player config
	2. Removed: Round reset config entry
	3. Added: Leaderboard key for resetting leaderboard data
	4. Updated: Moved PlayersToStart into the server config
	5. Updated: comments
	
- 1.1.1
	1. Removed: VON Tags
	2. Added: Thread names
	3. Added: Delay in auto-reload to improve performance
	4. Added: PIP Checks into spectator billboard
	5. Updated: playableUnits to allPlayers
	6. Updated: Circle barrier distance so an actual circle is formed
	
- 1.1.0
	1. Removed: 10 Round reset
	2. Updated: Spectator cam now centers on bluezones as they are updated
	3. Fixed: Quadbike bugs
	4. Fixed: Blackzone bugs
	5. Fixed: Player teleport bug
	
- 1.0.9
	1. Updated: reset_quads.sqf to delete and recreate quadbikes
	2. Fixed: Bug that left medkits in quadbikes
	3. Fixed: Blackzone drawing bug
	4. Fixed: Quadbike positioning on reset
	
- 1.0.8
	1. Added: Win tracking
	2. Added: Start area name tags
	3. Tweaked: Winner messages
	
- 1.0.7
	1. Added: Stratis map support
	2. Added: Spectator preview board
	3. Added: Customizable server info board
	4. Added: Quadbikes to the start area
	5. Added: Ramp to the start area (stratis)
	6. Updated: Hit and Fired events
	7. Updated: Start lock to support vehicles
	8. Updated: Loot table to simplify it
	9. Updated: Game teleport to support vehicles
	10. Fixed: Kill data from occasionally double logging
	11. Fixed: Script error with CloseDoor.sqf function
	
- 1.0.6 "Stable"
	1. Tweaked: Circle damage timer
	
- 1.0.5
	1. Fixed: Casing error
	
- 1.0.4
	1. Added: Logging
	2. Added: Debug mode
	3. Updated: Black zone system
	4. Updated: Weather system to support new loot
	5. Updated: Loot table compiler
	6. Updated: Loot manager
	
- 1.0.3
	1. Added: More comments
	2. Updated: Winner announcement
	3. Updated: Start announcement
	4. Updated: SimpleFog for performance
	
- 1.0.2
	1. Removed: Old loot spawning system
	2. Removed: Loading screen
	3. Updated: Loot tables
	4. Updated Lighting triggers
	5. Updated: Messages
	6. Tweaked: Circle damage from 1/12 to 1/10 every 10 seconds
	7. Teaked: Zone scaling up from 35% to 40% decrease each change
	8. Fixed: Blue zone randomization
	9. Fixed: Mass grave in waiting area
	10. Added: Jumping animations
	11. Added: New death messages
	12. Added: Auto reload
	13. Added: Kill reasons
	14. Added: Disconnect messages
	15. Added: New server logging
	16. Added: Killcam
	17. Added: Round report
	18. Added: New loot spawning system
	
- 1.0.1
	1. Removed: code that caused bugs in previous patches.
	2. Removed: AFK Timer as it is still incomplete.
	3. Removed: AntiTP as all it did was create lag.
	4. Fixed: Zoning system now uses circle math to keep new zones within old zones
	5. Fixed: Useless threads removed
	6. Fixed: Players being able to take damage at the start region.
	7. Added: Red zone representing the previous zone
	8. Updated: Loot config to place more magazines
	9. Updated: Map texture fix to simplify it.
	10. Updated: Spectator notification. Now non-spectators won't be told they can spectate.
	11. Updated: Player counter in some locations
	
- 1.0.0.1
	1. Added AFK_TIMER code. Still Indev (Suggest removal if hosting new server)

- 1.0.0
	1. Initial Release