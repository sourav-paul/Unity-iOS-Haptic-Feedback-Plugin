#import "IOSNative.h"

void HapticFeedback(int type)
{
	[[IOSNative instance] hapticFeedback:type];
}
