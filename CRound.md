## Name ##

[Round](CRound.md)
### Super Types ###
```
anyType
  |
  +--Round (restriction)
```


---


### Documentation ###


> Details about a round of golf: Location of the flags on greens (usually called pin sheet),
> weather conditions, date of the round, opponenents and partners, and the scorecard.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [uid](CUID.md)`*`, date, [holes-played](SGolfingDirectionEnum.md)?, [hole-placement](CHolePlacements.md)?, [weather](CWeather.md)?, [foursome](CFourSome.md)?, [game](CGolfGame.md)?, [wager](CRoomForExtension.md)?, [note](CNote.md)?, [scorecard](CScorecard.md)   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| date     |  					Date and time of the round.				 | xs:dateTime |
| [foursome](CFourSome.md) |  					Player information for the round of golf.				 | [golfml:FourSome](CFourSome.md) |
| [game](CGolfGame.md) |  					Information about the game(s) played during the round of golf.				 | [golfml:GolfGame](CGolfGame.md) |
| [hole-placement](CHolePlacements.md) |  					Placement of holes for the round of golf.				 | [golfml:HolePlacements](CHolePlacements.md) |
| [holes-played](SGolfingDirectionEnum.md) |  					Number of hole played during this round: 9 front, 9 back, or 18.				 | [golfml:GolfingDirectionEnum](SGolfingDirectionEnum.md) |
| [note](CNote.md) |  					Comment about the round.				 | [golfml:Note](CNote.md) |
| [scorecard](CScorecard.md) |  					Scorecard of the round for the player.				 | [golfml:Scorecard](CScorecard.md) |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |
| [wager](CRoomForExtension.md) |  					Information about the wagers during the round of golf.				 | [golfml:RoomForExtension](CRoomForExtension.md) |
| [weather](CWeather.md) |  					Weather information for the round of golf.				 | [golfml:Weather](CWeather.md) |


---


### Local Usage ###

> [Player](CPlayer.md)