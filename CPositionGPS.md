## Name ##

[PositionGPS](CPositionGPS.md)
### Super Types ###
```
anyType
  |
  +--PositionGPS (restriction)
```


---


### Documentation ###


> GPS coordinate of a point.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `alt`=xs:float  `alt-mode`=[AltitudeModeEnum](SAltitudeModeEnum.md) : absolute  `lat`=[Angle90](SAngle90.md)  `lon`=[Angle180](SAngle180.md)>

> </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| alt      |  Altitude of a GPS position expressed as a float value | xs:float | optional |             |           | unqualified |
| alt-mode |                 | [golfml:AltitudeModeEnum](SAltitudeModeEnum.md) | optional | absolute    |           | unqualified |
| lat      |  				Latitude of the GPS position expressed as a float value between -90� (South Pole) to +90� (North Pole).			 | [golfml:Angle90](SAngle90.md) | required |             |           | unqualified |
| lon      |  				Longitude in the GPS position expressed as a float value between -180� for longitude West of Greenwich				to +180� for longitude East of Greenwich.			 | [golfml:Angle180](SAngle180.md) | required |             |           | unqualified |


---


### Local Usage ###
> [Position](CPosition.md)