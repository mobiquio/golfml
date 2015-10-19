## Name ##

[HolePlacementWithDistances](CHolePlacementWithDistances.md)
### Super Types ###
```
anyType
  |
  +--HolePlacementWithDistances (restriction)
```


---


### Documentation ###


> Description of the placement on the hole on the surface of the green in a precise,
> tournament fashion, which includes length and width of the green and distance of
> the hole from 2 edges of the green.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `number`=[OneToEighteen](SOneToEighteen.md)>
> > ( [green-length](CLengthWithUnits.md), [green-width](CLengthWithUnits.md), [hole-distance](CHoleDistanceOnGreen.md){2,2}   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| number   |                 | [golfml:OneToEighteen](SOneToEighteen.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [green-length](CLengthWithUnits.md) |  					Length of green.				 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [green-width](CLengthWithUnits.md) |  					Width of green.				 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [hole-distance](CHoleDistanceOnGreen.md) |  					Distance of hole from edge of green.				 | [golfml:HoleDistanceOnGreen](CHoleDistanceOnGreen.md) |


---


### Local Usage ###

> [HolePlacement](CHolePlacement.md)