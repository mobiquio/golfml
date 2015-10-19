## Name ##

[Player](CPlayer.md)
### Super Types ###
```
anyType
  |
  +--Player (restriction)
```


---


### Documentation ###


> Type used to record all information about a golfer: Identification, equipment, rounds played,
> statistics.
> A player has a mandatory gender attribute.
> The name and date-of-birth elements are mendatory as the are part of the primary key.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `dexterity`=[Dexterity](SDexterity.md)  `gender`=[Gender](SGender.md)  `language`=xs:string>
> > ( [uid](CUID.md)`*`, name, date-of-birth, [current-handicap](CPlayerHandicap.md)?, [address](CAddress.md)`*`, [contact](CContact.md)`*`, [home-country-club](CCountryClubChoice.md)?, [note](CNote.md)`*`, [media](CMedia.md)`*`, [equipment-list](CEquipmentList.md)?, [golf-bag](CGolfBag.md)`*`, [round](CRound.md)`*`, [statistics](CStatisticsCollection.md)`*`   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| dexterity |  Dexterity of the player | [golfml:Dexterity](SDexterity.md) | optional |             |           | unqualified |
| gender   |  Gender of the player | [golfml:Gender](SGender.md) | required |             |           | unqualified |
| language |  Language of the player | xs:string | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [address](CAddress.md) |  					Address of the player.				 | [golfml:Address](CAddress.md) |
| [contact](CContact.md) |  					Contact information of the player.				 | [golfml:Contact](CContact.md) |
| [current-handicap](CPlayerHandicap.md) |  Denormalisation of the current handicap of the player | [golfml:PlayerHandicap](CPlayerHandicap.md) |
| date-of-birth |  					Date of birth of player, used to uniquely identify him.				 | xs:date  |
| [equipment-list](CEquipmentList.md) |  					List of equipement owned by the player.				 | [golfml:EquipmentList](CEquipmentList.md) |
| [golf-bag](CGolfBag.md) |  					Collection of at most 14 golf clubs.				 | [golfml:GolfBag](CGolfBag.md) |
| [home-country-club](CCountryClubChoice.md) |  					Main country club of the player.				 | [golfml:CountryClubChoice](CCountryClubChoice.md) |
| [media](CMedia.md) |  Media associated with the player | [golfml:Media](CMedia.md) |
| name     |  					Name of the player.				 | xs:string |
| [note](CNote.md) |  					Note associated with the player.				 | [golfml:Note](CNote.md) |
| [round](CRound.md) |  					A round of golf played by the player.				 | [golfml:Round](CRound.md) |
| [statistics](CStatisticsCollection.md) |  					A set of statistical data associated with the player.				 | [golfml:StatisticsCollection](CStatisticsCollection.md) |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |


---


### Local Usage ###

> [golfml](Egolfml.md)