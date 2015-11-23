//
//  ViewController.m
//  mapsDemo
//
//  Created by Matthew Weintrub on 11/23/15.
//  Copyright © 2015 matthew weintrub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestPermissions];
    
    [self.mapView.layer setCornerRadius:3.0];
    [self.mapView setShowsUserLocation:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)requestPermissions {
    [self setLocationManager: [ [CLLocationManager alloc] init]];
    [self.locationManager requestWhenInUseAuthorization];
    
}

-(void)setRegion:(MKCoordinateRegion)region {
    [self.mapView setRegion:region animated:YES];
}

- (IBAction)locationButtonSelected:(id)sender {
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *button = (UIButton *)sender;
        NSString *buttonTitle = button.titleLabel.text;
        
        if ([buttonTitle isEqualToString:@"location 1"]) {

            CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(47.6566674, -122.351096);
            MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordinate, 500.0, 500.0);
            [self setRegion:(region)];
            
        }
        if ([buttonTitle isEqualToString:@"location 2"]) {
            NSLog(@"Location 2...");
        }
        if ([buttonTitle isEqualToString:@"location 3"]) {
            NSLog(@"Location 3...");
        }
    }
    
}


@end
