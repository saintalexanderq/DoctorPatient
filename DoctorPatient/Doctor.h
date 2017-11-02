//
//  Doctor.h
//  DoctorPatient
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, copy) NSString *specialization;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic) NSMutableDictionary *acceptedPatients;
@property (nonatomic, strong) NSMutableArray *prescriptionHistory;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName specialization:(NSString *)specialization;

-(Prescription*) prescribeMeds:(Patient*)patient;
-(BOOL) acceptPatient:(Patient *)patient;
-(void) inquirePatient:(Patient *)patient;
//-(void) addToPatientPrescriptionHistory:(NSMutableArray *)patientPrescriptionHistory;

//----------------






@end
