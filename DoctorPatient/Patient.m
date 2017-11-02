//
//  Patient.m
//  DoctorPatient
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName symptoms: (NSString*)symptoms validHealthCard: (BOOL) hasValidHealthCard
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _symptoms = symptoms;
        _validHealthCard = hasValidHealthCard;

        _prescriptionHistory = [NSMutableArray new];
    }
    return self;
}


-(Prescription*) visitDoctor:(Doctor *)doctor {
//    [doctor acceptPatient:self];
    if ( [doctor acceptPatient:self]) {
        return [self requestMeds:doctor];
    } else {
        return nil;
    }
}


-(Prescription*) requestMeds:(Doctor *)doctor {
    Prescription * myMeds =[doctor prescribeMeds:self];
    return myMeds;
    }


-(void) inquireDoctor:(Doctor*)doctor {
    NSLog(@"My name is Dr. %@ and I specialize in %@",doctor.lastName, doctor.specialization);
}


//-(id)getPrescriptionHistory:(Doctor *)doctor {
//    NSArray *prescriptionHistory = doctor.prescriptionHistory;
//    if ([prescriptionHistory isEqualToArray:prescriptionHistory] self.prescriptionHistory) {
//        return self.prescriptionHistory;
//    } else {
//        prescriptionHistory = nil;
//        NSLog(@"No true prescription history");
//    }
//}



@end
