module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Brazos Valley Food Bank'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
end