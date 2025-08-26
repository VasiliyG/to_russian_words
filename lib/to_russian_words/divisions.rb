# frozen_string_literal: true

module ToRussianWords
  module Divisions
    NOMINATIVE_DIVISIONS = [
      ["", "", ""].freeze,
      %w(тысяча тысячи тысяч).freeze,
      %w(миллион миллиона миллионов).freeze,
      %w(миллиард миллиарда миллиардов).freeze,
      %w(триллион триллиона триллионов).freeze,
      %w(квадрильон квадрильона квадрильонов).freeze,
      %w(нониллион нониллиона нониллионов).freeze
    ].freeze

    DATIVE_DIVISIONS = [
      ["", "", ""].freeze,
      %w(тысячи тысяч тысяч).freeze,
      %w(миллиона миллионов миллионов).freeze,
      %w(миллиарда миллиардов миллиардов).freeze,
      %w(триллиона триллионов триллионов).freeze,
      %w(квадрильона квадрильонов квадрильонов).freeze,
      %w(нониллиона нониллионов нониллионов).freeze
    ].freeze
  end
end
