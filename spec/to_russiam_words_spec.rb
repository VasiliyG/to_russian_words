# frozen_string_literal: true

require_relative "spec_helper"
RSpec.describe "to_russian_word" do
  context "#to_word" do
    it "converts 1 to `один`" do
      expect(1.to_russian_words).to eq("один")
    end

    it "converts '1' to `один`" do
      expect("1".to_russian_words).to eq("один")
    end

    it "raises error for non-numerical string '1d'" do
      expect { "1d".to_russian_words }.to raise_error "A whole number is expected"
    end

    it "raises error for non-numerical string 'd1'" do
      expect { "d1".to_russian_words }.to raise_error "A whole number is expected"
    end

    it "it extends Fixnum / Integer methods" do
      # Fixnum before Ruby 2.4, Integer from Ruby 2.4
      expect(1.methods).to include :to_russian_words
    end

    it "converts 123 to `сто двадцать три`" do
      expect(123.to_russian_words).to eq("сто двадцать три")
    end

    it "converts 1234 to `одна тысяча двести тридцать четыре`" do
      expect(1234.to_russian_words).to eq("одна тысяча двести тридцать четыре")
    end

    it "converts 12345 to `двенадцать тысяч триста сорок пять`" do
      expect(12_345.to_russian_words).to eq("двенадцать тысяч триста сорок пять")
    end

    it "converts 122456 to `сто двадцать две тысячи четыреста пятьдесят шесть`" do
      expect(122_456.to_russian_words).to eq("сто двадцать две тысячи четыреста пятьдесят шесть")
    end
    it "converts 41234 to `сорок одна тысяча двести тридцать четыре`" do
      expect(41_234.to_russian_words).to eq("сорок одна тысяча двести тридцать четыре")
    end

    it "converts 42234 to `сорок две тысячи двести тридцать четыре`" do
      expect(42_234.to_russian_words).to eq("сорок две тысячи двести тридцать четыре")
    end

    it "converts 21021021 to `двадцать один миллион двадцать одна тысяча двадцать один`" do
      expect(21_021_021.to_russian_words).to eq("двадцать один миллион двадцать одна тысяча двадцать один")
    end

    it "converts 2021021 to `два миллиона двадцать одна тысяча двадцать один`" do
      expect(2_021_021.to_russian_words).to eq("два миллиона двадцать одна тысяча двадцать один")
    end
  end

  context "#to_words('dative')" do
    it "converts 20 to 'двадцати'" do
      expect(20.to_russian_words("dative")).to eq("двадцати")
    end
    it "converts 21 to 'двадцати одного'" do
      expect(21.to_russian_words("dative")).to eq("двадцати одного")
    end
    it "converts 22 to 'двадцати двух'" do
      expect(22.to_russian_words("dative")).to eq("двадцати двух")
    end
    it "converts 23 to 'двадцати трех'" do
      expect(23.to_russian_words("dative")).to eq("двадцати трех")
    end
    it 'converts 21021021 to "двадцати одного миллиона двадцати одной тысячи двадцати одного"' do
      expect(21_021_021.to_russian_words("dative")).to eq("двадцати одного миллиона двадцати одной тысячи двадцати одного")
    end

    it 'converts 12012012 to "двенадцати миллионов двенадцати тысяч двенадцати"' do
      expect(12_012_012.to_russian_words("dative")).to eq("двенадцати миллионов двенадцати тысяч двенадцати")
    end
  end
end
