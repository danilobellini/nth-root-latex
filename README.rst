Integer-only n-th root of x / Raiz n-ésima de x apenas com inteiros
===================================================================

.. list-table::

  * - `English`_
    - `Português`_


.. _English:

Integer-only n-th root of x
---------------------------

In `PEP 572`_\ , there's an algorithm
implemented in Python with and without an *assignment expression*
for obtaining the n-th root of x,
using only integer numbers (input, output and in-between values),
where the final result is the truncated value of the desired root
if it's not an integer.
This document aims to explain and justify
how this algorithm works.

The code found in `PEP 572`_ is:

.. code-block:: python

  while a > (d := x // a**(n-1)):
      a = ((n-1)*a + d) // n
  return a


Where all variables have positive integer values,
and the initial value of "a" is greater than or equal to
the n-th root of x.
`PEP 572`_ further says that, roughly speaking,
this algorithm doubles the number of accurate bits at each iteration.

In order to compile (generate the PDF),
it's required to have pygments_ previously installed,
apart from a LaTeX distribution.
The command for creating the PDF is:

.. code-block:: shell

  PDFLANG=en pdflatex --shell-escape nth_root_proof.tex && \
  PDFLANG=en pdflatex --shell-escape nth_root_proof.tex


.. _Português:

Raiz n-ésima de x apenas com inteiros
-------------------------------------

Na `PEP 572`_\ , há um algoritmo
implementado no Python com e sem uma *assignment expression*
para o cálculo da raiz n-ésima de x,
utilizando apenas inteiros (entrada, saída e valores intermediários),
sendo que o resultado final é o valor truncado da raiz desejada
no caso deste não ser inteiro.
Este documento visa explicar e justificar
o funcionamento desse algoritmo.

O código presente na `PEP 572`_ é:

.. code-block:: python

  while a > (d := x // a**(n-1)):
      a = ((n-1)*a + d) // n
  return a

Em que todas as variáveis possuem valores inteiros positivos,
e o valor inicial de "a" é maior ou igual à raiz n-ésima de x.
A `PEP 572`_ ainda diz que, a grosso modo,
esse algoritmo dobra o número de bits acurados a cada iteração.

Para compilar (gerar o PDF) é necessário ter instalado o pygments_\ ,
além de uma distribuição do LaTeX.
O comando para gerar o PDF é:

.. code-block:: shell

  PDFLANG=pt pdflatex --shell-escape nth_root_proof.tex && \
  PDFLANG=pt pdflatex --shell-escape nth_root_proof.tex


.. _`PEP 572`:
  https://www.python.org/dev/peps/pep-0572#a-numeric-example

.. _`pygments`:
  https://pygments.org
