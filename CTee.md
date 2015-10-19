## Name ##

[Tee](CTee.md)
### Super Types ###
```
anyType
  |
  +--Tee (restriction)
```


---


### Documentation ###


> Description of a hole played from a set of tee.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `number`=[OneToEighteen](SOneToEighteen.md)>
> > ( [par](SPar.md), [handicap-stroke](SHandicapStroke.md), [length](CLengthWithUnits.md){0,2}   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| number   |                 | [golfml:OneToEighteen](SOneToEighteen.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [handicap-stroke](SHandicapStroke.md) |  					Relative difficulty level of the hole for this set of tees.				 | [golfml:HandicapStroke](SHandicapStroke.md) |
| [length](CLengthWithUnits.md) |  Length of the hole from the set of tees | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [par](SPar.md) |  					Par score for the hole.				 | [golfml:Par](SPar.md) |


---


### Local Usage ###

> [Tees](CTees.md)