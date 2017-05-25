# frozen_string_literal: true
require_relative "../spec_helper"
RSpec.describe "DIVISIONS" do
  let(:subject) do
    ToRussianWords::Divisions::NOMINATIVE_DIVISIONS
  end

  it { is_expected.to be_a Array }

  it "has 7 items" do
    expect(subject.length).to eq 7
  end

  it "has '' at index 0" do
    expect(subject[0]).to eq ""
  end

  it "is expected to be frozen" do
    expect(subject.frozen?).to be true
  end
end
