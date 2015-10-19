## Name ##

[PlayerSome](CPlayerSome.md)
### Super Types ###
```
anyType
  |
  +--PlayerSome (restriction)
```


---


### Documentation ###


> Identify partners and opponents during a round of golf.
> PlayerSome must have a player entry in the golfml document. (The player's name, gender, and date of birth is the only mandatory information.)
> Scorecards of other players are stored in their player element.
> Round date and time and foursome elements can be used to reconstruct the 2,3,4 some of a multiplayer round.
> Attributes type and team help identify players as partners or opponents and organise teams.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `team`=xs:string  `type`=[PlayerSomeEnum](SPlayerSomeEnum.md)>
> > ( player.name, player.date-of-birth )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| team     |  Name of the team this player was a member of | xs:string | optional |             |           | unqualified |
| type     |  				Qualification of the player on the 2,3,4 some.			 | [golfml:PlayerSomeEnum](SPlayerSomeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| player.date-of-birth |                 | xs:date  |
| player.name |                 | xs:string |


---


### Local Usage ###

> [FourSome](CFourSome.md)