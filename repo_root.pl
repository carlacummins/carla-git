#!/usr/bin/env perl

=head1 Description

This script is used in conjunction with .bashrc to cd to the root of
the current git repo. To make the dir change persistent, perl
cannot do this part (it would only change the perl process' working dir), 
so an alias 'cd-repo-root' is used to change to the directory identified here

alias cd-repo-root='cd $(repo_root.pl)'

=cut

use strict;
use warnings;
use Cwd;
    
my $dir = getcwd;
my $root_found = 0;

while ( !$root_found && $dir ne '' ) {
	if ( -e "$dir/.git" ){
		print "$dir\n";
		$root_found = 1;
	} else {
		$dir = one_level_up($dir);
	}
}

# if it's run outside of a git repo structure, print a message
# and return CWD to the cd command to stay where we are
unless ( $root_found ) {
	my $cwd = getcwd;
	print STDERR "$cwd does not appear to be in a git repository..\n";
	print "$cwd\n"; 
}

sub one_level_up {
	my $dir = shift;

	my @parts = split('/', $dir);
	pop @parts;
	return join('/', @parts);
}
