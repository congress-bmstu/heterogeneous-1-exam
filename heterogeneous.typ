#import "notes.typ": notes

#show: notes.with(author: "Конгресс", title: "heterogeneous-exam")

#align(
  horizon + center,
  {
    set page(numbering: none)
    align(right, text(size: 26pt)[Михаил Юрьевич Иванов #emoji.man])
    v(5fr)
    text(size: 26pt, weight: "bold")[Экзамен]
    v(1fr)
    text(size: 20pt, weight: "bold")[Математическое моделирование гетерогенных сред]
    v(1cm)
    text(size: 50pt)[#emoji.watermelon]
    v(8fr)
    align(center)[_Зимняя сессия 2025 - 2026_]
  },
)
#pagebreak()
#heading(numbering: none)[Распределение вопросов]
#figure(table(
  columns: 4,
  [Валера], [Таня], [Андрей], [Саша],
  [1.1, 1.3, 2.1, 2.7], [1.2, 2.2, 2.3, 2.4, 2.5], [1.4, 1.5, 2.6, 2.8], [2.9, 2.10, 2.11, 2.12, 2.13],
))
#outline()
#pagebreak()

= Модуль 1
#include "mod-1-que-01.typ"
#include "mod-1-que-02.typ"
#include "mod-1-que-03.typ"
#include "mod-1-que-04.typ"
#include "mod-1-que-05.typ"

= Модуль 2
#include "mod-2-que-01.typ"
#include "mod-2-que-02.typ"
#include "mod-2-que-03.typ"
#include "mod-2-que-04.typ"
#include "mod-2-que-05.typ"
#include "mod-2-que-06.typ"
#include "mod-2-que-07.typ"
#include "mod-2-que-08.typ"
#include "mod-2-que-09.typ"
#include "mod-2-que-10.typ"
#include "mod-2-que-11.typ"
#include "mod-2-que-12.typ"
#include "mod-2-que-13.typ"


