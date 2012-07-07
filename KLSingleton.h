//Subclassible thread-safe ARC singleton
//Copyright Kevin Lawler. Released under ISC.

@interface KLSingleton : NSObject
+(id) instance;
+(id) sharedInstance; //alias for instance
+(id) singleton;      //alias for instance
@end
