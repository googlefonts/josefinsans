# Josefin Sans Font Project
by Santiago Orozco

<p>The idea for creating this typeface was to make it geometric, elegant and kind of vintage, especially for titling. It is inspired by Rudolf Koch's Kabel (1927), Rudolf Wolf's Memphis (1930), Paul Renner's Futura (1927).</p>

<p>My idea was to draw something with good style, that reflects Swedish design and their passion for a good lifestyle, and by default all other Scandinavian styles.</p>

<p>Something weird happened when I drew the letter "z": when I took my typography courses in college, I saw a very interesting typeface in a book, the New Universal Typeface "Newut" from André Baldinger (which I have loved since then), and after I finished the "z" I ran into Newut' site again and noticed that I had unconsciously drawn it with the same haircut.</p>

<p>The x-height is half way from baseline to caps height, unlike any other modern typeface.</p>

<p>I wanted to do something different with the ampersand, so I made three and will include them as alternates in future versions. This version also includes Old Style Numerals.</p>

<p>There is a sister family, <a href="https://www.google.com/fonts/specimen/Josefin+Slab">Josefin Slab</a>.</p>

<p><b>Updated August 2014:</b> Completely redesigned and extended with Extended Latin support for many more European languages.</p>

<p>The previous version of Josefin Sans included Extended Latin characters in the Latin subset. If you are experiencing problems, please select the Extended Latin (<span style="font-family: Monaco, Consolas, 'Lucida Console', 'Andale Mono', AndaleMono, monospace;">latin-ext</span>) subset to render all European languages correctly. Here is an example of a complete link tag that selects these subsets:</p>

<p style="font-family: Monaco, Consolas, 'Lucida Console', 'Andale Mono', AndaleMono, monospace;">&lt;link href='http://fonts.googleapis.com/css?family=Josefin+Sans&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'&gt;</p>

This project is a fork from the old Google font repository.

# Completed tasks:

* Create Repository.
* Ported files from Fontlab-MM sources to Glyphs.
* Added instances.
* Updated font info.
* Updated vertical metrics.
* Tasks from checklist.
* Pass our QA and test scripts.

# Todo:

* Improve README.md
* There is already one master that is bolder than the bold instance. Would be a piece of cake to extend the family with an Extra Bold style.
* VendorID is missing
* Please check the Kerning, there are IKERN files in the sources. Maybe we need to import the kerning from there?
* Run fonts through Fontbakery and ship fonts.
