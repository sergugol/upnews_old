module ApplicationHelper

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == @sort_column) ? "sort #{@sort_direction}" : nil
    direction = (column == @sort_column && @sort_direction == "ASC") ? "DESC" : "ASC"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end

end



