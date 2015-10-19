## Name ##

[GolfGame](CGolfGame.md)
### Super Types ###
```
anyType
  |
  +--GolfGame (restriction)
```


---


### Documentation ###


> Game played during the round of golf.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `other`=xs:string  `type`=[GolfGameTypeEnum](SGolfGameTypeEnum.md)>
> > [string](Sstring.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |  						Type of golf game played.					 | [golfml:GolfGameTypeEnum](SGolfGameTypeEnum.md) | optional |             |           | unqualified |


---


### Local Usage ###

> [Round](CRound.md)