# Do not edit this file - Generated by MiniPerl6 4.1
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
our $MATCH = MiniPerl6::Match->new();
{
package MiniPerl6::Grammar::Regex;
sub new { shift; bless { @_ }, "MiniPerl6::Grammar::Regex" }
my  $Hash_rule_terms;
sub ws { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { do { (my  $m2 = MiniPerl6::Grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } } }); $MATCH };
sub rule_ident { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { do { (my  $m2 = MiniPerl6::Grammar->full_ident($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } } || do { (($MATCH)->{to} = $pos1); do { (my  $m2 = $grammar->digit($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'digit'} = $m2);1 } else { 0 } } }) }); $MATCH };
sub any { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } }); $MATCH };
sub literal { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { do { (my  $last_match_null = 0); (my  $last_pos = $MATCH->to()); while ((do { (my  $pos1 = $MATCH->to()); (do { ((('\\' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) } || do { (($MATCH)->{to} = $pos1); (do { (my  $tmp = $MATCH); ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $tmp->to(),'to' => $tmp->to(),'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } }); (($tmp)->{bool} = ($MATCH ? 0 : 1)); ($MATCH = $tmp); ($MATCH ? 1 : 0) } && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) }) } && ($last_match_null < 2))) {if (($last_pos == $MATCH->to())) { ($last_match_null = ($last_match_null + 1)) } else { ($last_match_null = 0) };($last_pos = $MATCH->to()) }; (($MATCH)->{to} = $last_pos); 1 } } }); $MATCH };
sub metasyntax_exp { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { do { (my  $last_match_null = 0); (my  $last_pos = $MATCH->to()); (my  $count = 0); while ((do { (my  $pos1 = $MATCH->to()); (do { ((('\\' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) } || (do { (($MATCH)->{to} = $pos1); ((('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->literal($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0))) } || (do { (($MATCH)->{to} = $pos1); ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->string_code($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0))) } || (do { (($MATCH)->{to} = $pos1); ((('<' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->metasyntax_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0))) } || do { (($MATCH)->{to} = $pos1); (do { (my  $tmp = $MATCH); ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $tmp->to(),'to' => $tmp->to(),'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } }); (($tmp)->{bool} = ($MATCH ? 0 : 1)); ($MATCH = $tmp); ($MATCH ? 1 : 0) } && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) })))) } && ($last_match_null < 2))) {if (($last_pos == $MATCH->to())) { ($last_match_null = ($last_match_null + 1)) } else { ($last_match_null = 0) };($last_pos = $MATCH->to());($count = ($count + 1)) }; (($MATCH)->{to} = $last_pos); ($count > 0) } } }); $MATCH };
sub char_range { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { do { (my  $last_match_null = 0); (my  $last_pos = $MATCH->to()); (my  $count = 0); while ((do { (my  $pos1 = $MATCH->to()); (do { ((('\\' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) } || do { (($MATCH)->{to} = $pos1); (do { (my  $tmp = $MATCH); ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $tmp->to(),'to' => $tmp->to(),'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { ((']' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } }); (($tmp)->{bool} = ($MATCH ? 0 : 1)); ($MATCH = $tmp); ($MATCH ? 1 : 0) } && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) }) } && ($last_match_null < 2))) {if (($last_pos == $MATCH->to())) { ($last_match_null = ($last_match_null + 1)) } else { ($last_match_null = 0) };($last_pos = $MATCH->to());($count = ($count + 1)) }; (($MATCH)->{to} = $last_pos); ($count > 0) } } }); $MATCH };
sub char_class { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { do { (my  $m2 = $grammar->rule_ident($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } } || do { (($MATCH)->{to} = $pos1); ((('[' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->char_range($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && ((']' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0))) }) }); $MATCH };
sub string_code { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { do { (my  $last_match_null = 0); (my  $last_pos = $MATCH->to()); (my  $count = 0); while ((do { (my  $pos1 = $MATCH->to()); (do { ((('\\' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) } || (do { (($MATCH)->{to} = $pos1); ((('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->literal($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0))) } || (do { (($MATCH)->{to} = $pos1); ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->string_code($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0))) } || do { (($MATCH)->{to} = $pos1); (do { (my  $tmp = $MATCH); ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $tmp->to(),'to' => $tmp->to(),'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } }); (($tmp)->{bool} = ($MATCH ? 0 : 1)); ($MATCH = $tmp); ($MATCH ? 1 : 0) } && (('' ne substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) }))) } && ($last_match_null < 2))) {if (($last_pos == $MATCH->to())) { ($last_match_null = ($last_match_null + 1)) } else { ($last_match_null = 0) };($last_pos = $MATCH->to());($count = ($count + 1)) }; (($MATCH)->{to} = $last_pos); ($count > 0) } } }); $MATCH };
sub parsed_code { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (do { (my  $m2 = $grammar->string_code($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (do { ($MATCH->{capture} = (("" . $MATCH))) } || 1)) } }); $MATCH };
sub named_capture_body { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { ((('(' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && (((')' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = ({ 'capturing_group' => ${$MATCH->{'rule'}}, })) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('[' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && (((']' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (${$MATCH->{'rule'}})) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('<' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->metasyntax_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'metasyntax_exp'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Subrule->new( 'metasyntax' => ${$MATCH->{'metasyntax_exp'}},'captures' => 1, ))) } || 1)))) } || do { (($MATCH)->{to} = $pos1); (do { die('invalid alias syntax') } || 1) }))) }); $MATCH };
sub variables { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { ((('$<' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->rule_ident($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule_ident'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = ('$/{' . '\'' . $MATCH->{'rule_ident'} . '\'' . '}')) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); (do { (my  $m2 = MiniPerl6::Grammar->var_sigil($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'MiniPerl6::Grammar.var_sigil'} = $m2);1 } else { 0 } } && (do { (my  $m2 = MiniPerl6::Grammar->digits($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'MiniPerl6::Grammar.digits'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = ($MATCH->{'MiniPerl6::Grammar.var_sigil'} . '/[' . $MATCH->{'MiniPerl6::Grammar.digits'} . ']')) } || 1))) } || do { (($MATCH)->{to} = $pos1); (do { (my  $m2 = MiniPerl6::Grammar->var_sigil($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'MiniPerl6::Grammar.var_sigil'} = $m2);1 } else { 0 } } && (do { (my  $m2 = MiniPerl6::Grammar->var_twigil($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'MiniPerl6::Grammar.var_twigil'} = $m2);1 } else { 0 } } && (do { (my  $m2 = MiniPerl6::Grammar->full_ident($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'MiniPerl6::Grammar.full_ident'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::Var->new( 'sigil' => ("" . $MATCH->{'MiniPerl6::Grammar.var_sigil'}),'twigil' => ("" . $MATCH->{'MiniPerl6::Grammar.var_twigil'}),'name' => ("" . $MATCH->{'MiniPerl6::Grammar.full_ident'}), ))) } || 1)))) })) }); $MATCH };
sub rule_terms { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { ((('(' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && (((')' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Capture->new( 'rule_exp' => ${$MATCH->{'rule'}}, ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('<(' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && (((')>' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::CaptureResult->new( 'rule_exp' => ${$MATCH->{'rule'}}, ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('<after' eq substr($str, $MATCH->to(), 6)) ? (1 + (($MATCH)->{to} = (6 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::After->new( 'rule_exp' => ${$MATCH->{'rule'}}, ))) } || 1))))) } || (do { (($MATCH)->{to} = $pos1); ((('<before' eq substr($str, $MATCH->to(), 7)) ? (1 + (($MATCH)->{to} = (7 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Before->new( 'rule_exp' => ${$MATCH->{'rule'}}, ))) } || 1))))) } || (do { (($MATCH)->{to} = $pos1); ((('<!before' eq substr($str, $MATCH->to(), 8)) ? (1 + (($MATCH)->{to} = (8 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::NotBefore->new( 'rule_exp' => ${$MATCH->{'rule'}}, ))) } || 1))))) } || (do { (($MATCH)->{to} = $pos1); ((('<!' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->metasyntax_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'metasyntax_exp'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = ({ 'negate' => { 'metasyntax' => ${$MATCH->{'metasyntax_exp'}}, }, })) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('<+' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->char_class($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'char_class'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::CharClass->new( 'chars' => ("" . $MATCH->{'char_class'}), ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('<-' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->char_class($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'char_class'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::NegateCharClass->new( 'chars' => ("" . $MATCH->{'char_class'}), ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->literal($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'literal'} = $m2);1 } else { 0 } } && ((('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Constant->new( 'constant' => ${$MATCH->{'literal'}}, ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('<' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && ((('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->literal($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'literal'} = $m2);1 } else { 0 } } && ((('\'' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Constant->new( 'constant' => ${$MATCH->{'literal'}}, ))) } || 1)))))) } || (do { (($MATCH)->{to} = $pos1); ((('<' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = $grammar->variables($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'variables'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::InterpolateVar->new( 'var' => ${$MATCH->{'variables'}}, ))) } || 1))) } || (do { (($MATCH)->{to} = $pos1); ((('?' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->metasyntax_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'metasyntax_exp'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Subrule->new( 'metasyntax' => ${$MATCH->{'metasyntax_exp'}},'captures' => 0, ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('.' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->metasyntax_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'metasyntax_exp'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Subrule->new( 'metasyntax' => ${$MATCH->{'metasyntax_exp'}},'captures' => 0, ))) } || 1)))) } || do { (($MATCH)->{to} = $pos1); (do { (my  $m2 = $grammar->metasyntax_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'metasyntax_exp'} = $m2);1 } else { 0 } } && ((('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Subrule->new( 'metasyntax' => ${$MATCH->{'metasyntax_exp'}},'captures' => 1, ))) } || 1))) }))) }) } || (do { (($MATCH)->{to} = $pos1); ((('{' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->parsed_code($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'parsed_code'} = $m2);1 } else { 0 } } && ((('}' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Block->new( 'closure' => ${$MATCH->{'parsed_code'}}, ))) } || 1)))) } || (do { (($MATCH)->{to} = $pos1); ((('\\' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && do { (my  $pos1 = $MATCH->to()); do { (do { (my  $m2 = $grammar->any($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'any'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::SpecialChar->new( 'char' => ${$MATCH->{'any'}}, ))) } || 1)) } }) } || (do { (($MATCH)->{to} = $pos1); ((('.' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (Rul::Dot->new(  ))) } || 1)) } || do { (($MATCH)->{to} = $pos1); ((('[' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->rule($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule'} = $m2);1 } else { 0 } } && (((']' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { ($MATCH->{capture} = (${$MATCH->{'rule'}})) } || 1)))) })))))))))))))) }); $MATCH };
sub rule_term { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = $grammar->variables($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'variables'} = $m2);1 } else { 0 } } && do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $last_pos = $MATCH->to()); if (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } }) {  } else { (($MATCH)->{to} = $last_pos) }; 1 } && ((('=' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $last_pos = $MATCH->to()); if (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } }) {  } else { (($MATCH)->{to} = $last_pos) }; 1 } && (do { (my  $m2 = $grammar->named_capture_body($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'named_capture_body'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::NamedCapture->new( 'rule_exp' => ${$MATCH->{'named_capture_body'}},'capture_ident' => ${$MATCH->{'variables'}}, ))) } || 1))))) } || do { (($MATCH)->{to} = $pos1); (do { ($MATCH->{capture} = (${$MATCH->{'variables'}})) } || 1) }) }) } || (do { (($MATCH)->{to} = $pos1); (do { (my  $m2 = $grammar->rule_terms($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule_terms'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (${$MATCH->{'rule_terms'}})) } || 1)) } || do { (($MATCH)->{to} = $pos1); (do { (my  $tmp = $MATCH); ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $tmp->to(),'to' => $tmp->to(),'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { ((']' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('}' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); ((')' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('>' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); ((':' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('?' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('+' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('*' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('|' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('&' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || do { (($MATCH)->{to} = $pos1); (('/' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) })))))))))) }); (($tmp)->{bool} = ($MATCH ? 0 : 1)); ($MATCH = $tmp); ($MATCH ? 1 : 0) } && (do { (my  $m2 = $grammar->any($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'any'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::Constant->new( 'constant' => ${$MATCH->{'any'}}, ))) } || 1))) })) }); $MATCH };
sub quant_exp { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { ((('**' eq substr($str, $MATCH->to(), 2)) ? (1 + (($MATCH)->{to} = (2 + $MATCH->to()))) : 0) && (do { (my  $m2 = MiniPerl6::Grammar->opt_ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = MiniPerl6::Grammar->val_int($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'MiniPerl6::Grammar.val_int'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (${$MATCH->{'MiniPerl6::Grammar.val_int'}})) } || 1)) } || do { (($MATCH)->{to} = $pos1); (do { (my  $m2 = $grammar->rule_term($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule_term'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (${$MATCH->{'rule_term'}})) } || 1)) }) })) } || do { (($MATCH)->{to} = $pos1); do { (my  $pos1 = $MATCH->to()); (do { (('?' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('*' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || do { (($MATCH)->{to} = $pos1); (('+' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) })) } }) }); $MATCH };
sub greedy_exp { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { (('?' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || (do { (($MATCH)->{to} = $pos1); (('+' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) } || do { (($MATCH)->{to} = $pos1); 1 })) }); $MATCH };
sub quantifier { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (do { (my  $m2 = MiniPerl6::Grammar->opt_ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (do { (my  $m2 = $grammar->rule_term($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'rule_term'} = $m2);1 } else { 0 } } && (do { (my  $m2 = MiniPerl6::Grammar->opt_ws2($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = $grammar->quant_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'quant_exp'} = $m2);1 } else { 0 } } && (do { (my  $m2 = $grammar->greedy_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'greedy_exp'} = $m2);1 } else { 0 } } && (do { (my  $m2 = MiniPerl6::Grammar->opt_ws3($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::Quantifier->new( 'term' => ${$MATCH->{'rule_term'}},'quant' => ${$MATCH->{'quant_exp'}},'greedy' => ${$MATCH->{'greedy_exp'}},'ws1' => ${$MATCH->{'MiniPerl6::Grammar.opt_ws'}},'ws2' => ${$MATCH->{'MiniPerl6::Grammar.opt_ws2'}},'ws3' => ${$MATCH->{'MiniPerl6::Grammar.opt_ws3'}}, ))) } || 1)))) } || do { (($MATCH)->{to} = $pos1); (do { ($MATCH->{capture} = (${$MATCH->{'rule_term'}})) } || 1) }) }))) } }); $MATCH };
sub concat_list { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = $grammar->quantifier($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'quantifier'} = $m2);1 } else { 0 } } && do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = $grammar->concat_list($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'concat_list'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = ([${$MATCH->{'quantifier'}}, @{${$MATCH->{'concat_list'}}}])) } || 1)) } || do { (($MATCH)->{to} = $pos1); (do { ($MATCH->{capture} = ([${$MATCH->{'quantifier'}}])) } || 1) }) }) } || do { (($MATCH)->{to} = $pos1); (do { ($MATCH->{capture} = ([])) } || 1) }) }); $MATCH };
sub concat_exp { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (do { (my  $m2 = $grammar->concat_list($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'concat_list'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::Concat->new( 'concat' => ${$MATCH->{'concat_list'}}, ))) } || 1)) } }); $MATCH };
sub or_list_exp { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $m2 = $grammar->concat_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'concat_exp'} = $m2);1 } else { 0 } } && do { (my  $pos1 = $MATCH->to()); (do { ((('|' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0) && (do { (my  $m2 = $grammar->or_list_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'or_list_exp'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = ([${$MATCH->{'concat_exp'}}, @{${$MATCH->{'or_list_exp'}}}])) } || 1))) } || do { (($MATCH)->{to} = $pos1); (do { ($MATCH->{capture} = ([${$MATCH->{'concat_exp'}}])) } || 1) }) }) } || do { (($MATCH)->{to} = $pos1); (do { ($MATCH->{capture} = ([])) } || 1) }) }); $MATCH };
sub rule { my $grammar = $_[0]; my $str = $_[1]; my $pos = $_[2]; my  $MATCH; ($MATCH = MiniPerl6::Match->new( 'str' => $str,'from' => $pos,'to' => $pos,'bool' => 1, )); (($MATCH)->{bool} = do { (my  $pos1 = $MATCH->to()); do { (do { (my  $pos1 = $MATCH->to()); (do { (do { (my  $last_pos = $MATCH->to()); if (do { do { (my  $m2 = $grammar->ws($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());1 } else { 0 } } }) {  } else { (($MATCH)->{to} = $last_pos) }; 1 } && (('|' eq substr($str, $MATCH->to(), 1)) ? (1 + (($MATCH)->{to} = (1 + $MATCH->to()))) : 0)) } || do { (($MATCH)->{to} = $pos1); 1 }) } && (do { (my  $m2 = $grammar->or_list_exp($str, $MATCH->to())); if ($m2) { (($MATCH)->{to} = $m2->to());($MATCH->{'or_list_exp'} = $m2);1 } else { 0 } } && (do { ($MATCH->{capture} = (Rul::Or->new( 'or_list' => ${$MATCH->{'or_list_exp'}}, ))) } || 1))) } }); $MATCH }
}

1;
