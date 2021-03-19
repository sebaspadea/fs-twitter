module CovidsHelper
  def home
      @data = JSON.parse(RestClient.get "https://api.covid19api.com/live/country/argentina/status/confirmed/date/2020-03-21T13:13:30Z")
  end
  
  def fetch_country
    RestClient.get "https://api.covid19api.com/live/country/argentina/status/confirmed/date/2020-03-21T13:13:30Z"
  end
end

