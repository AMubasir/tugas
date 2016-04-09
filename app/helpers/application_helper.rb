module ApplicationHelper
	def status_converter(status, truthy: 'Ada', falsey: 'Disewa')
		if status
			truthy
		else
			falsey
		end
	end
end
