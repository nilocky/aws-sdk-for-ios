/*
 * Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "AutoScalingSuspendProcessesRequest.h"


@implementation AutoScalingSuspendProcessesRequest

@synthesize autoScalingGroupName;
@synthesize scalingProcesses;


-(id)init
{
    if (self = [super init]) {
        autoScalingGroupName = nil;
        scalingProcesses     = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}


-(void)addScalingProcesse:(NSString *)scalingProcesseObject
{
    if (scalingProcesses == nil) {
        scalingProcesses = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [scalingProcesses addObject:scalingProcesseObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"AutoScalingGroupName: %@,", autoScalingGroupName] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ScalingProcesses: %@,", scalingProcesses] autorelease]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return [buffer autorelease];
}



-(void)dealloc
{
    [autoScalingGroupName release];
    [scalingProcesses release];

    [super dealloc];
}


@end
