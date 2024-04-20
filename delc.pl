#!/usr/bin/perl -w

use strict;

# Init command line args
my @file_list;
if (@ARGV) {
    @file_list = @ARGV;
} else {
    print("ERROR: no args\n");
    exit 1;
}

# Deletion list array
my @files_to_delete;

# Loop through files
foreach my $file (@file_list) {
    # Check file exists
    if (-e $file) {
        # File or directory?
        my $type = (-d $file) ? "directory" : "file";
        
        # Deletion prompt
        print "delete? [y,q] $type: $file\n";
        chomp(my $input = <STDIN>);
        
        # Process input
        if ($input eq 'y') {
            push @files_to_delete, $file;  # Queue for deletion
        } elsif ($input eq 'q') {
            last;  # Quit loop
        }
    }
}

# Ask for deletion confirmation
print "complete all deletions? [y]: ";
chomp(my $input = <STDIN>);

# Execute deletion if confirmed
if (lc($input) eq 'y' && @files_to_delete) {
    foreach my $file (@files_to_delete) {
        unlink $file or warn "Failed to delete $file: $!\n";
    }
    print "Files have been deleted.\n";
} else {
    print "Nothing has been deleted.\n";
}

exit 0;
