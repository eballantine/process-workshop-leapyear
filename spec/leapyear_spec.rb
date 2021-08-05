require 'Leapyear'

describe Leapyear do
  describe '.initialize' do
    it 'should take 1 argument' do
      subject = described_class.new(2000)
      expect(subject).to have_attributes(:year => 2000)
    end
  end

  describe '.leap_year?' do
    it 'should return true given 2000' do
      subject = described_class.new(2000)
      expect(subject.leap_year?).to eq true
    end

    it 'should return true given 1970' do
      subject = described_class.new(1970)
      expect(subject.leap_year?).to eq false
    end

    it 'should return true given 1900' do
      subject = described_class.new(1900)
      expect(subject.leap_year?).to eq false
    end

    it 'should return true given 1988' do
      subject = described_class.new(1988)
      expect(subject.leap_year?).to eq true
    end

    it 'should return true given 1500' do
      subject = described_class.new(1500)
      expect(subject.leap_year?).to eq false
    end
  end

  describe '.find_the_leaps' do
    it 'should take 2 arguments' do
      subject = described_class.new(2021)
      expect(subject.find_the_leaps(2020, 2021)).to eq "HELLO!"
    end
  end
end