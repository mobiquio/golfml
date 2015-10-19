## Name ##

[StatisticsCollection](CStatisticsCollection.md)
### Super Types ###
```
anyType
  |
  +--StatisticsCollection (restriction)
```


---


### Documentation ###


> List of statistics computed over the same type.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `other`=xs:string  `type`=[StatisticCollectionTypesEnum](SStatisticCollectionTypesEnum.md)>
> > ( [collection](CStatisticsCollectionDescription.md), [value](CStatisticValue.md)+   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |                 | [golfml:StatisticCollectionTypesEnum](SStatisticCollectionTypesEnum.md) | required |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [collection](CStatisticsCollectionDescription.md) |  Information regarding the collection of the statistic | [golfml:StatisticsCollectionDescription](CStatisticsCollectionDescription.md) |
| [value](CStatisticValue.md) |  						Value of a statistic computed for the supplied collection type.					 | [golfml:StatisticValue](CStatisticValue.md) |


---


### Local Usage ###

> [Player](CPlayer.md)