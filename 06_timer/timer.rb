class Timer
  def initialize seconds = 0
    @seconds = seconds
  end

  def seconds
    @seconds
  end
  def seconds=(seconds)
    @seconds = seconds
  end

  def padded seconds
    "%02d" % seconds
  end

  def time_string
    hours = padded @seconds.divmod(3600)
    minutes = padded (@seconds % 3600).divmod(60)
    seconds = padded ((@seconds % 3600) % 60)

    "#{hours}:#{minutes}:#{seconds}"
  end
end

timer = Timer.new 4000
puts timer.time_string
