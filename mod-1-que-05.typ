#import "notes.typ": *

#let zero_indent(t) = [#par(first-line-indent: 0pt)[#t]]

== Физические характеристики межфазного обмена
#question_[
  Межфазный обмен импульсом и энергией: межфазная сила из-за сил трения, давления и сцепления между фазами, обмен импульсом за счет фазовых превращений, приток энергии за счет работы межфазных сил, приток энергии за счет теплопередачи на границе фаз. Теорема живых сил. Уравнения сохранения внутренней энергии (уравнения притока тепла) в дифференциальной форме для фаз гетерогенной смеси. Термодинамические уравнения состояния фаз, гипотеза локального равновесия. Схема Х.А. Рахматулина силового взаимодействия и совместного деформирования фаз. Работа внутренних сил.
]

*Межфазный обмен импульсом и энергией*

Рассматривается система законов взаимодействия $N$ фаз:
$
cases(
  (partial rho_i)/(partial t) + nabla dot rho_i bold(v)_i = sum_(j=1)^N J_(j i)\,,
  rho_i (d_i bold(v)_i) / (d t) = nabla^k sigma^k_i + rho_i bold(g)_i + sum_(j=1)^N ( bold(P)_(j i) - J_(j i) bold(v)_i )\,,
  rho_i d_i / (d t) ( u_i + v_i^2 / 2 ) = nabla dot ( bold(c)_i - bold(q)_i ) + rho_i bold(g)_i dot bold(v)_i + sum_(j=1)^N [ E_(j i) - J_(j i) (u_i + v_i^2 / 2) ]\,,
  J_(j i) = - J_(i j)\, bold(P)_(j i) = - bold(P)_(i j)\, E_(j i) = - E_(i j),
)
$
#zero_indent[
  где $rho_i$ -- плотность $i$-ой составляющей; $bold(v)_i$ -- скорость $i$-ой составляющей;
  $J_(j i)$ -- интенсивность перехода массы из $j$-ой в $i$-ую составляющую;
  $sigma_i$ -- тензор напряжений $i$-ой составляющей;
  $bold(g)_i$ -- плотность внешних массовых сил, действующих на $i$-ую составляющую;
  $bold(P)_(j i)$ -- _интенсивность обмена импульсом из $j$-ой в $i$-ую_;
  $u_i$ -- удельная внутренняя энергия $i$-ой составляющей;
  $bold(c)_i$ -- внешние поверхностные силы;
  $bold(q)_i$ -- вектор притока тепла;
  $E_(j i)$ -- интенсивность обмена энергией из $j$-ой в $i$-ую.
]

#definition[
  _Межфазной силой_ $bold(R)_(j i)$ называется такая сила, что вектор интенсивности обмена
  импульсом $bold(P)_(j i)$
  представляется в виде
  $
  bold(P)_(j i) = - bold(P)_(i j) = bold(R)_(j i) + J_(j i) bold(v)_(j i),
  $
  #zero_indent[
    где $bold(R)_(j i)$ -- _межфазная сила, обусловленная силами трения, давления, сцепления между
    фазами и т.д_;
    $bold(v)_(j i)$ -- скорость вещества $i$-ой фазы на границе с $j$-ой фазой;
    второе слагаемое обозначает обмен импульсом за счёт фазовых превращений из $j$ в $i$;
    переход из $j$ в $i$ приводит к тому, что из $j$-ой фазы в $i$-ую уходит импульс,
    $bold(v)_(j i)$ характеризует скорость массы, претерпевающей превращение $j -> i$ и
    находящейся в $i$-ой фазе
    #footnote[Нигматулин Р.И. -- Динамика многофазных сред, стр. 28].
  ]
]

#remark[
  Для гетерогенных смесей с вязкими жидкостями характерно отсутствие скачков скорости:
  $
  bold(v)_(i j) = bold(v)_(j i) => bold(R)_(j i) = - bold(R)_(i j)
  $
  #proof[
    $
    cases(
      bold(P)_(j i) = bold(R)_(j i) + J_(j i) bold(v)_(j i),
      bold(P)_(i j) = bold(R)_(i j) + J_(i j) bold(v)_(i j),
      bold(P)_(j i) = - bold(P)_(i j), 
      J_(j i) = - J_(i j),
      bold(v)_(j i) = bold(v)_(i j)
    ) =>
    cases(
      bold(P)_(j i) = bold(R)_(j i) + J_(j i) bold(v)_(j i),
      - bold(P)_(j i) = bold(R)_(i j) - J_(j i) bold(v)_(j i),
    ) =>
    bold(R)_(j i) = - bold(R)_(i j)
    $
  ]
]

В уравнение движения подставим вид $bold(P)_(j i)$:
$
rho_i (d_i bold(v)_i) / (d t) = nabla^k arrow(sigma)^k_i + rho_i bold(g)_i + sum_(j=1)^N ( bold(R)_(j i) + J_(j i) (bold(v)_(j i) - bold(v)_i))
$

Интенсивность обмена энергией:
$
E_(j i) = W_(j i) + Q_(j i) + J_(j i) (u_(j i) + 1/2 v_(j i)^2), quad
E_(j i) = - E_(i j),
$<energy_intensity_split>
#zero_indent[
  где $W_(j i)$ -- _приток энергии в $i$-ую фазу из $j$-ой фазы за счёт работы межфазных сил (трение, давление, сцепление)_;
  $Q_(j i)$ -- _приток энергии в $i$-ую фазу за счёт теплопередачи на границе фаз_;
  последнее слагаемое -- перенос внутренней кинетической энергий вместе с переносом массы из $j$-ой
  в $i$-ую фазу;
  $u_(j i)$ -- удельная внутренняя энергия массы, претерпевающей переход из $j$ в $i$.
]

В отличие от скоростей $bold(v)_(j i)$ (в гетерогенных смесях с вязкими жидкостями), внутренняя
энергия $u_(j i)$ фаз терпит разрыв на межфазной границе: $u_(j i) eq.not u_(i j)$.

#theorem(title: "Уравнение энергии")[
  Прямым подставлением @energy_intensity_split в уравнение энергии, можно получить:
  $
  rho_i d_i / (d t) ( u_i + v_i^2 / 2 ) = nabla dot (bold(c)_i - bold(q)_i) + rho_i bold(g)_i dot bold(v)_i + sum_(j=1)^N [ W_(j i) + Q_(j i) + \
  +J_(j i) ( u_(j i) - u_i + ( v_(j i)^2 - v_i^2 ) / 2 ) ]
  $
]

#theorem(title: "Живых сил")[
  Уравнение изменения кинетической энергии в дифференциальной форме для $i$-ой фазы имеет следующий вид:
  $
  rho_i d_i / (d t) (v_i^2 / 2) = bold(v)_i dot nabla^k arrow(sigma)_i^k + rho_i bold(g)_i dot bold(v)_i + sum_(j=1)^N [ bold(R)_(j i) dot bold(v)_i + J_(j i) ( bold(v)_(j i) - bold(v)_i ) dot bold(v)_i ]
  $

  #proof[
    Умножим уравнение движения скалярно на $bold(v)_i$ и воспользуемся тем, что $rho_i d_i / (d t) (v_i^2 / 2) = rho_i bold(v)_i (d_i bold(v)_i) / (d t)$.
  ]
]

#theorem(title: [Уравнение изменения внутренней энергии для $i$-ой фазы])[
  $
  rho_i (d_i u_i) / (d t) =
  nabla dot (bold(c)_i - bold(q)_i) - bold(v)_i dot nabla^k arrow(sigma)_i^k + \
  + sum_(j=1)^N [ W_(j i) + Q_(j i) - bold(R)_(j i) dot bold(v)_i + J_(j i) (u_(j i) - u_i + (bold(v)_(j i) - bold(v)_i)^2 / 2) ]
  $

  #proof[
    Вычтем из уравнения энергии уравнение изменения кинетической энергии:
    $
    rho_i d_i / (d t) ( u_i ) =
    nabla dot (bold(c)_i - bold(q)_i) - bold(v)_i dot nabla^k arrow(sigma)_i^k + \
    + sum_(j=1)^N [ W_(j i) + Q_(j i) + J_(j i) (u_(j i) - u_i + (v_(j i)^2 - v_i^2) / 2) - bold(R)_(j i) dot bold(v)_i - J_(j i) (bold(v)_(j i) - bold(v)_i) dot bold(v)_i ]
    $

    $
    rho_i d_i / (d t) ( u_i ) =
    nabla dot (bold(c)_i - bold(q)_i) - bold(v)_i dot nabla^k arrow(sigma)_i^k + \
    + sum_(j=1)^N [ W_(j i) + Q_(j i) + J_(j i) (u_(j i) - u_i) - bold(R)_(j i) dot bold(v)_i + J_(j i) (v_(j i)^2 - 2 bold(v)_(j i) dot bold(v)_i + v_i^2) / 2 ]
    $

    $
    rho_i d_i / (d t) ( u_i ) =
    nabla dot (bold(c)_i - bold(q)_i) - bold(v)_i dot nabla^k arrow(sigma)_i^k + \
    + sum_(j=1)^N [ W_(j i) + Q_(j i) + J_(j i) (u_(j i) - u_i) - bold(R)_(j i) dot bold(v)_i + J_(j i) (bold(v)_(j i) - bold(v)_i)^2 / 2 ]
    $
  ]
]

Из анализа правых частей этих уравнений видно, что при фазовом превращении из $j$ в $i$ из $j$-ой
фазы уходит кинетическая энергия $1/2 J_(j i) v_(j i)^2$; при этом слагаемое $1/2 J_(j i) v_i^2$ 
-- кинетическая энергия остаётся в виде кинетической энергии у этом массы в состоянии $i$-ой фазы,
а остальная часть слагаемого $J_(j i) (bold(v)_(j i) - bold(v))^2$ идёт на изменение удельной полной энергии $i$-ой фазы, причём на изменение удельной кинетической энергии $i$-ой фазы идёт $J_(j i) ( bold(v)_(j i) dot bold(v)_i - v_i^2 )$, а на изменение удельной внутренней энергии идёт $1/2 J_(j i) ( bold(v)_(j i) - bold(v)_i )^2$

#theorem(title: "Уравнение внутренней энергии фаз (притока тепла)")[
  Уравнения сохранения внутренней энергии получены из формальных балансовых соотношений
  (законов сохранения) и задание конкретных значений $W_(j i)$, $Q_(j i)$, $bold(c)_i$ в правой
  части сопряжено со значительными трудностями, поэтому используется уравнение притока тепла
  $i$-ой фазы:
  $
  rho_i (d_i u_i) / (d t) = rho_i A_i + rho_i Q_i + sum_(j=1)^N J_(j i) (u_(j i) - u_i),
  $
  #zero_indent[где $A_i$ -- работа внутренних сил в единицу времени, отнесённая к единице массы $i$-ой фазы;
  $Q_i$ -- приток тепла в единицу времени, отнесённый к единице массы $i$-ой фазы.]

  $
  rho_i Q_i &= - nabla dot bold(q)_i + sum_(j=1)^N Q_(j i), \
  rho_i A_i &= nabla dot bold(c)_i - bold(v)_i dot nabla^k arrow(sigma)_i^k + sum_(j=1)^N [W_(j i) - bold(R)_(j i) dot bold(v)_i + J_(j i) / 2 (bold(v)_(j i) - bold(v)_i)^2]
  $

  -- уравнения не зависят от граничных и внешних для $i$-ой фазы условий.
]

*Термодинамические уравнения состояния фаз*

Задание модели многофазной сплошной среды требует привлечения механических и термодинамических 
свойств фаз.
Полагают, что свойства $i$-ой фазы смеси определяются теми же соотношениями, что и в случае, когда
$i$-ая фаза занимает весь объём $V$.

Принимается _гипотеза локального равновесия_ в пределах $i$-ой фазы (локальное равновесие всей
смеси может не выполняться): в любой точке объёма существует температура $theta_i$. Следовательно,
можно ввести другие термодинамические функции этой фазы:
- _Энтропия_: $s_i$
- _Энтальпия_: $i_i$
- _Свободная энергия_: $phi_i$
- _Термодинамический потенциал_: $z_i$

$i$-ая фаза -- это двухпараметрическая среда, т.е. зная два параметра, можно посчитать другие
параметры. Тогда каждая из термодинамических функций зависит от двух параметров, например:
$circle(rho)_i$ и $theta_i$, или $p_i$ и $theta_i$:
$u_i = u_i (circle(rho)_i, theta_i)$, $p_i = p_i (circle(rho)_i, theta_i)$, $s_i = s_i (circle(rho)_i , theta_i)$.

Причём справедливо соотношение Гиббса:
$
theta_i (d_i s_i) / (d t) = (d_i u_i) / (d t) + p_i d_i / (d t) (1 / circle(rho)_i),
$
#zero_indent[
  где $p_i$ -- это давление вещества внутри $i$-ой фазы.
]

Наличие нескольких компонент и химических реакций в фазах, меняющих концентрации этих компонент,
приводит к необходимости включения концентраций компонент в фазах в качестве дополнительных
независимых аргументов в уравнение состояния фаз.

*Схема Х. А. Рахматулина*

Рахматулин Х. А. в своих работах предложил схему совместного деформирования фаз. В этой схеме предполагается выполнение следующих условий (условия совместного деформирования фаз):
+ Пусть тензор напряжения $sigma_i$ симметричен и его правая (шаровая) часть пропорциональна
  концентрации:
  $
  sigma_i^(k l) = - alpha_i p_i delta^(k l) + tau_i^(k l) <=> sigma_i = - alpha_i p_i E + tau_i,
  $
  $
  1/3 sigma_i^(k k) = - alpha_i p_i, tau_i^(k k) = 0, tau_i^(k l) = tau_i^(l k).
  $

+ Схема с общим давлением фаз:
  $
  p_1 (circle(rho)_1, theta_1) = p_2 (circle(rho)_2, theta_2) = dots = p_N (circle(rho)_N, theta_N) = p
  $
  Также можно использовать условие несжимаемости одной из фаз.

  Условие общего давления может не выполняться при моделировании капилярных явлений, прочности и
  энергии фаз при мелкомасштабном движении.

+ Суммарная сила межфазного взаимодействия представляется в виде:
  $
  sum_(j=1)^N bold(R)_(j i) = underbrace(p nabla alpha_i, "составляющая,\nобусловленная\nрасширением трубки\nтока фазы") + sum_(j=1)^N bold(F)_(j i), space.quad bold(F)_(j i) = - bold(F)_(i j),
  $
  #zero_indent[
    где $bold(F)_(j i)$ -- функция, зависящая от скоростной неравновестности между $j$-ой и $i$-ой
    фазами (растёт с увеличением скорости скольжения $bold(v)_j - bold(v)_i$).
  ]

*Работа внутренних сил*

#todo[
  Вообще взрыв мозга. В книге Нигматулина 31-32 стр. по этому поводу написано только уравнение 
  @internal_forces_work. Всё остальное в этом пункте я написал на лекциях, но в конце оборвана
  связь с @internal_forces_work.
]

Работа внутренних сил каждой фазы обычно разделяется на обратимую работу внутренних сил давления
на сжатие или расширение материала фазы и на работу внутренних сдвиговых сил, которые приводят к
диссипации кинетической энергии.

В случае вязкой жидкости:
$
rho_i A_i = nabla dot bold(c)_i - bold(v)_i dot nabla^k arrow(sigma)_i^k + sum_(j=1)^N [ W_(j i) - bold(R)_(j i) dot bold(v)_i + J_(j i) / 2 (bold(v)_(j i) - bold(v)_i)^2 ]
$
Отдельно преобразуем:
$
sum_(j=1)^N [ W_(j i) - bold(R)_(j i) dot bold(v)_j ] = sum_(j=1)^N W_(j i) - bold(v)_j dot [ p nabla alpha_i + sum_(k=1)^N bold(F)_(k i) ] = \
= sum_(j=1)^N W_(j i) - bold(v)_i dot p nabla alpha_i - sum_(j=1)^N bold(F)_(j i) dot bold(v)_i = \
= - bold(v)_i dot p nabla alpha_i + sum_(j=1)^N [W_(j i) - bold(F)_(j i) dot bold(v)_i].
$
тогда:
$
rho_i A_i &= nabla dot bold(c)_i - bold(v)_i dot nabla^k arrow(sigma)_i^k - bold(v)_i dot p nabla alpha_i + sum_(j=1)^N [ W_(j i) - bold(F)_(j i) dot bold(v)_i + J_(j i) / 2 (bold(v)_(j i) - bold(v)_i)^2 ] = \
&= nabla dot bold(c)_i - v_i^m nabla^k ( - alpha_i p_i delta^(k m) + tau_i^(k m) ) - bold(v)_i dot p nabla alpha_i + sum_(j=1)^N [dots] = \
&= nabla dot bold(c)_i + v_i^k nabla^k (alpha_i p_i) - v_i^m nabla^k (tau_i^(k m)) - bold(v)_i dot p_i nabla alpha_i + sum [ dots ] = \
&= nabla dot bold(c)_i + cancel( bold(v)_i dot p_i nabla alpha_i) + bold(v)_i dot alpha_i nabla p_i - v_i^m nabla^k tau_i^(k m) - cancel(bold(v)_i dot p_i nabla alpha_i) + sum [ dots ] = \
&= nabla dot bold(c)_i + bold(v)_i dot alpha_i nabla p_i - v_i^m nabla^k tau_i^(k m) + sum_(j=1)^N [W_(j i) - bold(F)_(j i) dot bold(v)_i]
$

так как $bold(c)_i = sigma_i dot bold(v)_i = dots = sigma_i^(m l) v_i^l bold(e)^m$, то:
$
nabla dot bold(c)_i &= nabla^k dot (sigma_i^(k l) v_i^l) = nabla^k (sigma_i^(k l)) v_i^l + sigma_i^(k l) nabla^k v_i^l = \
&= nabla^k dot (-alpha_i p_i delta^(k l) + tau_i^(k l)) v_i^l - alpha_i p_i delta^(k l) nabla^k v_i^l + tau_i^(k l) nabla^k v_i^l =  \
&= - bold(v)_i dot p_i nabla alpha_i - bold(v)_i dot alpha_i nabla p_i + v_i^l nabla^k  tau_i^(k l) - alpha_i p_i nabla dot bold(v)_i + tau_i^(k l) nabla^k v_i^l
$
и дальше там что-то сократиться:
$
rho_i A_i &= - bold(v)_i p_i dot nabla alpha_i - alpha_i p_i nabla dot bold(v)_i + tau_i^(k l) nabla^k v_i^l + sum_(j=1)^N [W_(j i) - bold(F)_(j i) dot bold(v)_i].
$

Дальше на лекции я уснул и тут из ниоткуда:
$
rho_i A_i = 
// nabla^k ( sigma^(k l)_i v_i^l ) dots = 
underbrace((alpha_i p_i) / circle(rho)_i (d_i circle(rho)_i) / (d t), "работа сил\nдавления") +
underbrace(tau_i^(k l) e_i^(k l), "диссипация за счёт\nмакроскопических\nвязких сил") +
sum_(j=1)^N [  underbrace(bold(F)_(j i) dot (bold(v)_(j i) - bold(v)_i), "диссипация за счёт\nмежфазных сил\nиз-за межфазной\nскоростной\nнеравновестности") +
underbrace(J_(j i) ((bold(v)_(j i) - bold(v)_i)^2)/2, "диссипация\nза счёт\nнеравновесного\nобмена при\nфазовых переходах") ], 
$<internal_forces_work>
#zero_indent[
  где $bold(v)_(j i) = bold(v)_(i j)$;
  $tau_i^(k l) e_i^(k l) = tau_i^(k l) nabla^k v_i^(k l)$ -- очень странная запись, в тензорном виде получше: $tau_i dot dot e_i$ (в следствие симметричности $tau_i$),
  $e_i^(k l) = 1/2 ((partial v_i^k)/(partial x^l) + (partial v_i^l)/(partial x^k) )$ -- всемирно известный тензор малых деформаций.
]

Таким образом, только часть межфазной силы $bold(R)_(j i)$, равная $bold(F)_(j i)$ работает на
диссипацию.
