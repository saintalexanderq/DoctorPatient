//
//  Prescription.h
//  DoctorPatient
//
//  Created by Alex Quigley on 2017-11-02.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

@property (nonatomic) NSString *medication;


-(void)determineMedication:(NSString *)symptoms;


@end
