module ApplicationHelper
    def time_now
        date = Time.now()
        "#{date.year} - #{date.month} - #{date.day}"
    end
end
