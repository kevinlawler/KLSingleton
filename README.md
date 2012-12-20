## Description

This is a singleton class for iOS, Objective-C, Cocoa Touch, iPhone, iPad. 

KLSingleton is:

1. Subclassible (to the n-th degree)
2. ARC compatible
3. Safe with `alloc` and `init`
4. Thread-safe
5. Lock-free (uses +initialize, not @synchronize)
6. Macro-free
7. Swizzle-free
8. Simple

This implementation "loads lazily" (which is good). It does not "require explicit initialization" and it does not "lock to allocate".

## Use

1.  Add the files to your project
2.  Import the header using  `#import "KLSingleton.h"`
3.  Subclass the KLSingleton class in the following way:

<pre>
@interface MYSubclass : KLSingleton
</pre>

You may then retrieve the unique, ready-to-use instance of your class by calling any of the following methods:

<pre>
[MYSubclass instance]
[MYSubclass sharedInstance] //alias
[MYSubclass singleton]      //alias
[[MYSubclass alloc] init]   //bad style, but safe to call any number of times
</pre>

If you need to lazily allocate a large instance variable use `dispatch_once` in the getter. You might do this if, for instance, you needed 500MB of workspace but did not want that memory to be allocated on startup.

## Future Directions

1. This has been tested on ARC only. Test on projects without ARC support.
2. See if there are any meaningful differences with the swizzle method.
3. Something like `dispatch_once` that ran once for each subclass would let us be lazy for free. Per-subclass tokens?

## License

Released under ISC (similar to 2-clause BSD)
