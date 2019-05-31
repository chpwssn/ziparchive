# ziparchive

I want to be able to plug in my existing/new/whatever 1TB flash drive, run a script and ensure that I have all of the files listed in the `sources/` directory.

The `sources/` directory contains a directory for each priority level. Specifying the priority level will download all the files _at or below that level_.

# Quickstart

Simply clone the `ziparchive` repo onto your flash drive and run `get.sh` followed by the archive level you'd like to download.

    cd /path/to/your/flashdrive
    git clone https://github.com/chpwssn/ziparchive.git
    cd ziparchive
    ./get.sh 0

# Sources Wanted

If you have a file, git repository, etc that you think should be always handy open a pull request!
