module ApplicationHelper
  
  def youtube_embed(url)
    content = "<iframe width='560' height='315' src='#{url_conver_to_embed(url)}' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>"
    content.html_safe
  end
  
  def url_conver_to_embed(url)
    url_id = url.split('/').last
    "https://www.youtube.com/embed/#{url_id}"
  end
  
end
