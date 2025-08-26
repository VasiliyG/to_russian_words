# frozen_string_literal: true

require_relative "./under_hundred"
require_relative "./divisions"
require_relative "./russian_gender_labels"
module ToRussianWords
  module Utils
    include UnderHundred
    include Divisions
    include RussianGenderLabels

    def result_below_one_thousand(num, counter, russian_case)
      hundred, remaining = num.divmod(100)
      return higher_than_hundred(hundred, remaining, counter, russian_case) if hundred != 0

      if hundred == 0 && remaining != 0
        get_label(russian_case: russian_case, hundred: counter == 1 ? num : nil, counter: counter,
                  remaining: remaining)
      end
    end

    def higher_than_hundred(hundred, remaining, counter, russian_case)
      century = (hundred == 1 ? "" : get_label(russian_case: russian_case, hundred: hundred, remaining: hundred))
      if remaining != 0
        return century + "#{hundred_name(hundred,
                                         russian_case)} " + get_label(russian_case: russian_case, counter: counter,
                                                                      remaining: remaining)
      end
      century + "#{hundred_name(hundred, russian_case)} " if remaining == 0
    end

    def check_sign(num)
      num < 0 ? [num.abs, "negative "] : [num, ""]
    end

    def numerical?(num)
      Integer(num)
    rescue StandardError
      raise "A whole number is expected"
    end

    def under_hundred(russian_case, hundred = 0, counter = 0)
      case russian_case
      when "dative"
        if [1, 2].include?(hundred)
          [DATIVE_RUSSIAN_FEMALE_LABEL, DATIVE_UNDER_HUNDRED]
        else
          (
                if counter == 1
                  [DATIVE_RUSSIAN_FEMALE_LABEL, DATIVE_UNDER_HUNDRED]
                else
                  [DATIVE_UNDER_HUNDRED, DATIVE_UNDER_HUNDRED]
                end
              )
        end

      else
        if [1, 2].include?(hundred)
          [NOMINATIVE_RUSSIAN_FEMALE_LABEL, NOMINATIVE_UNDER_HUNDRED]
        else
          (
                if counter == 1
                  [NOMINATIVE_RUSSIAN_FEMALE_LABEL, NOMINATIVE_UNDER_HUNDRED]
                else
                  [NOMINATIVE_UNDER_HUNDRED, NOMINATIVE_UNDER_HUNDRED]
                end
              )
        end
      end
    end

    def get_label(russian_case:, remaining:, hundred: 0, counter: 0)
      female, male = under_hundred(russian_case, hundred, counter)
      res = female[remaining]
      res = male[remaining] if res.nil?
      res
    end

    def divisions(russian_case)
      case russian_case
      when "dative"
        DATIVE_DIVISIONS
      else
        NOMINATIVE_DIVISIONS
      end
    end

    def hundred_name(hundred, russian_case)
      case russian_case
      when "dative"
        if hundred == 1
          "ста"
        else
          "сот"
        end
      else
        if [1].include? hundred
          "сто"
        elsif hundred == 2
          "сти"
        elsif [3, 4].include?(hundred)
          "ста"
        else
          "сот"
        end
      end
    end

    def get_division(russian_case, counter, remaining)
      # binding.pry
      variants = divisions(russian_case)[counter]
      pluralize(remaining, *variants)
    end

    def pluralize(number, singular, few, plural)
      number = number.abs
      return plural if (11..14).include?(number % 100)

      case number % 10
      when 1 then singular
      when 2..4 then few
      else plural
      end
    end
  end
end
