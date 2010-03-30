# Do not edit this file - Generated by MiniPerl6 4.1
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package Rul;
sub new { shift; bless { @_ }, "Rul" }
sub constant { my $str = $_[0]; (my  $len = Main::chars($str, )); if (($str eq '\\')) { ($str = '\\\\') } else {  }; if (($str eq '\'')) { ($str = '\\\'') } else {  }; if ($len) { '( ( \'' . $str . '\' eq substr( $str, $MATCH.to, ' . $len . ')) ' . '  ?? (1 + ( $MATCH.to = ' . $len . ' + $MATCH.to ))' . '  !! false ' . ')' } else { return('1') } }
}

{
package Rul::Quantifier;
sub new { shift; bless { @_ }, "Rul::Quantifier" }
sub term { $_[0]->{term} };
sub quant { $_[0]->{quant} };
sub greedy { $_[0]->{greedy} };
sub ws1 { $_[0]->{ws1} };
sub ws2 { $_[0]->{ws2} };
sub ws3 { $_[0]->{ws3} };
sub emit { my $self = $_[0]; if ((($self->{quant} eq '') && ($self->{greedy} eq ''))) { return($self->{term}->emit()) } else {  }; if ((($self->{quant} eq '+') && ($self->{greedy} eq ''))) { $self->{term}->set_captures_to_array();return('do { ' . 'my $last_match_null = 0; ' . 'my $last_pos = $MATCH.to; ' . 'my $count = 0; ' . 'while ' . $self->{term}->emit() . ' && ($last_match_null < 2) ' . '{ ' . 'if $last_pos == $MATCH.to { ' . '$last_match_null = $last_match_null + 1; ' . '} ' . 'else { ' . '$last_match_null = 0; ' . '} ' . '$last_pos = $MATCH.to; ' . '$count = $count + 1; ' . '}; ' . '$MATCH.to = $last_pos; ' . '$count > 0; ' . '}') } else {  }; if ((($self->{quant} eq '*') && ($self->{greedy} eq ''))) { $self->{term}->set_captures_to_array();return('do { ' . 'my $last_match_null = 0; ' . 'my $last_pos = $MATCH.to; ' . 'while ' . $self->{term}->emit() . ' && ($last_match_null < 2) ' . '{ ' . 'if $last_pos == $MATCH.to { ' . '$last_match_null = $last_match_null + 1; ' . '} ' . 'else { ' . '$last_match_null = 0; ' . '} ' . '$last_pos = $MATCH.to; ' . '}; ' . '$MATCH.to = $last_pos; ' . '1 ' . '}') } else {  }; if ((($self->{quant} eq '?') && ($self->{greedy} eq ''))) { $self->{term}->set_captures_to_array();return('do { ' . 'my $last_pos = $MATCH.to; ' . 'if !(do {' . $self->{term}->emit() . '}) ' . '{ ' . '$MATCH.to = $last_pos; ' . '}; ' . '1 ' . '}') } else {  }; warn('Rul::Quantifier: ' . Main::perl($self, ) . ' not implemented'); $self->{term}->emit() };
sub set_captures_to_array { my $self = $_[0]; $self->{term}->set_captures_to_array() }
}

{
package Rul::Or;
sub new { shift; bless { @_ }, "Rul::Or" }
sub or_list { $_[0]->{or_list} };
sub emit { my $self = $_[0]; 'do { ' . 'my $pos1 = $MATCH.to; do{ ' . Main::join([ map { $_->emit() } @{ $self->{or_list} } ], '} || do { $MATCH.to = $pos1; ') . '} }' };
sub set_captures_to_array { my $self = $_[0]; [ map { $_->set_captures_to_array() } @{ $self->{or_list} } ] }
}

{
package Rul::Concat;
sub new { shift; bless { @_ }, "Rul::Concat" }
sub concat { $_[0]->{concat} };
sub emit { my $self = $_[0]; '(' . Main::join([ map { $_->emit() } @{ $self->{concat} } ], ' && ') . ')' };
sub set_captures_to_array { my $self = $_[0]; [ map { $_->set_captures_to_array() } @{ $self->{concat} } ] }
}

{
package Rul::Subrule;
sub new { shift; bless { @_ }, "Rul::Subrule" }
sub metasyntax { $_[0]->{metasyntax} };
sub captures { $_[0]->{captures} };
sub emit { my $self = $_[0]; (my  $meth = ((1 + index($self->{metasyntax}, '.')) ? $self->{metasyntax} : '$grammar.' . $self->{metasyntax})); my  $code; if (($self->{captures} == 1)) { ($code = 'if $m2 { $MATCH.to = $m2.to; $MATCH{\'' . $self->{metasyntax} . '\'} = $m2; 1 } else { false } ') } else { if (($self->{captures} > 1)) { ($code = 'if $m2 { ' . '$MATCH.to = $m2.to; ' . 'if exists $MATCH{\'' . $self->{metasyntax} . '\'} { ' . '($MATCH{\'' . $self->{metasyntax} . '\'}).push( $m2 ); ' . '} ' . 'else { ' . '$MATCH{\'' . $self->{metasyntax} . '\'} = [ $m2 ]; ' . '} ' . '1 ' . '} else { false } ') } else { ($code = 'if $m2 { $MATCH.to = $m2.to; 1 } else { false } ') } }; 'do { ' . 'my $m2 = ' . $meth . '($str, $MATCH.to); ' . $code . '}' };
sub set_captures_to_array { my $self = $_[0]; if (($self->{captures} > 0)) { ($self->{captures} = ($self->{captures} + 1)) } else {  } }
}

{
package Rul::Var;
sub new { shift; bless { @_ }, "Rul::Var" }
sub sigil { $_[0]->{sigil} };
sub twigil { $_[0]->{twigil} };
sub name { $_[0]->{name} };
sub emit { my $self = $_[0]; (my  $table = { '$' => '$','@' => '$List_','%' => '$Hash_','&' => '$Code_', }); $table->{$self->{sigil}} . $self->{name} }
}

{
package Rul::Constant;
sub new { shift; bless { @_ }, "Rul::Constant" }
sub constant { $_[0]->{constant} };
sub emit { my $self = $_[0]; (my  $str = $self->{constant}); Rul::constant($str) };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::Dot;
sub new { shift; bless { @_ }, "Rul::Dot" }
sub emit { my $self = $_[0]; '( (\'\' ne substr( $str, $MATCH.to, 1 )) ' . '  ?? (1 + ($MATCH.to = 1 + $MATCH.to ))' . '  !! false ' . ')' };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::SpecialChar;
sub new { shift; bless { @_ }, "Rul::SpecialChar" }
sub char { $_[0]->{char} };
sub emit { my $self = $_[0]; (my  $char = $self->{char}); if (($char eq 'n')) { (my  $rul = Rul::Subrule->new( 'metasyntax' => 'is_newline','captures' => 0, ));($rul = $rul->emit());return($rul) } else {  }; if (($char eq 'N')) { (my  $rul = Rul::Subrule->new( 'metasyntax' => 'not_newline','captures' => 0, ));($rul = $rul->emit());return($rul) } else {  }; if (($char eq 'd')) { (my  $rul = Rul::Subrule->new( 'metasyntax' => 'digit','captures' => 0, ));($rul = $rul->emit());return($rul) } else {  }; if (($char eq 's')) { (my  $rul = Rul::Subrule->new( 'metasyntax' => 'space','captures' => 0, ));($rul = $rul->emit());return($rul) } else {  }; return(Rul::constant($char)) };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::Block;
sub new { shift; bless { @_ }, "Rul::Block" }
sub closure { $_[0]->{closure} };
sub emit { my $self = $_[0]; '(do { ' . $self->{closure} . ' } || 1)' };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::InterpolateVar;
sub new { shift; bless { @_ }, "Rul::InterpolateVar" }
sub var { $_[0]->{var} };
sub emit { my $self = $_[0]; Main::say('# TODO: interpolate var ' . $self->{var}->emit() . ''); die() };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::NamedCapture;
sub new { shift; bless { @_ }, "Rul::NamedCapture" }
sub rule_exp { $_[0]->{rule_exp} };
sub capture_ident { $_[0]->{capture_ident} };
sub emit { my $self = $_[0]; Main::say('# TODO: named capture ' . $self->{capture_ident} . ' = ' . $self->{rule_exp}->emit() . ''); die() };
sub set_captures_to_array { my $self = $_[0]; Main::say('# TODO: named capture ') }
}

{
package Rul::Before;
sub new { shift; bless { @_ }, "Rul::Before" }
sub rule_exp { $_[0]->{rule_exp} };
sub emit { my $self = $_[0]; 'do { ' . 'my $tmp = $MATCH; ' . '$MATCH = MiniPerl6::Match.new( \'str\' => $str, \'from\' => $tmp.to, \'to\' => $tmp.to, \'bool\' => 1  ); ' . '$MATCH.bool = ' . $self->{rule_exp}->emit() . '; ' . '$tmp.bool = ?$MATCH; ' . '$MATCH = $tmp; ' . '?$MATCH; ' . '}' };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::NotBefore;
sub new { shift; bless { @_ }, "Rul::NotBefore" }
sub rule_exp { $_[0]->{rule_exp} };
sub emit { my $self = $_[0]; 'do { ' . 'my $tmp = $MATCH; ' . '$MATCH = MiniPerl6::Match.new( \'str\' => $str, \'from\' => $tmp.to, \'to\' => $tmp.to, \'bool\' => 1  ); ' . '$MATCH.bool = ' . $self->{rule_exp}->emit() . '; ' . '$tmp.bool = !$MATCH; ' . '$MATCH = $tmp; ' . '?$MATCH; ' . '}' };
sub set_captures_to_array { my $self = $_[0];  }
}

{
package Rul::NegateCharClass;
sub new { shift; bless { @_ }, "Rul::NegateCharClass" }
sub chars { $_[0]->{chars} };
sub emit { my $self = $_[0]; Main::say('TODO NegateCharClass'); die() }
}

{
package Rul::CharClass;
sub new { shift; bless { @_ }, "Rul::CharClass" }
sub chars { $_[0]->{chars} };
sub emit { my $self = $_[0]; Main::say('TODO CharClass'); die() }
}

{
package Rul::Capture;
sub new { shift; bless { @_ }, "Rul::Capture" }
sub rule_exp { $_[0]->{rule_exp} };
sub emit { my $self = $_[0]; Main::say('TODO RulCapture'); die() }
}

{
package Rul::CaptureResult;
sub new { shift; bless { @_ }, "Rul::CaptureResult" }
sub rule_exp { $_[0]->{rule_exp} };
sub emit { my $self = $_[0]; Main::say('TODO Rul::CaptureResult'); die() }
}

{
package Rul::After;
sub new { shift; bless { @_ }, "Rul::After" }
sub rule_exp { $_[0]->{rule_exp} };
sub emit { my $self = $_[0]; Main::say('TODO Rul::After'); die() }
}

1;
