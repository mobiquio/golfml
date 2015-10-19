## Name ##

[PositionWithSequence](CPositionWithSequence.md)
### Super Types ###
```
anyType
  |
  +--[CPosition Position] (restriction)
       |
       +--PositionWithSequence (extension)
```


---


### Documentation ###


> Coordinate of a point in a list of points (polygon).


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `number`=xs:nonNegativeInteger>
> > ( [gps](CPositionGPS.md) | [other](CRoomForExtension.md) )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| number   |                 | xs:nonNegativeInteger | required |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [gps](CPositionGPS.md) |  					GPS coordinate of a point.				 | [golfml:PositionGPS](CPositionGPS.md) |
| [other](CRoomForExtension.md) |  					Coordinate of a point in an arbitraty unit system.				 | [golfml:RoomForExtension](CRoomForExtension.md) |


---


### Local Usage ###

> [AreaOfInterest](CAreaOfInterest.md)