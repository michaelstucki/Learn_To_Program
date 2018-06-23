seconds_in_minute = 60             # => 60
minutes_in_hour = 60               # => 60
hours_in_day = 24                  # => 24
days_in_year = 365                 # => 365
authors_age_in_seconds = 1160.0e6  # => 1160000000.0

authors_age_in_years = authors_age_in_seconds / seconds_in_minute / minutes_in_hour / hours_in_day / days_in_year  # => 36.78335870116692
puts authors_age_in_years                                                                                          # => nil

# >> 36.78335870116692

