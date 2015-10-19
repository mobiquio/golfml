## Name ##

[StatisticCollectionTypesEnum](SStatisticCollectionTypesEnum.md)
### Super Types ###
```
string
  |
  +--StatisticCollectionTypesEnum (restriction)
```


---


### Documentation ###


> List of methods used to compute statistics. Statistics can be accumulated
  * for a single round (example: greens-in-regulation, fairway-hits...)
  * for all rounds played on the same course (example: dream-round...)
  * for all rounds played between two dates (example: annual statistics)
  * for any combination of the above constraints.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> ( 'round' | 'course' | 'duration' | 'other' )
### Local Usage ###
> > [StatisticsCollection](CStatisticsCollection.md)