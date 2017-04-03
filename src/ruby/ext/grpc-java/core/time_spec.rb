class TimeSpec
  def initialize value
    @value = value
  end
  
  def to_time
    Time.at @value
  end
end
