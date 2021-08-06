# frozen_string_literal: true
require 'rspec'
require_relative '../palindrome'

describe Palindrome do
  describe 'is_palindrome_permutation?' do
    subject { Palindrome.is_palindrome_permutation?(string) }

    context 'when has multiple letters' do
      let(:string) { 'aabbcccd' }

      it { is_expected.to be false }
    end

    context 'when is even' do
      let(:string) { "abba" }

      it { is_expected.to be true }
    end

    context 'when is character' do
      let(:string) { "a" }

      it { is_expected.to be true }
    end

    context 'when is taco_cat' do
      let(:string) { "Taco Cat" }

      it { is_expected.to be true }
    end

    context 'when is amore_roma' do
      let(:string) { "Amore, Roma." }

      it { is_expected.to be true }
    end

    context 'when is ozzy_rat' do
      let(:string) { "Oozy rat in a sanitary zoo" }

      it { is_expected.to be true }
    end

    context 'when is bad_eyesight' do
      let(:string) { "Was it a car or a cat I saw?" }

      it { is_expected.to be true }
    end

    context 'when is taco_cat' do
      let(:string) { "CTacoat" }

      it { is_expected.to be true }
    end

    context 'when is foobar' do
      let(:string) { "Foo Bar" }

      it { is_expected.to be false }
    end

    context 'when is obvious' do
      let(:string) { "Obviously this is not a palindrome." }

      it { is_expected.to be false }
    end
  end
end
