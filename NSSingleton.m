//Subclassible thread-safe ARC singleton
//Copyright Kevin Lawler. Released under ISC.

#import "NSSingleton.h"

@implementation NSSingleton

static NSMutableDictionary* _children;

+(void) initialize //thread-safe
{    
    if(!_children) {
        _children = [[NSMutableDictionary alloc] init];
    }   

    [_children setObject:[[self alloc] init] forKey:NSStringFromClass([self class])];
}

+(id) alloc {
    id c;
    if((c = [self instance])) {
        return c;
    }
    return [self allocWithZone:nil];
}

-(id) init {
    id c;
    if((c = [_children objectForKey:NSStringFromClass([self class])])) { //sic, unfactored
        return c;
    }
    self = [super init];
    return self;
}

+(id) instance {
    return [_children objectForKey:NSStringFromClass([self class])];
}

+(id) sharedInstance { //alias for instance
    return [self instance];
}

+(id) singleton {      //alias for instance
    return [self instance];
}

//stop other creative stuff
+(id) new {
    return [self alloc];
}

+(id)copyWithZone:(NSZone *)zone {
    return [self instance];
}

+(id)mutableCopyWithZone:(NSZone *)zone {
    return [self instance];
}

@end
