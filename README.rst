Raiz n-ésima de x apenas com inteiros
=====================================

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

Para compilar (gerar o PDF) é necessário ter instalados,
além de uma distribuição do LaTeX,
o `gnuplot <http://www.gnuplot.info/>`_ e
o `pygments <https://pygments.org/>`_\ .
O comando para gerar o PDF é:

.. code-block:: shell

  pdflatex --shell-escape nth_root_proof.tex && \
  pdflatex --shell-escape nth_root_proof.tex


.. _`PEP 572`:
  https://www.python.org/dev/peps/pep-0572#a-numeric-example

.. _`gnuplot`:
  http://www.gnuplot.info

.. _`pygments`:
  https://pygments.org
