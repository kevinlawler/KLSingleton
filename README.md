## Description

This is a singleton class for iOS, Objective-C, Cocoa Touch, iPhone, iPad. 

KLSingleton is:

1. Subclassible (to the n-th degree)
2. ARC compatible
3. Safe with `alloc` and `init`
4. Loaded lazily
5. Thread-safe
6. Lock-free (uses +initialize, not @synchronize)
7. Macro-free
8. Swizzle-free
9. Simple

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

## Future Directions

1. This has been tested on ARC only. Test on projects without ARC support.
2. See if there are any meaningful differences with the swizzle method.
3. Something like `dispatch_once` that ran once for each subclass would let us be lazy for free. Per-subclass tokens?

## License

Released under ISC (similar to 2-clause BSD)
