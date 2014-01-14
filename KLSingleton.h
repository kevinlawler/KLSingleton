//Subclassible thread-safe ARC singleton
//Copyright Kevin Lawler. Released under ISC.

@interface KLSingleton : NSObject

+ (instancetype)instance;
+ (instancetype)defaultInstance;  //alias for instance
+ (instancetype)sharedInstance;   //alias for instance
+ (instancetype)singleton;        //alias for instance

@end
