## Name ##

[REF\_GolfClub](CREF_GolfClub.md)
### Super Types ###
```
anyType
  |
  +--REF_GolfClub (restriction)
```


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `remote-golfml-url`=xs:anyURI>
> > ( ( golf-club.manufacturer, golf-club.model, golf-club.submodel, golf-club.number ) | [uid](CUID.md) )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| remote-golfml-url |  				URL of remote GolfML document used for references.			 | xs:anyURI | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| golf-club.manufacturer |                 | xs:string |
| golf-club.model |                 | xs:string |
| golf-club.number |                 | xs:string |
| golf-club.submodel |                 | xs:string |
| [uid](CUID.md) |                 | [golfml:UID](CUID.md) |


---


### Local Usage ###

> [GolfBag](CGolfBag.md), [StrokeDetail](CStrokeDetail.md)