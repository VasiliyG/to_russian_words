# frozen_string_literal: true
require_relative './under_hundred.rb'
require_relative "./divisions.rb"
require_relative "./russian_gender_labels.rb"
module ToRussianWords
  module Utils
    include UnderHundred
    include Divisions
    include RussianGenderLabels

    def result_below_one_thousand(num, counter, russian_case)
      hundred, remaining = num.divmod(100)

      return higher_than_hundred(hundred, remaining, counter, russian_case) if hundred != 0
      under_hundred(russian_case, counter == 1 ? num : nil)[remaining] if hundred == 0 && remaining != 0
    end

    def higher_than_hundred(hundred, remaining, counter, russian_case)
      century = (hundred == 1 ? '' : under_hundred(russian_case, hundred)[hundred])
      if remaining != 0
        return century + "#{hundred_name(hundred, russian_case)} " + under_hundred(russian_case)[remaining]
      end
      return century + "#{hundred_name(hundred, russian_case)} " if remaining == 0
    end

    def check_sign(num)
      num < 0 ? [num.abs, 'negative '] : [num, '']
    end

    def numerical?(num)
      Integer(num)
    rescue
      raise 'A whole number is expected'
    end

    def under_hundred(russian_case, hundred = 0)
      case russian_case
      when 'dative'
        [1, 2].include?(hundred) ? DATIVE_RUSSIAN_FEMALE_LABEL : DATIVE_UNDER_HUNDRED
      else
        [1, 2].include?(hundred) ? NOMINATIVE_RUSSIAN_FEMALE_LABEL : NOMINATIVE_UNDER_HUNDRED
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

    def hundred_name(hundred, russian_case)
      case russian_case
      when 'dative'
        if hundred == 1
          'ста'
        else
          'сот'
        end
      else
        if [1, 4].include? hundred
          'сто'
        elsif hundred == 2
          'сти'
        elsif hundred == 3
          'ста'
        else
          'сот'
        end
      end
    end
  end
end
