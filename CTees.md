## Name ##

[Tees](CTees.md)
### Super Types ###
```
anyType
  |
  +--Tees (restriction)
```


---


### Documentation ###


> Set of tees from which a golf course can be played.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `colour`=xs:string  `date-from`=xs:date  `date-to`=xs:date  `gender`=[GolfingGender](SGolfingGender.md)  `name`=xs:string>
> > ( [uid](CUID.md)`*`, [qualification](CHoleQualification.md), [tee](CTee.md){1,18}, [version](CVersion.md)`*`, [summary](CTeeSetSummary.md)?, [statitics](CStatistics.md)?   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| colour   |  				Color of tee set.			 | xs:string | optional |             |           | unqualified |
| date-from |  				Start date of validity of tee set.			 | xs:date  | optional |             |           | unqualified |
| date-to  |  				End date of validity of tee set.			 | xs:date  | optional |             |           | unqualified |
| gender   |  				"Gender" of tee set for handicaping purpose.			 | [golfml:GolfingGender](SGolfingGender.md) | required |             |           | unqualified |
| name     |  Name of the tee set | xs:string | required |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [qualification](CHoleQualification.md) |  					Qualification of the hole for handicaping purposes.				 | [golfml:HoleQualification](CHoleQualification.md) |
| [statitics](CStatistics.md) |  A set of statistical data associated with the set of tees | [golfml:Statistics](CStatistics.md) |
| [summary](CTeeSetSummary.md) |  					A set of denormalized parameters for a set of tees, like total length of front and back, total length, par, etc.				 | [golfml:TeeSetSummary](CTeeSetSummary.md) |
| [tee](CTee.md) |  Description of a single hole | [golfml:Tee](CTee.md) |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |
| [version](CVersion.md) |  					Records tee set modifications over time.				 | [golfml:Version](CVersion.md) |


---


### Local Usage ###

> [GolfCourse](CGolfCourse.md)