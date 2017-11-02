//
//  main.m
//  DoctorPatient
//
//  Created by Alex Quigley on 2017-11-01.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSMutableArray *patientHistory = [NSMutableArray new];
        
        Patient * Javier = [[Patient alloc] initWithFirstName:@"Javier" lastName:@"Xing" symptoms:@"Death" validHealthCard:YES];
        
        Doctor * Phil = [[Doctor alloc]initWithFirstName:@"Alex" lastName:@"Mills" specialization:@"Objective-C"];
        
    
        [Javier inquireDoctor:Phil];
        [Phil inquirePatient:Javier];
        
        [Javier visitDoctor:Phil];
        
    }
    return 0;
}
