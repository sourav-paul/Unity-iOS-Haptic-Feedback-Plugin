#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>

@interface IOSNative : NSObject { }

+ (IOSNative*) instance;

- (void) hapticFeedback : (int) type;

@end
