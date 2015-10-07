# react-native-icarousel

Binding between [react-native](https://github.com/facebook/react-native)
and [iCarousel](https://github.com/nicklockwood/iCarousel).

## Installation

 * Install package

```
npm install ertrzyiks/react-native-icarousel --save
```

 * Install iCarousel Pod
 * Libraries->Add Files to "<project name>", select ``./node_modules/react-native-icarousel/ios/ReactNativeICarousel.xcodeproj`
 * Drag and drop iCarousel pod (i know there must be better way!) to ReactNativeICarousel Library
 * In project `Build Phases`, in Link Binary With Libraries section add libReactNativeICarousel.a


## Usage

See full example at [ertrzyiks/react-native-icarousel-example](https://github.com/ertrzyiks/react-native-icarousel-example)

```
var Carousel = require('react-native-icarousel');

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF'
  }
});

var CarouselTest = React.createClass({
  render: function() {
    return (
      <Carousel style={styles.container} type={Carousel.Type.iCarouselTypeWheel}>
        <Text> One! </Text>
        <Text> Two! </Text>
        <Text> Three! </Text>
        <Text> Four! </Text>
        <Text> Five! </Text>
      </Carousel>
    );
  }
});
```

## Supported properties


| Prop Name        | Type                        |                                       |
|------------------|-----------------------------|---------------------------------------|
| type             | Enum (Carousel.Type.*)      |  Type of carousel                     |
| vertical         | Bool                        |  Set carousel  to vertical            |
| scrollEnabled    | Bool                        |  Set false to disable carousel        |
| bounces          | Bool                        |  Set true to enable bouncing          |
| bounceDistance   | Number                      |                                       |
| perspective      | Number                      |  Defaults to (-1 / 500)               |
| scrollSpeed      | Number                      |  Defaults to 1.0                      |
| decelerationRate | Number                      |  Kind of friction?                    |

See [official docs](https://github.com/nicklockwood/iCarousel#properties) for more details
