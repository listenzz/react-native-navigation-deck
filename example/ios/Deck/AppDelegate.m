#import "AppDelegate.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTBridgeModule.h>
#import <HybridNavigation/HybridNavigation.h>
#import <HBDDeck/HBDDeckNavigator.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"example/index" fallbackResource:nil];
    [[HBDReactBridgeManager get] installWithBundleURL:jsCodeLocation launchOptions:launchOptions];
    
    [[HBDReactBridgeManager get] registerNavigator:[HBDDeckNavigator new]];
        
    UIStoryboard *storyboard =  [UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil];
    UIViewController *rootViewController = [storyboard instantiateInitialViewController];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.windowLevel = UIWindowLevelStatusBar + 1;
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
