# def time_string(t)
#   Time.at(t).utc.strftime("%H:%M:%S")
# end

def time_string(t)
  seconde = t%60
  if seconde < 10 
    seconde = "0" + seconde.to_s end
  
  minutes = (t/60) %60
  if minutes < 10 
    minutes = "0" + minutes.to_s end

  hours = t/3600
  if hours < 10
    hours = "0" + hours.to_s end
    return "#{hours}:#{minutes}:#{seconde}"
end
