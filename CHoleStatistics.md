## Name ##

[HoleStatistics](CHoleStatistics.md)
### Super Types ###
```
anyType
  |
  +--HoleStatistics (restriction)
```


---


### Documentation ###


> Type used to record basic hole statistics such as fairway hits and greens in regulation.
> All elements are optional.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( fairway? ; green-in-regulation? ; [driving-distance](CLengthWithUnits.md)? ; [approach-to-hole](CLengthWithUnits.md)? )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [approach-to-hole](CLengthWithUnits.md) |  Distance left to hole when ball landed on green | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [driving-distance](CLengthWithUnits.md) |  					Driving distance.				 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| fairway  |  					Fairway hit.				 | xs:boolean |
| green-in-regulation |  					Green reached in regulation.				 | xs:boolean |


---


### Local Usage ###

> [HoleScore](CHoleScore.md)