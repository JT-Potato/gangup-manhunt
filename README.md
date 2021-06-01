# gangup-manhunt
Gangup Manhunt! Includes development server kit as well. Developers, your bit is at the end of this document.

## Wiki
`/function mh:start` to start the manhunt. We take care of the rest!

For now, unless there is demand for easy installation, it's going to be up to you.

## Changelog
### Version 3 - The Heart Attack Update
Increased the stakes to about 1000x, hopefully people will care more now, hence the name of this update :)
- Added a time limit of 1 hour. Hunters will win if the game has not ended yet.
- Hunters can no longer return to being a speedrunner

Balance:
- Speedrunners are now stronger than hunters in fight, to preserve the game (Resistance 5, Regeneration 2)
- The last speedrunner gets 10 hearts of absorption. This is refilled every 30 seconds.
- The game starts with only 1 hunter
    Shuffle has been removed (because logistics)

Speed:
- After entering the nether, a custom manhunt end portal will be spawned at 0, 255, 0 in the overworld, to attempt to spark aerial combat and increase the speed in which the game progresses to The End.

### Version 2 - The Super Speedy Update
- Added 'Dream hacks': Increases the chances of blaze rods (100%) and ender pearls from piglin bartering (10%). Endermen will also drop 2 pearls 100% of the time, and Iron golems drop between 5-10 iron.
- Added scoreboard which indicates the team of each player

### Version 1
- Literally the beginning

# Developers! Here!
## Development Guide
This repo used to have a development server. It's easier for me, the maintainer, to set your own one up instead, and far cleaner for github.

## Datapack development basics
`# this is a comment!`

`tellraw {"text":"This is a standard minecraft command"}`
The ability to use Minecraft commands mean that this is fairly easy. Just spin up your favorite IDE and start!

We are looking for new ideas and input. Suggest some by opening in issue, or fork this repository and code it yourself, before creating a pull request!