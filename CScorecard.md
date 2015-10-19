## Name ##

[Scorecard](CScorecard.md)
### Super Types ###
```
anyType
  |
  +--Scorecard (restriction)
```


---


### Documentation ###


> A Scorecard contains scoring information for a round of golf: Tees used (reference to them),
> handicap used by the player for this round and consecutive strokes allowed (depending on the tees rating and slope),
> golf bag used by the player, and finally score.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [tees](CREF_Tees.md), handicap?, handicap-strokes?, [golf-bag-ref](CREF_GolfBag.md)?, [summary](CRoundSummary.md)?, [score](CScore.md)?   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [golf-bag-ref](CREF_GolfBag.md) |  					Reference to the golf bag used for the round of golf.				 | [golfml:REF\_GolfBag](CREF_GolfBag.md) |
| handicap |  					Handicap used for the round of golf.				 | xs:float |
| handicap-strokes |  					Denormalisation: Number of strokes received for the round.				 | xs:integer |
| [score](CScore.md) |  					Detailed information about the score for the round of golf.				 | [golfml:Score](CScore.md) |
| [summary](CRoundSummary.md) |  Denormalisation: Basic statistics for the round of golf | [golfml:RoundSummary](CRoundSummary.md) |
| [tees](CREF_Tees.md) |  					Reference to tee set used for the round of golf.				 | [golfml:REF\_Tees](CREF_Tees.md) |


---


### Local Usage ###

> [Round](CRound.md)