## Name ##

[HoleScore](CHoleScore.md)
### Super Types ###
```
anyType
  |
  +--HoleScore (restriction)
```


---


### Documentation ###


> Records detailed hole score information.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `number`=[OneToEighteen](SOneToEighteen.md)>
> > ( allowed-strokes? ; strokes ; points? ; putts? ; money? ; [penalties](CPenalty.md)? ; [stroke-detail](CStrokes.md)? ; [statistics](CHoleStatistics.md)? )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| number   |  				Order number of hole.			 | [golfml:OneToEighteen](SOneToEighteen.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| allowed-strokes |  Total number of strokes allowed on hole according to handicap of player, course rating and hole index | xs:positiveInteger |
| money    |  					Money earned or loss on hole in wagers.				 | xs:float |
| [penalties](CPenalty.md) |  					Total number of penalty strokes.				 | [golfml:Penalty](CPenalty.md) |
| points   |  					Total number of points for hole.				 | xs:nonNegativeInteger |
| putts    |  					Number of putts, from the green.				 | xs:nonNegativeInteger |
| [statistics](CHoleStatistics.md) |  					Denormalised statistics for hole.				 | [golfml:HoleStatistics](CHoleStatistics.md) |
| [stroke-detail](CStrokes.md) |  					Detail of each stroke.				 | [golfml:Strokes](CStrokes.md) |
| strokes  |  					Total number of strokes for hole, including penalties.				 | xs:positiveInteger |


---


### Local Usage ###

> [Score](CScore.md)