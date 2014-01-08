//
//  GeoJSONMultiPolygon.m
//  geojson-parser
//
//  Created by JM on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GeoJSONFeatureCollection.h"
#import "GeoJSONFeature.h"

@implementation GeoJSONFeatureCollection


- (id) initWithGeoJSONFeatureCollection:(NSDictionary*)collection
{
    if (self = [super init]) {
        NSArray *features = collection[@"features"];
        
        if (features != nil) {
            NSMutableArray *tmp = [[NSMutableArray alloc] initWithCapacity:features.count];
            
            for (NSDictionary* feat in features) {
                GeoJSONFeature *feature = [[GeoJSONFeature alloc] initWithGeoJSONFeature:feat];
                if (feature) {
                    [tmp addObject:feature];
                }
            }
            
            _features = [[NSArray alloc] initWithArray:tmp];
        } else {
            self = nil;
        }
    }
    return self;
}


- (GeoJSONFeature*) featureAt:(int)index
{
    return index < _features.count ? _features[index] : nil;
}

- (int) count
{
    return _features ? _features.count : -1;
}


+ (bool) isType:(NSString*)type
{
    return [@"FeatureCollection" isEqualToString:type];
}

- (NSString*) description
{
    NSMutableString *str = [[NSMutableString alloc] initWithCapacity:256];
    [str appendFormat:@"FeatureCollection(count=%d)[", self.count, nil];
    int i = 0;
    for (GeoJSONFeature *f in _features) {
        [str appendFormat:@"\n\tFeature %d: %@", i++, [f description]];
    }
    [str appendFormat:@"\n]"];
    return [NSString stringWithString:str];
}

- (NSArray *)rawArray
{
    return _features;
}


@end
