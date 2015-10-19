## Name ##

[ClubDistance](CClubDistance.md)
### Super Types ###
```
anyType
  |
  +--[CLengthWithUnits LengthWithUnits] (restriction)
       |
       +--ClubDistance (extension)
```


---


### Documentation ###


> Average distance hit with a given golf club.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `date`=xs:date  `precision`=[StrokeTypeEnum](SStrokeTypeEnum.md) : straight  `units`=[UnitOfLengthEnum](SUnitOfLengthEnum.md) : meters>
> > [Length](SLength.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| date     |  						Date of measurement or statistics.					 | xs:date  | optional |             |           | unqualified |
| precision |  						Information on the precision of the stroke regarding average direction.					 | [golfml:StrokeTypeEnum](SStrokeTypeEnum.md) | optional | straight    |           | unqualified |
| units    |                 | [golfml:UnitOfLengthEnum](SUnitOfLengthEnum.md) | optional | meters      |           | unqualified |


---


### Local Usage ###

> [GolfClub](CGolfClub.md)