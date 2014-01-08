//
//  GeoJSONPoint.m
//  geojson-parser
//
//  Created by JM on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GeoJSONPoint.h"

@implementation GeoJSONPoint

@synthesize longitude = _longitude;
@synthesize latitude = _latitude;
@synthesize altitude = _altitude;

- (id) initWithGeoJSONCoordinates:(NSArray*)coord
{
    if (self = [super init]) {
        int c = coord.count;
        if (c >= 2) {
            _longitude = [coord[0] doubleValue];
            _latitude = [coord[1] doubleValue];
            _altitude = (c >= 3) ? [coord[2] doubleValue] : -1;
        } else {
            self = nil;
        }
    }
    return self;
}

- (id) initWithLocation:(CLLocation *)location
{
    if (self = [super init]) {
        _longitude = location.coordinate.longitude;
        _latitude = location.coordinate.latitude;
    }
    return self;

}

- (id) initWithCoordinates:(CLLocationCoordinate2D)coord
{
    if (self = [super init]) {
        _longitude = coord.longitude;
        _latitude = coord.latitude;
    }
    return self;
}

+ (bool) isType:(NSString*)type
{
    return [@"Point" isEqualToString:type];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Point[lat=%f, lng=%f, alt=%f]", _longitude, _latitude, _altitude, nil];
}

- (NSDictionary *)proxyForJson
{
    return @{@"type": @"Point", @"coordinates":@[@(_longitude), @(_latitude)]};
}

@end
