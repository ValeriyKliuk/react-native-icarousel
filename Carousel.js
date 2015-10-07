const React = require('react-native');
const { requireNativeComponent } = React;
const { CarouselManager } = require('NativeModules');

var Carousel = React.createClass({
    propTypes: {
        vertical: React.PropTypes.bool,
        bounces: React.PropTypes.bool,
        scrollEnabled: React.PropTypes.bool,
        type: React.PropTypes.number,
        perspective: React.PropTypes.number,
        decelerationRate: React.PropTypes.number,
        scrollSpeed: React.PropTypes.number,
        bounceDistance: React.PropTypes.number
    },
    render: function () {
        return (
            <RCTCarousel {...this.props} />
        );
    }
});
var RCTCarousel = requireNativeComponent('RCTCarousel', Carousel);

Carousel.Type = CarouselManager.Type;

module.exports = Carousel;
