## Name ##

[RoundSummary](CRoundSummary.md)
### Super Types ###
```
anyType
  |
  +--RoundSummary (restriction)
```


---


### Documentation ###


> Stores denormalized score for the round of golf.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( strokes?, points?, putts?, [penalties](CPenalty.md)?, money?, [statistic](CStatisticValue.md)`*`   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| money    |  					Denormalisation: Total money earned or loss during the round of golf.				 | xs:float |
| [penalties](CPenalty.md) |  					Denormalisation: Total number of penalty strokes during the round of golf.				 | [golfml:Penalty](CPenalty.md) |
| points   |  					Denormalisation: Total number of points for the round of golf.				 | xs:nonNegativeInteger |
| putts    |  					Denormalisation: Total number of putts for the round of golf.				 | xs:nonNegativeInteger |
| [statistic](CStatisticValue.md) |  					Denormalisation: Statistic for the round of golf.				 | [golfml:StatisticValue](CStatisticValue.md) |
| strokes  |  					Denormalisation: Total number of strokes for the round of golf.				 | xs:positiveInteger |


---


### Local Usage ###

> [Scorecard](CScorecard.md)