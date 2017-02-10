#!/usr/bin/env perl

while ( my $line = <STDIN> ) {
    if ( $line =~ /^(\s+)"test": "echo \\"Error: no test specified\\" && exit 1"$/ ) {
        print qq{$1"test": "mocha"\n};
    }
    else {
        print $line;
    }
}


