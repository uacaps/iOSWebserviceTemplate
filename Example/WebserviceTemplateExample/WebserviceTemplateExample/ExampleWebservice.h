//
//  ExampleWebservice.h
//  WebserviceTemplateExample
//
//  Created by Matthew York on 1/15/14.
//  Copyright (c) 2014 Center for Advanced Public Safety. All rights reserved.
//

#import "Webservice.h"

@interface ExampleWebservice : Webservice
-(void)getHTMLForURL:(NSString *)url completion:(StringResponseBlock)completion;
@end
