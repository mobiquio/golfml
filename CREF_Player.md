## Name ##

[REF\_Player](CREF_Player.md)
### Super Types ###
```
anyType
  |
  +--REF_Player (restriction)
```


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `remote-golfml-url`=xs:anyURI>
> > ( player.name, player.date-of-birth   )
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
| player.name |                 | xs:string |


---

