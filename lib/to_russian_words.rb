# frozen_string_literal: true
module ToRussianWords
  require "to_russian_words/version"
  require_relative "./to_russian_words/under_hundred.rb"
  require_relative "./to_russian_words/divisions.rb"
  require_relative "./to_russian_words/utils.rb"

  include ToRussianWords::UnderHundred
  include ToRussianWords::Divisions
  include ToRussianWords::Utils

  def to_words(russian_case = 'nominative')
    to_russian_words(russian_case)
  end

  def to_russian_words(russian_case = 'nominative')
    num = numerical?(self)
    num, sign = check_sign(num)
    return (sign + under_hundred(russian_case)[num]) if num <= 100
    counter = 0
    result = []
    while num != 0
      num, remaining = num.divmod(1000)
      temp_result = result_below_one_thousand(remaining, counter, russian_case)
      result << temp_result + ' ' + divisions(russian_case)[counter][remaining.to_s.last.to_i] + ' ' if temp_result
      counter += 1
    end
    sign + result.reverse.join(' ').rstrip
  end
end

INTEGER_KLASS = 1.class # Fixnum before Ruby 2.4, Integer from Ruby 2.4
class INTEGER_KLASS
  include ToRussianWords
end

class String
  include ToRussianWords
end

class Fixnum
  include ToRussianWords
end
