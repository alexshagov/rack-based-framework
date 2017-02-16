class Advice
  attr_reader :advice_list

  def initialize
    @advice_list = [
      'Be honest',
      'Work hard',
      'Sleep 8 hours'
    ]
  end

  def sample
    advice_list.sample
  end
end
