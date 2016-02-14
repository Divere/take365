//
//  UploadImageResponse.h
//  take365
//
//  Created by Evgeniy Eliseev on 12.02.16.
//  Copyright © 2016 take365. All rights reserved.
//

#import "JSONModel.h"
#import "UploadImageResult.h"

@interface UploadImageResponse : JSONModel

@property (nonatomic) UploadImageResult<Optional> *result;
@property (nonatomic) NSMutableArray<Optional> *errors;

@end
