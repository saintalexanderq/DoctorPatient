//
//  Doctor.m
//  DoctorPatient
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"


@implementation Doctor

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _specialization = specialization;
    }
    return self;
}


-(BOOL)acceptPatient:(Patient *)patient {
    if (patient.validHealthCard) {
        [self.acceptedPatients setObject:patient forKey:patient.firstName];
        NSLog(@"Your health card is valid, you are now a patient of our practice.");
        return YES;
    } else {
        NSLog(@"Sorry, we can't accept you, your health card is not valid.");
        return NO;
    }
}



-(Prescription*) prescribeMeds:(Patient *)patient {
    NSString *symptoms = patient.symptoms;

    Prescription *patientPrescription = [Prescription new];
    [patientPrescription determineMedication:symptoms];
    [patient.prescriptionHistory addObject:patientPrescription];
    NSLog(@"Your prescription is: %@", patientPrescription.medication);
    return patientPrescription;
}


-(void) inquirePatient:(Patient *)patient {
    NSLog(@"My name is %@ %@, my symptoms are %@", patient.firstName, patient.lastName, patient.symptoms);
    
}




@end
