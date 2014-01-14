//Subclassible thread-safe ARC singleton
//Copyright Kevin Lawler. Released under ISC.

#import "KLSingleton.h"

@implementation KLSingleton

static NSMutableDictionary* _children;

+ (void)initialize //thread-safe
{
  if (!_children) {
    _children = [[NSMutableDictionary alloc] init];
  }
  
  [_children setObject:[[self alloc] init] forKey:NSStringFromClass([self class])];
}

+ (instancetype)alloc
{
  id c;
  
  if ((c = [self instance])) {
    return c;
  }
  return [self allocWithZone:nil];
}

- (instancetype)init
{
  id c;
  if ((c = [_children objectForKey:NSStringFromClass([self class])])) { //sic, unfactored
    return c;
  }
  self = [super init];
  return self;
}

+ (instancetype)instance
{
  return [_children objectForKey:NSStringFromClass([self class])];
}

+ (instancetype)defaultInstance
{
    return [self instance];
}

+ (instancetype)sharedInstance
{
    return [self instance];
}

+ (instancetype)singleton
{
  return [self instance];
}

+ (instancetype)new
{
  return [self instance];
}

+ (instancetype)copyWithZone:(NSZone *)zone
{
  return [self instance];
}

+ (instancetype)mutableCopyWithZone:(NSZone *)zone
{
  return [self instance];
}

@end
