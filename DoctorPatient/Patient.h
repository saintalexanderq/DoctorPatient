//
//  Patient.h
//  DoctorPatient
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) int age;
@property (nonatomic) BOOL validHealthCard;
@property (nonatomic, copy) NSString *symptoms;
@property (nonatomic, strong, readonly) NSMutableArray *prescriptionHistory;


- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName symptoms: (NSString*)symptoms validHealthCard: (BOOL) hasValidHealthCard;

-(Prescription*) visitDoctor:(Doctor *)doctor;
-(Prescription*) requestMeds:(Doctor *)doctor;
-(void) inquireDoctor:(Doctor *)doctor;


//-(id) getPrescriptionHistory;


@end
