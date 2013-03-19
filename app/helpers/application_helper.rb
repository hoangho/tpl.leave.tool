module ApplicationHelper
	def full_title(page_title)
		base_title = "Leave Tool"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"	
		end
	end

	def military_hour_to_civil_hour(hour)
	  	mod = (hour % 12)
	  	mod + (12 * (mod > 0 ? 0 : 1))
	end
	Date::DATE_FORMATS[:abc] = lambda {|d| "#{d.month}/#{d.day}/#{d.year}" }

end
