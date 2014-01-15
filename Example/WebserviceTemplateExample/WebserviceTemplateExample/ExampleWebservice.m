//
//  ExampleWebservice.m
//  WebserviceTemplateExample
//
//  Created by Matthew York on 1/15/14.
//  Copyright (c) 2014 Center for Advanced Public Safety. All rights reserved.
//

#import "ExampleWebservice.h"

@implementation ExampleWebservice

-(void)getHTMLForURL:(NSString *)url completion:(StringResponseBlock)completion{
    
    if (url) {
        // Create Operation & Make Request
        WebOperation *operation = [[WebOperation alloc] init];
        __weak WebOperation *weakOperation = operation;
        
        [operation setRequestWithBodyData:nil forHttpMethod:HTTP_METHOD_GET url:url contentType:@"text" completion:^{
           
            NSString *responseString = [[NSString alloc] initWithData:weakOperation.responseData encoding:NSUTF8StringEncoding];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(responseString);
            });
        }];
        [self.OperationQueue addOperation:operation];
        
    }
}
@end
