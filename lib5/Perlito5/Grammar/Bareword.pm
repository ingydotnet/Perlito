# Do not edit this file - Generated by Perlito5 8.0
use v5;
use Perlito5::Perl5::Runtime;
our $MATCH = Perlito5::Match->new();
package main;
package Perlito5::Grammar::Bareword;
sub Perlito5::Grammar::Bareword::term_bareword {
    ((my  $self) = $_[0]);
    ((my  $str) = $_[1]);
    ((my  $pos) = $_[2]);
    ((my  $p) = $pos);
    ((my  $m_namespace) = Perlito5::Grammar->optional_namespace_before_ident($str, $p));
    ($p = $m_namespace->{'to'});
    ((my  $m_name) = Perlito5::Grammar->ident($str, $p));
    if ($m_name) {

    }
    else {
        return ($m_name)
    };
    ($p = $m_name->{'to'});
    ((my  $name) = $m_name->flat());
    ((my  $namespace) = $m_namespace->flat());
    ((my  $full_name) = $name);
    if ($namespace) {
        ($full_name = ($namespace . '::' . $name))
    };
    ((my  $m) = Perlito5::Grammar::Space->ws($str, $p));
    if ($m) {
        ($p = $m->{'to'})
    };
    if ((substr($str, $p, 2) eq '=>')) {
        ($m_name->{'capture'} = ['term', Perlito5::AST::Val::Buf->new(('buf' => $full_name))]);
        ($m_name->{'to'} = $p);
        return ($m_name)
    };
    if ((substr($str, $p, 2) eq '->')) {
        ($m_name->{'capture'} = ['term', Perlito5::AST::Proto->new(('name' => $full_name))]);
        ($m_name->{'to'} = $p);
        return ($m_name)
    };
    ((my  $effective_name) = ((($namespace || $Perlito5::PKG_NAME)) . '::' . $name));
    (my  $sig);
    if (exists($Perlito5::PROTO->{$effective_name})) {
        ($sig = $Perlito5::PROTO->{$effective_name})
    }
    else {
        if ((((!($namespace) || ($namespace eq 'CORE'))) && exists($Perlito5::CORE_PROTO->{('CORE::' . $name)}))) {
            ($effective_name = ('CORE::' . $name));
            ($sig = $Perlito5::CORE_PROTO->{$effective_name})
        }
        else {
            ($sig = undef())
        }
    };
    if (defined($sig)) {
        if (($sig eq '')) {
            if ((substr($str, $p, 1) eq '(')) {
                ($p)++;
                ((my  $m) = Perlito5::Grammar::Space->ws($str, $p));
                if ($m) {
                    ($p = $m->{'to'})
                };
                if ((substr($str, $p, 1) ne ')')) {
                    die('syntax error near ', substr($str, $pos, 10))
                };
                ($p)++
            };
            ($m_name->{'capture'} = ['term', Perlito5::AST::Apply->new(('code' => $name), ('namespace' => $namespace), ('arguments' => []))]);
            ($m_name->{'to'} = $p);
            return ($m_name)
        };
        if (((($sig eq '_') || ($sig eq '$')) || ($sig eq ';$'))) {
            (my  $m);
            (my  $arg);
            if ((substr($str, $p, 1) eq '(')) {
                ($m = Perlito5::Expression->term_paren($str, $p));
                if (!($m)) {
                    return ($m)
                };
                ($p = $m->{'to'});
                ($arg = $m->{'capture'}->[2]);
                ($arg = Perlito5::Expression::expand_list($arg));
                ((my  $v) = shift(@{$arg}));
                if (@{$arg}) {
                    die(('Too many arguments for ' . $name))
                };
                ($arg = $v)
            }
            else {
                ($m = Perlito5::Expression->argument_parse($str, $p));
                ($arg = $m->{'capture'}->{'exp'});
                if (($arg eq '*undef*')) {
                    ($arg = undef())
                }
                else {
                    if (((ref($arg) eq 'Perlito5::AST::Apply') && ($arg->{'code'} eq 'circumfix:<( )>'))) {
                        ((my  $v) = shift(@{$arg->{'arguments'}}));
                        if (@{$arg->{'arguments'}}) {
                            die(('Too many arguments for ' . $name))
                        };
                        ($arg = $v)
                    }
                }
            };
            (my  @args);
            if (defined($arg)) {
                push(@args, $arg )
            }
            else {
                if (($sig eq '$')) {
                    die(('Not enough arguments for ' . $name))
                };
                if (($sig eq '_')) {
                    push(@args, Perlito5::AST::Var->new(('namespace' => ''), ('name' => '_'), ('sigil' => '$')) )
                }
            };
            ($m->{'capture'} = ['term', Perlito5::AST::Apply->new(('code' => $name), ('namespace' => $namespace), ('arguments' => \@args))]);
            return ($m)
        }
    };
    if ((substr($str, $p, 1) eq '(')) {
        ($m = Perlito5::Expression->term_paren($str, $p));
        if (!($m)) {
            return ($m)
        };
        ((my  $arg) = $m->{'capture'}->[2]);
        ($arg = Perlito5::Expression::expand_list($arg));
        ($m->{'capture'} = ['term', Perlito5::AST::Apply->new(('code' => $name), ('namespace' => $namespace), ('arguments' => $arg))]);
        return ($m)
    };
    ((my  $m_list) = Perlito5::Expression->list_parse($str, $p));
    if ($m_list) {
        ($m_name->{'capture'} = ['postfix_or_term', 'funcall', $namespace, $name, $m_list->flat()]);
        ($m_name->{'to'} = $m_list->{'to'});
        return ($m_name)
    };
    ($m_name->{'capture'} = ['postfix_or_term', 'funcall_no_params', $namespace, $name]);
    return ($m_name)
};
1;

1;
