## Name ##

[StrokePrecision](CStrokePrecision.md)
### Super Types ###
```
anyType
  |
  +--StrokePrecision (restriction)
```


---


### Documentation ###


> Elements to quantify the precision and quality of a stroke in two directions:
> Front/Back for stroke length, and Left/Right for stroke direction.
> Elements values can either be numeric values constrained between -2 and +2 or text values out of list.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `stroke-type`=[StrokeTypeEnum](SStrokeTypeEnum.md)  `type`=xs:string>
> > ( ( [front-back](SStrokePrecisionValue.md)?, [left-right](SStrokePrecisionValue.md)? ) | ( [front-back-text](SStrokeLengthEnum.md)?, [left-right-text](SStrokeDirectionEnum.md)? ) )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| stroke-type |  				Qualification of the stroke.			 | [golfml:StrokeTypeEnum](SStrokeTypeEnum.md) | optional |             |           | unqualified |
| type     |  				Type of pr�cision used (values or text).			 | xs:string | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [front-back](SStrokePrecisionValue.md) |  						Precision of a stroke relative to the distance.					 | [golfml:StrokePrecisionValue](SStrokePrecisionValue.md) |
| [front-back-text](SStrokeLengthEnum.md) |  						Precision of a stroke relative to the distance.					 | [golfml:StrokeLengthEnum](SStrokeLengthEnum.md) |
| [left-right](SStrokePrecisionValue.md) |  						Precision of a stroke relative to the direction.					 | [golfml:StrokePrecisionValue](SStrokePrecisionValue.md) |
| [left-right-text](SStrokeDirectionEnum.md) |  						Precision of a stroke relative to the direction.					 | [golfml:StrokeDirectionEnum](SStrokeDirectionEnum.md) |


---


### Local Usage ###

> [StrokeDetail](CStrokeDetail.md)