## Name ##

[PlayerHandicap](CPlayerHandicap.md)
### Super Types ###
```
anyType
  |
  +--PlayerHandicap (restriction)
```


---


### Documentation ###


> Type to specify a player's handicap. The mandatory attribute specify the method used to compute
> the handicap.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `handicap-system`=[HandicapSystemEnum](SHandicapSystemEnum.md)  `other`=xs:string>
> > [FloatWithOneFractionalNumber](SFloatWithOneFractionalNumber.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| handicap-system |                 | [golfml:HandicapSystemEnum](SHandicapSystemEnum.md) | optional |             |           | unqualified |
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |


---


### Local Usage ###

> [Player](CPlayer.md)