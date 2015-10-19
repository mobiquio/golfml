## Name ##

[Position](CPosition.md)
### Super Types ###
```
anyType
  |
  +--Position (restriction)
```


---


### Documentation ###


> Coordinate of a point. The coordinate of a point can be either a GPS coordinate or
> coordinates in any specific system.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [gps](CPositionGPS.md) | [other](CRoomForExtension.md) )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [gps](CPositionGPS.md) |  					GPS coordinate of a point.				 | [golfml:PositionGPS](CPositionGPS.md) |
| [other](CRoomForExtension.md) |  					Coordinate of a point in an arbitraty unit system.				 | [golfml:RoomForExtension](CRoomForExtension.md) |


---


### Sub Types ###
```
[CPosition Position] (restriction)
  |  
  +--[CPositionWithSequence PositionWithSequence] (extension)

```

---


### Local Usage ###

> [PointOfInterest](CPointOfInterest.md), [PositionWithSequence](CPositionWithSequence.md), [StrokeDetail](CStrokeDetail.md)