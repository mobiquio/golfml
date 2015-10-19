## Name ##

[Penalty](CPenalty.md)
### Super Types ###
```
anyType
  |
  +--Penalty (restriction)
```


---


### Documentation ###


> Type used to record penalty stroke and help identify the reason of the penalty.
> An optional rule attribute can be used to store the rule breached.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `rule`=xs:string>
> > [positiveInteger](SpositiveInteger.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| rule     |  Rule number indicating the violation | xs:string | optional |             |           | unqualified |


---


### Local Usage ###

> [HoleScore](CHoleScore.md), [RoundSummary](CRoundSummary.md)