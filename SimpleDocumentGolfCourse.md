Here is an example of a very simple GolfML document.

While designed to be processed by computer programs, it is readable by golfers.

```
<?xml version="1.0" encoding="utf-8"?>
<golfml xmlns="http://code.google.com/p/golfml"  version="0.9">

  <country-club>
    <name>The Club at Oak Hill</name>
    <address>
      <street>100 Clubhouse Drive</street>
      <postal-code>00000</postal-code>
      <municipality>Golf Heaven</municipality>
      <region>GA</region>
      <country code="US">U.S.A.</country>
    </address>
    <contact type="club-house">
      <phone>555-5551212</phone>
    </contact>
    <golf-course>
      <name>The Club at Oak Hill</name>
      <tee-set name="Back" gender="gentlemen" colour="blue">
        <qualification>
          <qualification-usga>
            <rating>72.8</rating>
            <slope>135</slope>
          </qualification-usga>
        </qualification>
        <tee number="1">
          <par>5</par>
          <handicap-stroke>15</handicap-stroke>
          <length units="meters">475</length>
          <length units="yards">519</length>
        </tee>
        <tee number="2">
          <par>3</par>
          <handicap-stroke>18</handicap-stroke>
          <length units="meters">105</length>
          <length units="yards">115</length>
        </tee>
        ...
      </tee-set>

      <tee-set name="Forward" gender="ladies" colour="pink">
        <qualification>
          <qualification-usga>
            <rating>70.9</rating>
            <slope>125</slope>
          </qualification-usga>
        </qualification>
        <tee number="1">
          <par>5</par>
          <handicap-stroke>15</handicap-stroke>
          <length units="meters">378</length>
          <length units="yards">413</length>
        </tee>
        <tee number="2">
          <par>3</par>
          <handicap-stroke>18</handicap-stroke>
          <length units="meters">83</length>
          <length units="yards">91</length>
        </tee>
        ...
      </tee-set>
    </golf-course>
  </country-club>

  <application dotname="com.scorecard.app" name="scorecard application" xmlns:s="http://app.scorecard.com/golfml">
    <s:preference name="handicap-method">usga</s:preference>
    <s:preference name="units-system">metric</s:preference>
  </application>

</golfml>
```