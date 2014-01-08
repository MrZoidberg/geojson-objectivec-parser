//
//  GeoJSONFeature.h
//  GeoJSONParserSample
//
//  Created by JM on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GeoJSONFactory.h"

@interface GeoJSONFeature : NSObject

@property (nonatomic, readonly, strong) NSString* featureId;
@property (nonatomic, readonly) GeoJSONObjectType geometryType;
@property (nonatomic, readonly, strong) id geometry;
@property (nonatomic, readonly, strong) NSDictionary* properties;

- (id) initWithGeoJSONFeature:(NSDictionary*)feat;

+ (bool) isType:(NSString*)type;

@end
