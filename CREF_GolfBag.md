## Name ##

[REF\_GolfBag](CREF_GolfBag.md)
### Super Types ###
```
anyType
  |
  +--REF_GolfBag (restriction)
```


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `remote-golfml-url`=xs:anyURI>
> > ( ( player.name, player.date-of-birth ), player.golf-bag.name   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| remote-golfml-url |  				URL of remote GolfML document used for references.			 | xs:anyURI | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| player.date-of-birth |                 | xs:date  |
| player.golf-bag.name |                 | xs:string |
| player.name |                 | xs:string |


---


### Local Usage ###

> [GolfBag](CGolfBag.md), [Scorecard](CScorecard.md)