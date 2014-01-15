//
//  ViewController.m
//  WebserviceTemplateExample
//
//  Created by Matthew York on 1/15/14.
//  Copyright (c) 2014 Center for Advanced Public Safety. All rights reserved.
//

#import "ViewController.h"
#import "ExampleWebservice.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *URLTextField;
@property (weak, nonatomic) IBOutlet UITextView *HTMLTextView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didSelectGo:(id)sender {
    //Instantiate service
    ExampleWebservice *service = [[ExampleWebservice alloc] init];
    
    //Get html for desired url
    [service getHTMLForURL:self.URLTextField.text completion:^(NSString *responseString) {
        self.HTMLTextView.text = responseString;
    }];
    
    //hide keyboard
    [self.URLTextField resignFirstResponder];
}

@end
