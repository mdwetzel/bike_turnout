module ApplicationHelper
  def flash_class(level)
      case level
          when :notice then "alert alert-info"
          when :success then "alert alert-success"
          when :error then "alert alert-error"
          when :alert then "alert alert-error"
      end
  end
  
  def full_title(page_title)
    base_title = "BikeTurnout"
    
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
