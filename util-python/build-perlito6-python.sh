
export PERL5LIB=lib5

rm -rf libpy/

mkdir libpy
touch libpy/__init__.py

cp src6/lib/Perlito6/Python/Runtime.py libpy/Perlito6__Python__Runtime.py

perl perlito6.pl -Cpython src6/lib/Perlito6/AST.pm             > libpy/Perlito6__AST.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Python/Prelude.pm  > libpy/Perlito6__Python__Prelude.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Precedence.pm      > libpy/Perlito6__Precedence.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Expression.pm      > libpy/Perlito6__Expression.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Macro.pm           > libpy/Perlito6__Macro.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Test.pm            > libpy/Perlito6__Test.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Grammar.pm         > libpy/Perlito6__Grammar.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Grammar/Control.pm > libpy/Perlito6__Grammar__Control.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Grammar/Regex.pm   > libpy/Perlito6__Grammar__Regex.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Emitter/Token.pm   > libpy/Perlito6__Emitter__Token.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Eval.pm            > libpy/Perlito6__Eval.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Runtime.pm         > libpy/Perlito6__Runtime.py

perl perlito6.pl -Cpython src6/lib/Perlito6/Javascript/Emitter.pm > libpy/Perlito6__Javascript__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Lisp/Emitter.pm    > libpy/Perlito6__Lisp__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Perl5/Emitter.pm   > libpy/Perlito6__Perl5__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Go/Emitter.pm      > libpy/Perlito6__Go__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Parrot/Emitter.pm  > libpy/Perlito6__Parrot__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Python/Emitter.pm  > libpy/Perlito6__Python__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Ruby/Emitter.pm    > libpy/Perlito6__Ruby__Emitter.py
perl perlito6.pl -Cpython src6/lib/Perlito6/Java/Emitter.pm    > libpy/Perlito6__Java__Emitter.py

perl perlito6.pl -Cpython src6/util/perlito6.pl                    > ./perlito6.py

