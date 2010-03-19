# Do not edit this file - Generated by MiniPerl6 3.0
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package MiniPerl6::Match;
sub new { shift; bless { @_ }, "MiniPerl6::Match" }
sub from { $_[0]->{from} };
sub to { $_[0]->{to} };
sub str { $_[0]->{str} };
sub bool { $_[0]->{bool} };
sub capture { $_[0]->{capture} };
sub scalar { my $self = $_[0]; do { if ($self->{bool}) { do { if (defined($self->{capture})) { return($self->{capture}) } else {  } };return(substr($self->{str}, $self->{from}, ($self->{to} - $self->{from}))) } else { return('') } } };
sub string { my $self = $_[0]; do { if ($self->{bool}) { do { if (defined($self->{capture})) { return($self->{capture}) } else {  } };return(substr($self->{str}, $self->{from}, ($self->{to} - $self->{from}))) } else { return('') } } }
}

{
package Pair;
sub new { shift; bless { @_ }, "Pair" }
sub key { $_[0]->{key} };
sub value { $_[0]->{value} };
sub perl { my $self = $_[0]; return($self->{key} . ' => ' . Main::perl($self->{value}, )) }
}

{
package Main;
sub new { shift; bless { @_ }, "Main" }
sub to_lisp_identifier { my $ident = $_[0]; return('sv-' . $ident) };
sub lisp_dump_object { my $class_name = $_[0]; my $data = $_[1]; return($class_name . '( ' . Main::join([ map { Main::perl( $_, , ) } @{ $data } ], ', ') . ' )') }
}

1;