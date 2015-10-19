## Name ##

[Contact](CContact.md)
### Super Types ###
```
anyType
  |
  +--Contact (restriction)
```


---


### Documentation ###


> Contact type for country-club and players.
> The contact has a attribute named type to help identify the contact in a list.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `other`=xs:string  `type`=[ContactTypeEnum](SContactTypeEnum.md)>
> > ( name? ; [phone](SPhoneNumber.md)? ; email? ; website? )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |  Qualification of a contact | [golfml:ContactTypeEnum](SContactTypeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| email    |  					Electronic mail address of contact.				 | xs:string |
| name     |  					Name or description of contact.				 | xs:string |
| [phone](SPhoneNumber.md) |  Telephone number of contact | [golfml:PhoneNumber](SPhoneNumber.md) |
| website  |  					Internet web site URL of contact.				 | xs:anyURI |


---


### Local Usage ###

> [CountryClub](CCountryClub.md), [Player](CPlayer.md)