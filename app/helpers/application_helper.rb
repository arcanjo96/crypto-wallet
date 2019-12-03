module ApplicationHelper
  def date_format(date)
    date.strftime("%d de %B de %Y")
  end
end
