## Name ##

[PointOfInterest](CPointOfInterest.md)
### Super Types ###
```
anyType
  |
  +--PointOfInterest (restriction)
```


---


### Documentation ###


> Point of interest on a golf course.
> A point of interest contains a name, the coordinate of the point, a specification of its type limited to a list
> of valid values, and an optional orientation in respect to the point.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `number`=xs:nonNegativeInteger  `orientation`=[OrientationEnum](SOrientationEnum.md)  `other`=xs:string  `subtype`=xs:string  `type`=[GolfCourseAreaTypeEnum](SGolfCourseAreaTypeEnum.md)>
> > ( name? ; description? ; [position](CPosition.md) )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| number   |                 | xs:nonNegativeInteger | optional |             |           | unqualified |
| orientation |                 | [golfml:OrientationEnum](SOrientationEnum.md) | optional |             |           | unqualified |
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| subtype  |                 | xs:string | optional |             |           | unqualified |
| type     |                 | [golfml:GolfCourseAreaTypeEnum](SGolfCourseAreaTypeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| description |  					Description of a point of interest.				 | xs:string |
| name     |  					Name of point of interest.				 | xs:string |
| [position](CPosition.md) |  					Coordinate of a point of interest.				 | [golfml:Position](CPosition.md) |


---


### Local Usage ###

> [Placemarks](CPlacemarks.md)