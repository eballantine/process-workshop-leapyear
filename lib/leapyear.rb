class Leapyear

  attr_reader :year

  def initialize(year)
    @year = year
  end

  def leap_year?
    if @year % 400 == 0
      true
    elsif @year % 100 == 0 && @year % 400 != 0
      false
    elsif @year % 4 == 0 && @year % 100 != 0
      true
    else
      false
    end
  end

  def find_the_leaps(start_year, end_year)
    "HELLO!"
  end
end
