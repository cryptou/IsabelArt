module ApplicationHelper

	def full_title(page_title)
		base_title = "Isabel'Art, Antics from China and Asia"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
