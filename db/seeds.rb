require_relative '../config/environment.rb'


seed_data = [
    {user: "Greg Schmitt", task: "Tokyo has Hail", type: "Weather", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "New York is having a Thunderstorm", type: "Weather", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "Phoenix has Heavy Cloud", type: "Weather", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "Detroit is clear", type: "Weather", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "Los Angeles is clear", type: "Weather", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "Detroit has Heavy Rain", type: "Weather", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "San Francisco has Snow", type: "Weather", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "Pittsburgh has Hail", type: "Weather", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "Boston is having a Thunderstorm", type: "Weather", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "Tucson has Heavy Cloud", type: "Weather", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "Atlanta is clear", type: "Weather", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "Philadelphia is clear", type: "Weather", date_added: Date.current},
    {user: "Carl Reiser", task: "Detroit has Light Cloud", type: "Weather", date_added: Date.current},
    {user: "Greg Schmitt", task: "San Francisco has Light Rain", type: "Weather", date_added: Date.current},
    {user: "David Jones", task: "Pittsburgh has Snow", type: "Weather", date_added: Date.current},
    {user: "Tom Harkin", task: "Houston is having a Thunderstorm", type: "Weather", date_added: Date.current},
    {user: "George Sponson", task: "Los Angeles has Heavy Cloud", type: "Weather", date_added: Date.current},
    {user: "David Jones", task: "Chicago is clear", type: "Weather", date_added: Date.current},
    {user: "Tom Harkin", task: "Dallas is clear", type: "Weather", date_added: Date.current},
    {user: "George Sponson", task: "Las Vegas has Light Cloud", type: "Weather", date_added: Date.current},
    {user: "Greg Schmitt", task: "New York has Light Rain", type: "Weather", date_added: Date.current},
    {user: "Greg Schmitt", task: "AMZN is at 1237.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "TSLA is at 86.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "GM is at 92.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "GS is at 1200.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "SML is at 24.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "YHOO is at 128.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "BAC is at 34.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "GE is at 26.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "TWTR is at 39.50", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "AMZN is at 1237.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "TSLA is at 86.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "GM is at 92.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "GS is at 1200.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "SML is at 24.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "YHOO is at 128.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "BAC is at 34.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "GE is at 26.00", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "TWTR is at 39.50", type: "Stock Quote", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "AMZN is at 1237.00", type: "Stock Quote", date_added: Date.current},
    {user: "David Jones", task: "TSLA is at 86.00", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "GM is at 92.00", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "GS is at 1200.00", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "SML is at 24.00", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "YHOO is at 128.00", type: "Stock Quote", date_added: Date.current},
    {user: "Tom Harkin", task: "BAC is at 34.00", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "GE is at 26.00", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "TWTR is at 39.50", type: "Stock Quote", date_added: Date.current},
    {user: "David Jones", task: "AMZN is at 1237.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "TSLA is at 86.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "GM is at 92.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "GS is at 1200.00", type: "Stock Quote", date_added: Date.current},
    {user: "George Sponson", task: "SML is at 24.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "YHOO is at 128.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "BAC is at 34.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "GE is at 26.00", type: "Stock Quote", date_added: Date.current},
    {user: "Carl Reiser", task: "TWTR is at 39.50", type: "Stock Quote", date_added: Date.current},
    {user: "Greg Schmitt", task: "pickup laundry", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "fix toilet", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "buy milk", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "go to school play", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "meet girlfriend at 8", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "put gas in car", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "go for a run", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "call mom", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "walk the dog", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "wakeup early", type: "ToDo", date_added: Date.current},
    {user: "Greg Schmitt", task: "play basketball", type: "ToDo", date_added: Date.yesterday},
    {user: "Greg Schmitt", task: "drive kid to school", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "watch Game of Thrones", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "rake leaves for mom", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "fix broken window", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "write resume", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "update LinkedIN", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "meet Bob for drinks", type: "ToDo", date_added: Date.yesterday},
    {user: "Carl Reiser", task: "send resumes out", type: "ToDo", date_added: Date.current},
    {user: "Carl Reiser", task: "meet girlfriend for dinner", type: "ToDo", date_added: Date.current},
    {user: "Carl Reiser", task: "check-in with flatiron career coach", type: "ToDo", date_added: Date.current},
    {user: "Carl Reiser", task: "wash the car", type: "ToDo", date_added: Date.current},
    {user: "Carl Reiser", task: "call Gieco for insurance quote", type: "ToDo", date_added: Date.current},
    {user: "David Jones", task: "put gas in car", type: "ToDo", date_added: Date.yesterday},
    {user: "Tom Harkin", task: "go for a run", type: "ToDo", date_added: Date.yesterday},
    {user: "George Sponson", task: "call mom", type: "ToDo", date_added: Date.yesterday},
    {user: "Tom Harkin", task: "walk the dog", type: "ToDo", date_added: Date.yesterday},
    {user: "David Jones", task: "wakeup early", type: "ToDo", date_added: Date.current},
    {user: "David Jones", task: "rake leaves for mom", type: "ToDo", date_added: Date.current},
    {user: "Tom Harkin", task: "fix broken window", type: "ToDo", date_added: Date.current},
    {user: "George Sponson", task: "write resume", type: "ToDo", date_added: Date.current},
    {user: "Tom Harkin", task: "update LinkedIN", type: "ToDo", date_added: Date.current},
    {user: "Tom Harkin", task: "meet Bob for drinks", type: "ToDo", date_added: Date.current},
    {user: "Carl Reiser", task: "send resumes out", type: "ToDo", date_added: Date.current},
    {user: "Carl Reiser", task: "meet girlfriend for dinner", type: "ToDo", date_added: Date.current}
  ]

seed_data.each do |data|
  User.update_db(data[:user], data[:task], data[:type], data[:date_added])
end