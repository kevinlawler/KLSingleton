Pod::Spec.new do |s|
    s.name = 'KLSingleton'
    s.version = '1.0.0'
    s.homepage = 'http://kevinlawler.com/'
    s.summary = 'This is a singleton class for iOS, Objective-C, Cocoa Touch, iPhone, iPad.'
    s.author = { 'Kevin Lawler' => '' }
    s.license = { 
        :type => 'ISC',
        :text => <<-LICENSE
            Copyright (c) Year(s), Company or Person's Name <E-mail address>
            Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

            THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
        LICENSE
    }
    s.source = { :git => 'https://github.com/kevinlawler/KLSingleton.git' }
    s.source_files = '*.{h,m}'
end
