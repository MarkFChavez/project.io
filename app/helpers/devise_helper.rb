module DeviseHelper

	def devise_error_messages!
	    return "" if resource.errors.empty?

	    messages = resource.errors.full_messages.map { |msg| content_tag(:div, msg) }.join

	    html = <<-HTML
	    <div id="error_explanation">
	      #{messages}
	    </div>
	    HTML

	    html.html_safe
  	end

end
