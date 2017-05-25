# frozen_string_literal: true
require_relative "../spec_helper"
RSpec.describe "UNDER_HUNDRED" do
  let(:subject) do
    ToRussianWords::UnderHundred::NOMINATIVE_UNDER_HUNDRED
  end

  it { is_expected.to be_a Hash }

  it "has all keys to be integers" do
    integer_class = 1.class # Fixnum before Ruby 2.4, Integer from Ruby 2.4
    expect(subject.keys.all? { |key| key.is_a? integer_class }).to be true
  end

  it "has all values to be strings" do
    expect(subject.values.all? { |value| value.is_a? String }).to be true
  end

  it "is expected to be frozen" do
    expect(subject.frozen?).to be true
  end
end
