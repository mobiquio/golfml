## Name ##

[StatisticValue](CStatisticValue.md)
### Super Types ###
```
anyType
  |
  +--StatisticValue (restriction)
```


---


### Documentation ###


> Numeric value for a statistic. The name of the statistics is mandatory.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `name`=xs:string>
> > [double](Sdouble.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| name     |                 | xs:string | required |             |           | unqualified |


---


### Local Usage ###

> [RoundSummary](CRoundSummary.md), [Statistics](CStatistics.md), [StatisticsCollection](CStatisticsCollection.md), [TeeSetSummary](CTeeSetSummary.md)