## Name ##

[StrokeDetail](CStrokeDetail.md)
### Super Types ###
```
anyType
  |
  +--StrokeDetail (restriction)
```


---


### Documentation ###


> Elements used to record details about a golf stroke.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `drop`=xs:boolean  `number`=xs:nonNegativeInteger>
> > ( player? ; [position](CPosition.md)? ; time? ; [golf-club](CREF_GolfClub.md)? ; [landing](SGolfCourseAreaTypeEnum.md)? ; [distance](CLengthWithUnits.md)? ; [precision](CStrokePrecision.md)? ; [distance-to-hole](CLengthWithUnits.md)? ; [note](CNote.md)? )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| drop     |  				Boolean flag indicating if the stroke was a drop.			 | xs:boolean | optional |             |           | unqualified |
| number   |  				Order number of the stroke playing the hole.			 | xs:nonNegativeInteger | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [distance](CLengthWithUnits.md) |  											Distance of the stroke.					 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [distance-to-hole](CLengthWithUnits.md) |  											Distance left to the hole BEFORE the stroke.					 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| [golf-club](CREF_GolfClub.md) |  					Golf club used for stroke.				 | [golfml:REF\_GolfClub](CREF_GolfClub.md) |
| [landing](SGolfCourseAreaTypeEnum.md) |  					Information on landing are of stroke.				 | [golfml:GolfCourseAreaTypeEnum](SGolfCourseAreaTypeEnum.md) |
| [note](CNote.md) |  Comment about the stroke | [golfml:Note](CNote.md) |
| player   |  					Name of the player who actually stroked the ball					in best-ball, four-ball or other similar team competition.				 | xs:string |
| [position](CPosition.md) |  					Position FROM where the stroke take place.				 | [golfml:Position](CPosition.md) |
| [precision](CStrokePrecision.md) |  					Information on the precision of the stroke regarding distance and direction.				 | [golfml:StrokePrecision](CStrokePrecision.md) |
| time     |  					Time of stroke.				 | xs:dateTime |


---


### Local Usage ###

> [Strokes](CStrokes.md)