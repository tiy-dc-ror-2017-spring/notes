module Wemo
  def self.on
    response = HTTParty.post(
      "https://maker.ifttt.com/trigger/wemo_on/with/key/gY-XtgrfuUybUYMVt4E6FQs6UtLhac2Il3uBQOhXwUg"
    )

    "Wemo said: \n\n#{response.body}"
  end

  def self.off
    response = HTTParty.post(
      "https://maker.ifttt.com/trigger/wemo_off/with/key/gY-XtgrfuUybUYMVt4E6FQs6UtLhac2Il3uBQOhXwUg"
    )

    "Wemo said: \n\n#{response.body}"
  end
end
