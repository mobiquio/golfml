## Name ##

[TeeSetSummary](CTeeSetSummary.md)
### Super Types ###
```
anyType
  |
  +--TeeSetSummary (restriction)
```


---


### Documentation ###


> Stores denormalized parameters for a set of tees.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( holes?, par?, [front](CLengthWithUnits.md)?, [back](CLengthWithUnits.md)?, [statistic](CStatisticValue.md)`*`   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [back](CLengthWithUnits.md) |  					Denormalisation: Total length for last nine holes.				 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [front](CLengthWithUnits.md) |  					Denormalisation: Total length of first nine holes.				 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| holes    |  					Denormalisation: Number of holes.				 | xs:nonNegativeInteger |
| par      |  					Denormalisation: Total number of strokes for set of tees.				 | xs:positiveInteger |
| [statistic](CStatisticValue.md) |  					Denormalisation: Statistic for the round of golf.				 | [golfml:StatisticValue](CStatisticValue.md) |


---


### Local Usage ###

> [Tees](CTees.md)