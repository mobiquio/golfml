## Name ##

[AreaOfInterest](CAreaOfInterest.md)
### Super Types ###
```
anyType
  |
  +--AreaOfInterest (restriction)
```


---


### Documentation ###


> Area of interest on a golf course.
> An area of interest contains a name, a list of coordinates of points, and a specification of its type
> limited to a list of valid values.

> Note: An AreaOfInterest can be a line (example: Out-of-bound line along a hole).


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `number`=xs:nonNegativeInteger  `other`=xs:string  `type`=[GolfCourseAreaTypeEnum](SGolfCourseAreaTypeEnum.md)>
> > ( name, description?, [position](CPositionWithSequence.md){2,**}   )
> > </...>

---**

### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| number   |  Position of the area of interest in a list of areas of interest | xs:nonNegativeInteger | optional |             |           | unqualified |
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |  				Type of area of interest.			 | [golfml:GolfCourseAreaTypeEnum](SGolfCourseAreaTypeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| description |  					Description of an area of interest.				 | xs:string |
| name     |  					Name of an area of interest.				 | xs:string |
| [position](CPositionWithSequence.md) |  Position of a point of the polygon that forms the area of interest | [golfml:PositionWithSequence](CPositionWithSequence.md) |


---


### Local Usage ###

> [Placemarks](CPlacemarks.md)