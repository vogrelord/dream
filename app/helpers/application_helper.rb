module ApplicationHelper
	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
		    no_intra_emphasis: true, 
		    hard_wrap: true,
		    enable_hardwrap: true,
		    fenced_code_blocks: true,   
		    disable_indented_code_blocks: true)
		return markdown.render(text).html_safe
	end
end
