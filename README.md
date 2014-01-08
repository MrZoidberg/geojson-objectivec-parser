geojson-objectivec-parser
==========================

This set of Objective-C classes implements a data model for [GeoJSON specification](http://www.geojson.org/geojson-spec.html). It uses a one-to-one approach, so don't be intimidated by the amount of classes: they are just data wrappers of json objects.

## Changes since forked

1. Removed SBJson dependency
2. Updated to ARC
3. Added property to `GeoJSONFeatureCollection` to get raw array of the internal features
4. More ways to init `GeoJSONPoint`
5. Cocoapods support (TBD)

## Installation

Copy classes from parser folder to your project (excluding tests).

Or with **Cocoapods**

	pod 'geojson-objectivec-parser', :git => "https://github.com/MrZoidberg/geojson-objectivec-parser/geojson-objectivec-parser.git"

## Usage

```obj-c

GeoJSONFactory *factory = [GeoJSONFactory new];
    
if ([factory createObjectFromJSON:[@"the geojson string" dataUsingEncoding:NSUTF8StringEncoding]]) {
	// parse ok
	// factory.type contains the type of object created (GeoJSONPoint, GeoJSONFeature, etc.)
	// factory.object contains the object of previous type
} else {
	// parse error. No more info, sorry
}
```

## Dependency

This fork has dependency on CoreLocation.

## ARC

YOURS is ARC only and works on iOS >= 5.0


## TODO (feel free to pull)

* More error handling (parse error)
* Implement Coordinate Reference System Objects (http://www.geojson.org/geojson-spec.html#coordinate-reference-system-objects)
* Support bounding boxes (http://www.geojson.org/geojson-spec.html#bounding-boxes)
* Test on MacOS and write a sample

## Screeshot

![Emulator showing one object tree created](https://github.com/jmnavarro/geojson-objectivec-parser/blob/master/img/ios-sample.png?raw=true)


