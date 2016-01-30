module ApplicationHelper
  
  def render_nav_link(label, path)
    return link_to label, path, class: request.url.include?(path) ? "active" : ""
  end
  
end
