# frozen_string_literal: true
require_relative './under_hundred.rb'
require_relative "./divisions.rb"
module ToRussianWords
  module Utils
    include UnderHundred
    include Divisions

    def result_below_one_thousand(num, counter, russian_case)
      hundred, remaining = num.divmod(100)

      return higher_than_hundred(hundred, remaining, counter, russian_case) if hundred != 0
      under_hundred(russian_case)[remaining] if hundred == 0 && remaining != 0
    end

    def higher_than_hundred(hundred, remaining, counter, russian_case)
      century = under_hundred(russian_case)[hundred]
      if remaining != 0
        return century + "#{hundred_name(russian_case)} " + under_hundred(russian_case)[remaining]
      end
      return century + "#{hundred_name(russian_case)} " if remaining == 0
    end

    def check_sign(num)
      num < 0 ? [num.abs, 'negative '] : [num, '']
    end

    def numerical?(num)
      Integer(num)
    rescue
      raise 'A whole number is expected'
    end

    def under_hundred(russian_case)
      case russian_case
      when 'dative'
        DATIVE_UNDER_HUNDRED
      else
        NOMINATIVE_UNDER_HUNDRED
      end
    end

    def divisions(russian_case)
      case russian_case
      when 'dative'
        DATIVE_DIVISIONS
      else
        NOMINATIVE_DIVISIONS
      end
    end

    def hundred_name(russian_case)
      case russian_case
      when 'dative'
        'сот'
      else
        'ста'
      end
    end
  end
end
