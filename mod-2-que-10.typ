#import "notes.typ" : *

#let zero_indent(t) = [#par(first-line-indent: 0pt)[#t]]
#let angles(t) = [$lr(chevron.l #t chevron.r)$]

== Асимптотическое моделирование в теории теплопроводности

#question_[
  Одномерное уравнение теплопроводности в неоднородном стержне периодической структуры. Асимптотическое решение. Быстрые и медленные переменные. Оператор среднего значения. Эффективный коэффициент теплопроводности. Задачи на ячейке периодичности. Осредненное уравнение теплопроводности.
]

Пусть решается задача теплопроводности в стержне с быстроосциллирующим коэффициентом
теплопроводности. Пусть стержень длины $L$ состоит из повторяющихся участков (ячеек периодичности)
длины $l$, внутри которых коэффициент теплопроводности меняется (например, два подряд идущих слоя
разных материалов) #footnote[Ответ на этот вопрос по большей части основывается на файле `2.10 - 1.pdf`]. 

Для удобства перейдём к безразмерной постановке и обозначим:
- $x$ -- координата вдоль стержня (_медленная_, _макроскопическая_), меняющаяся
  от $0$ до $1$; 
  // $l << L$ -- характерный размер микроструктуры; 
- $epsilon = l / L << 1$ -- малый параметр;
- $xi = x / epsilon in [0, 1/epsilon]$ -- _быстрая_ переменная (микроскопическая) --
  координата, соответствующая локальной структуре стержня.


Одномерное уравнение теплопроводности в неоднородном стержне периодической структуры:
$
d/(d x) ( K(x / epsilon) (d u)/(d x) ) - f(x) = 0,
$
#zero_indent[
  где $K(xi)$ -- коэффициент теплопроводности, периодическая функция с периодом 1:
  $K(xi + 1) = K(xi), quad forall xi$;
  $u (x)$ -- температура;
  $f (x)$ -- плотность внешних источников.
]

Асимптотическое решение будем искать в виде:
$
u^oo = u_0 (x, xi) + epsilon u_1 (x, xi) + epsilon^2 u_2 (x, xi) + dots = sum_(i=0)^oo epsilon^i u_i (x, xi),
$
#zero_indent[где $u_i (x, xi)$ -- периодические по $xi$ функции с периодом 1.]

Производная раскрывается по правилу сложной функции:
$
d/(d x) = partial/(partial x) + 1/epsilon partial/(partial xi).
$

Тогда исходное уравнение записывается в виде:
$
sum_(i=0)^oo epsilon^i d/(d x) [ K(xi) dot (d u_i (x, xi))/(d x)  ] - f(x) = 0 <=> \
sum_(i=0)^oo epsilon^i d/(d x) [ K(xi) dot ( (partial u_i)/(partial x) + 1/epsilon (partial u_i)/(partial xi) ) ] - f(x) = 0 <=> \
sum_(i=0)^oo epsilon^i [ (partial )/(partial x) ( K(xi) (partial u_i)/(partial x) ) + 1/epsilon (partial )/(partial xi) (K(xi) (partial u_i)/(partial x) ) + 1/epsilon (partial)/(partial x) (K(xi) (partial u_i)/(partial xi) ) + 1/epsilon^2 (partial )/(partial xi) (K(xi) (partial u_i)/(partial xi) )] = f(x)
$

При $-2$ степени $epsilon$:
$
(partial )/(partial xi) (K(xi) (partial u_0)/(partial xi) ) = 0,
$<epsilon-2equation>

При $-1$ степени:
$
(partial )/(partial xi) (K(xi) (partial u_0)/(partial x) ) + (partial)/(partial x) (K(xi) (partial u_0)/(partial xi) ) + (partial )/(partial xi) (K(xi) (partial u_1)/(partial xi) ) = 0
$<epsilon-1equation>

При $0$ степени:
$
(partial )/(partial x) ( K(xi) (partial u_0)/(partial x) ) + (partial )/(partial xi) (K(xi) (partial u_1)/(partial x) ) + (partial)/(partial x) (K(xi) (partial u_1)/(partial xi) ) + (partial )/(partial xi) (K(xi) (partial u_2)/(partial xi) ) = f(x)
$<epsilon0equation>

И т.д. Получаем рекуррентную систему уравнений относительно $u_i$.

*Вывод осреднённых уравнений*.

Далее рассмотрим уравнение @epsilon-2equation. Из него следует, что
$K(xi) (partial u_0)/(partial xi) = C(x)$ -- не зависит от $xi$.

#definition[
  Введём *оператор осреднения* $angles(dot)$, который при применении
  к функции $phi(x, xi)$ равен следующему интегралу:
  $
  angles( phi(x, xi) ) = 1/abs(V_"ЯП") limits(integral)_(V_"ЯП") phi(x, xi) d V(xi) underbrace(=, "в 1D") limits(integral)_0^1 phi(x, xi) d xi,
  $
  #zero_indent[где $V_"ЯП"$ -- ячейка периодичности.]
]

Применим этот оператор к обоим частям $(partial u_0)/(partial xi) = K^(-1) (xi)C(x)$:
$
angles( (partial u_0)/(partial xi) ) = angles(K^(-1) (xi)) dot C(x).
$
Интегрируя по частям в одномерном случае, или применяя теорему Остроградского-Гаусса в многомерном,
получаем:
$
0 = u_0 (x, 1) - u_0 (x, 0) = angles(K^(-1) (xi)) dot C(x)
$
$angles(K^(-1) (xi))$ никак не может быть 0, из-за того, что $K(xi) >= 0$, тогда, $C(x) = 0$,
следовательно, $(partial u_0)/(partial xi) = 0$, и, следовательно, $u_0 (x, xi) = v_0 (x)$.

Полученный результат говорит о том, что в первом приближении поле температуры не зависит от
внутренней структуры.

Преобразуем теперь уравнение @epsilon-1equation:
$
(partial )/(partial xi) ( K(xi) ( (d v_0)/(d x) + (partial u_1)/(partial xi) ) ) = 0
$
#zero_indent[-- эту задачу также называют _задачей на ячейке периодичности_.]

$
<=> K(xi) ( (d v_0)/(d x) + (partial u_1)/(partial xi) ) = C_1 (x) <=> \ 
<=> (d v_0)/(d x) + (partial u_1)/(partial xi) = C_1 (x) K^(-1) (xi) <=> \
<=> angles( (d v_0)/(d x) ) + underbrace(angles( (partial u_1)/(partial xi) ), #[=0, т.к. \ $u_1$ -- квазипериод.] ) = C_1 (x) dot angles(K^(-1) (xi) ) <=> \
<=> C_1 (x) = hat(K) dot (d v_0)/(d x),
$
#zero_indent[
  где $hat(K) = angles(K^(-1))^(-1)$ -- среднегармоническое $K$
]

Тогда, после преобразований:
$
(partial u_1)/(partial xi) = ( hat(K)/(K (xi)) - 1 ) (d v_0)/(d x) <=> \
<=> u_1 (x, xi) = limits(integral)_0^xi ( hat(K)/(K (xi)) - 1 ) (d v_0)/(d x) d xi + D_1 (x)
$

Применяя к @epsilon0equation оператор осреднения:
$
angles((partial )/(partial x) ( K(xi) ((partial u_0)/(partial x) + (partial u_1)/(partial xi)) )) = f(x) <=> \
angles( (partial )/(partial x) ( hat(K) (d v_0)/(d x) )) = f(x) <=> \
hat(K) (d^2 v_0)/(d x^2) = f(x)
$
Последнее уравнение называется _осреднённым_, а $hat(K)$, по смыслу, логично называть _эффективным_
коэффициентом теплопроводности.

