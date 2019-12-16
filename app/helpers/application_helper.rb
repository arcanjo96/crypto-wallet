module ApplicationHelper
  def date_format(date)
    date.strftime("%d de %B de %Y")
  end

  def locale(locale)
    I18n.locale == :en ? "Estados Unidos" : "Português Brasil"
  end
end
