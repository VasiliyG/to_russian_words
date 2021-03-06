# frozen_string_literal: true
module ToRussianWords
  module UnderHundred
    NOMINATIVE_UNDER_HUNDRED = {
      0 => "ноль",
      1 => "один",
      2 => "два",
      3 => "три",
      4 => "четыре",
      5 => "пять",
      6 => "шесть",
      7 => "семь",
      8 => "восемь",
      9 => "девять",
      10 => "десять",
      11 => "одиннадцать",
      12 => "двенадцать",
      13 => "тринадцать",
      14 => "четырнадцать",
      15 => "пятьнадцать",
      16 => "шестьнадцать",
      17 => "семьнадцать",
      18 => "восемьнадцать",
      19 => "девятьнадцать",
      20 => "двадцать",
      21 => "двадцать один",
      22 => "двадцать два",
      23 => "двадцать три",
      24 => "двадцать четыре",
      25 => "двадцать пять",
      26 => "двадцать шесть",
      27 => "двадцать семь",
      28 => "двадцать восемь",
      29 => "двадцать девять",
      30 => "тридцать",
      31 => "тридцать один",
      32 => "тридцать два",
      33 => "тридцать три",
      34 => "тридцать четыре",
      35 => "тридцать пять",
      36 => "тридцать шесть",
      37 => "тридцать семь",
      38 => "тридцать восемь",
      39 => "тридцать девять",
      40 => "сорок",
      41 => "сорок один",
      42 => "сорок два",
      43 => "сорок три",
      44 => "сорок четыре",
      45 => "сорок пять",
      46 => "сорок шесть",
      47 => "сорок семь",
      48 => "сорок восемь",
      49 => "сорок девять",
      50 => "пятьдесят",
      51 => "пятьдесят один",
      52 => "пятьдесят два",
      53 => "пятьдесят три",
      54 => "пятьдесят четыре",
      55 => "пятьдесят пять",
      56 => "пятьдесят шесть",
      57 => "пятьдесят семь",
      58 => "пятьдесят восемь",
      59 => "пятьдесят девять",
      60 => "шестьдесят",
      61 => "шестьдесят один",
      62 => "шестьдесят два",
      63 => "шестьдесят три",
      64 => "шестьдесят четыре",
      65 => "шестьдесят пять",
      66 => "шестьдесят шесть",
      67 => "шестьдесят семь",
      68 => "шестьдесят восемь",
      69 => "шестьдесят девять",
      70 => "семьдесят",
      71 => "семьдесят один",
      72 => "семьдесят два",
      73 => "семьдесят три",
      74 => "семьдесят четыре",
      75 => "семьдесят пять",
      76 => "семьдесят шесть",
      77 => "семьдесят семь",
      78 => "семьдесят восемь",
      79 => "семьдесят девять",
      80 => "восемьдесят",
      81 => "восемьдесят один",
      82 => "восемьдесят два",
      83 => "восемьдесят три",
      84 => "восемьдесят четыре",
      85 => "восемьдесят пять",
      86 => "восемьдесят шесть",
      87 => "восемьдесят семь",
      88 => "восемьдесят восемь",
      89 => "восемьдесят девять",
      90 => "девяносто",
      91 => "девяносто один",
      92 => "девяносто два",
      93 => "девяносто три",
      94 => "девяносто четыре",
      95 => "девяносто пять",
      96 => "девяносто шесть",
      97 => "девяносто семь",
      98 => "девяносто восемь",
      99 => "девяносто девять",
      100 => "сто"
    }.freeze

    DATIVE_UNDER_HUNDRED = {
      0 => "нуля",
      1 => "одного",
      2 => "двух",
      3 => "трех",
      4 => "четырех",
      5 => "пяти",
      6 => "шести",
      7 => "семи",
      8 => "восьми",
      9 => "девяти",
      10 => "десяти",
      11 => "одиннадцати",
      12 => "двенадцати",
      13 => "тринадцати",
      14 => "четырнадцати",
      15 => "пятьнадцати",
      16 => "шестьнадцати",
      17 => "семьнадцати",
      18 => "восемьнадцати",
      19 => "девятьнадцати",
      20 => "двадцати",
      21 => "двадцати одного",
      22 => "двадцати двух",
      23 => "двадцати трех",
      24 => "двадцати четырех",
      25 => "двадцати пяти",
      26 => "двадцати шести",
      27 => "двадцати семи",
      28 => "двадцати восьми",
      29 => "двадцати девяти",
      30 => "тридцати",
      31 => "тридцати одного",
      32 => "тридцати двух",
      33 => "тридцати трех",
      34 => "тридцати четырех",
      35 => "тридцати пяти",
      36 => "тридцати шести",
      37 => "тридцати семи",
      38 => "тридцати восьми",
      39 => "тридцати девяти",
      40 => "сорока",
      41 => "сорока одного",
      42 => "сорока двух",
      43 => "сорока трех",
      44 => "сорока четырех",
      45 => "сорока пяти",
      46 => "сорока шести",
      47 => "сорока семи",
      48 => "сорока восьми",
      49 => "сорока девяти",
      50 => "пятидесяти",
      51 => "пятидесяти одного",
      52 => "пятидесяти двух",
      53 => "пятидесяти трех",
      54 => "пятидесяти четырех",
      55 => "пятидесяти пяти",
      56 => "пятидесяти шести",
      57 => "пятидесяти семи",
      58 => "пятидесяти восьми",
      59 => "пятидесяти девяти",
      60 => "шестидесяти",
      61 => "шестидесяти одного",
      62 => "шестидесяти двух",
      63 => "шестидесяти трех",
      64 => "шестидесяти четырех",
      65 => "шестидесяти пяти",
      66 => "шестидесяти шести",
      67 => "шестидесяти семи",
      68 => "шестидесяти восьми",
      69 => "шестидесяти девяти",
      70 => "семидесяти",
      71 => "семидесяти одного",
      72 => "семидесяти двух",
      73 => "семидесяти трех",
      74 => "семидесяти четырех",
      75 => "семидесяти пяти",
      76 => "семидесяти шести",
      77 => "семидесяти семи",
      78 => "семидесяти восьми",
      79 => "семидесяти девяти",
      80 => "восьмидесяти",
      81 => "восьмидесяти одного",
      82 => "восьмидесяти двух",
      83 => "восьмидесяти трех",
      84 => "восьмидесяти четырех",
      85 => "восьмидесяти пяти",
      86 => "восьмидесяти шести",
      87 => "восьмидесяти семи",
      88 => "восьмидесяти восьми",
      89 => "восьмидесяти девяти",
      90 => "девяноста",
      91 => "девяноста одного",
      92 => "девяноста двух",
      93 => "девяноста трех",
      94 => "девяноста четырех",
      95 => "девяноста пяти",
      96 => "девяноста шести",
      97 => "девяноста семи",
      98 => "девяноста восьми",
      99 => "девяноста девяти",
      100 => "ста"
    }.freeze
  end
end
