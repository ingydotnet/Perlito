# Do not edit this file - Generated by Perlito5 8.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito5::Perl5::Runtime;
our $MATCH = Perlito5::Match->new();
package main;
use v5;
package Perlito5::Match;
sub new {
    ((my  $class) = shift());
    bless((do {
    (my  %a);
    (do {
        ((my  $_i) = 0);
        ((my  @_a) = @_);
        for ( ; (($_i < scalar(@_a)));  ) {
            ($a{$_a[$_i]} = $_a[($_i + 1)]);
            ($_i = ($_i + 2))
        }
    });
    \%a
}), $class)
};
sub from {
    $_[0]->{'from'}
};
sub to {
    $_[0]->{'to'}
};
sub str {
    $_[0]->{'str'}
};
sub bool {
    $_[0]->{'bool'}
};
sub capture {
    $_[0]->{'capture'}
};
sub flat {
    ((my  $self) = $_[0]);
    if (($self->{'bool'})) {
        if ((defined($self->{'capture'}))) {
            return ($self->{'capture'})
        };
        return (substr($self->{'str'}, $self->{'from'}, (($self->{'to'} - $self->{'from'}))))
    }
    else {
        return ('')
    }
};

1;