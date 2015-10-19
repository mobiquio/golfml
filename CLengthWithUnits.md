## Name ##

[LengthWithUnits](CLengthWithUnits.md)
### Super Types ###
```
anyType
  |
  +--LengthWithUnits (restriction)
```


---


### Documentation ###


> Length of an object and its unit of measure.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `units`=[UnitOfLengthEnum](SUnitOfLengthEnum.md) : meters>
> > [Length](SLength.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| units    |                 | [golfml:UnitOfLengthEnum](SUnitOfLengthEnum.md) | optional | meters      |           | unqualified |


---


### Sub Types ###
```
[CLengthWithUnits LengthWithUnits] (restriction)
  |  
  +--[CClubDistance ClubDistance] (extension)

```

---


### Local Usage ###

> [ClubDistance](CClubDistance.md), [HoleDistanceOnGreen](CHoleDistanceOnGreen.md), [HolePlacementWithDistances](CHolePlacementWithDistances.md), [HoleStatistics](CHoleStatistics.md), [Shaft](CShaft.md), [StrokeDetail](CStrokeDetail.md), [Tee](CTee.md), [TeeSetSummary](CTeeSetSummary.md)