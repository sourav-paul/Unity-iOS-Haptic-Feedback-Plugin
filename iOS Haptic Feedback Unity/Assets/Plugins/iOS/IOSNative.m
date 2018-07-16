#import "Foundation/Foundation.h"
#import "IOSNative.h"
#import "UIKit/UIKit.h"
#import "GameKit/GameKit.h"

@implementation IOSNative

+ (IOSNative *)instance
{
    static IOSNative *instance = nil;
    if( !instance )
        instance = [[IOSNative alloc] init];
    return instance;
}

- (void)hapticFeedback : (int) type
{
	UIImpactFeedbackGenerator *hap = [[UIImpactFeedbackGenerator alloc] init];
    
    [hap prepare];
    
    if(type == 0) [hap initWithStyle:UIImpactFeedbackStyleLight];

    else if(type == 1) [hap initWithStyle:UIImpactFeedbackStyleMedium];

    else if(type == 2) [hap initWithStyle:UIImpactFeedbackStyleHeavy];
    
    [hap impactOccurred];
}

@end
