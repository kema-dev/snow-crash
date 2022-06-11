#!/usr/bin/env perl
# localhost:4646
use CGI qw{param};
print "Content-type: text/html\n\n";

sub t {
  $nn = $_[1];
  $xx = $_[0];
  $xx =~ tr/a-z/A-Z/; # make it uppercase
  $xx =~ s/\s.*//; # remove everything after a space
  @output = `egrep "^$xx" /tmp/xd 2>&1`; # grep for start with $xx
  foreach $line (@output) { # for each line
      ($f, $s) = split(/:/, $line); # split into fields
      if($s =~ $nn) { # if the second field matches $nn
          return 1; # return true
      }
  }
  return 0; # return false
}

sub n {
  if($_[0] == 1) { # if t returned true
      print("..");
  } else { # if t returned false
      print(".");
  }
}

n(t(param("x"), param("y")));