    $ rvm --version

If it's unrecognized, install RVM:

    $ curl -L get.rvm.io | bash -s stable
    $ source ~/.bash_profile

If RVM is installed, continue here:

    $ git clone git@github.com:irjamby/Personal-Website.git jareds_website
    $ cd jareds_website

    ==============================================================================
    = NOTICE                                                                     =
    ==============================================================================
    = RVM has encountered a new or modified .rvmrc file in the current directory =
    = This is a shell script and therefore may contain any shell commands.       =
    =                                                                            =
    = Examine the contents of this file carefully to be sure the contents are    =
    = safe before trusting it! ( Choose v[iew] below to view the contents )      =
    ==============================================================================
    Do you wish to trust this .rvmrc file?
    y[es], n[o], v[iew]> y

    $ gem install bundler
    $ bundle install
    $ rackup
    [2012-04-09 11:22:01] INFO  WEBrick 1.3.1
    [2012-04-09 11:22:01] INFO  ruby 1.9.2 (2011-07-09) [x86_64-darwin10.8.0]
    [2012-04-09 11:22:01] INFO  WEBrick::HTTPServer#start: pid=6827 port=9292

In Browser

    http://localhost:9292/