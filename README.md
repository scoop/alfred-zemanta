alfred-zemanta
==============

An Alfred 2 Workflow that aids in tagging content from a file or clipboard.

Dependencies
------------

As awesome as `bundler` is for Ruby developers, writing a portable Alfred
workflow shouldn't have these dependencies. Thanks to Duane Johnson, we have
[alfred2-ruby-framework](https://github.com/canadaduane/alfred2-ruby-framework)
giving us an easy way to bundle Rubygems.

To install the dependencies for alfred-zemanta, run `install_gem.sh` for the
following gems:

 * `alfredo`
 * `plist`
 * `term_extraction`

Setup
-----

The workflow comes with a built-in setup keyword `zemapi` to make providing 
the workflow with the necessary [Zemanta API
key](http://developer.zemanta.com/apps/register/) a breeze.

Apart from giving the Workflow an API key to use, you should provide the
`zemfile` keyword a Search Scope to just the folder containing your articles.
To do that, open up the Alfred Preferences, double-click the `zemfile` keyword
and select your folder in the “Search Scope” tab in the slide down panel.
I keep my articles in `~/Dropbox/Articles/`, for example.

Download
--------

The self-contained workflow is available for download as a ready-to-use package
[here](http://pat.ly/3f3n1W3l1z0w)
