## Name ##

[Collection](CCollection.md)
### Super Types ###
```
anyType
  |
  +--Collection (restriction)
```


---


### Documentation ###


> Information regarding the collection of the statistic (meta data).
  * for a single round: the round element specify the date of the round.
  * for all rounds played on the same course: the golf-course element specify the golf course.
  * for all rounds played between two dates: the date-from and date-to element specify the time frame.
  * for any combination of the above constraints: elements can be combined.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( date-from?, date-to?, round?, [golf-course](CREF_GolfCourse.md)?   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| date-from |  					Start date for the collection of statistical calculation.				 | xs:date  |
| date-to  |  					End date for the collection of statistical calculation.				 | xs:date  |
| [golf-course](CREF_GolfCourse.md) |  					Golf course used for statistical calculation.				 | [golfml:REF\_GolfCourse](CREF_GolfCourse.md) |
| round    |  					Date (and time) of a round of golf used for statistical calculation.				 | xs:dateTime |


---


### Local Usage ###

> [StatisticsCollection](CStatisticsCollection.md)