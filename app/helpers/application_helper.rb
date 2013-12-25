module ApplicationHelper
  def full_title(page_title)
    res_title = "Ruby on Rails Tutorial Sample App"
    res_title = "#{res_title} | #{page_title}" if page_title.present?

    res_title
  end

  def set_pictures(image)
    result_image = "http://cs1578.vk.me/u14728709/33824754/x_cf3978fd.jpg"
    result_image = image if image.present?
    
    "<img src='#{result_image}' /><br />".html_safe
  end

  def time_zone(time)
    local_time = Time.now.utc + (60 * 60 * 4)
    local_time = time if time.present?
    
    local_time.strftime("at %I:%M %p on %m/%d/%Y")
  end
end
