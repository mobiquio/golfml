## Name ##

[HoleDistanceOnGreen](CHoleDistanceOnGreen.md)
### Super Types ###
```
anyType
  |
  +--HoleDistanceOnGreen (restriction)
```


---


### Documentation ###


> Distance from edge of green. From attribute specify which edge the distance is measured from.
> Unit attribute can be used to specify alternate unit system such as 'paces'.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `from`=[OrientationEnum](SOrientationEnum.md)>
> > [LengthWithUnits](SLengthWithUnits.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| from     |  Edge of green the distance is taken from | [golfml:OrientationEnum](SOrientationEnum.md) | required |             |           | unqualified |


---


### Local Usage ###

> [HolePlacementWithDistances](CHolePlacementWithDistances.md)