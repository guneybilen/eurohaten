module ApplicationHelper
    
  def language_selector
    if I18n.locale == :en
      link_to "Tr", url_for(:locale => 'tr')
    else
      link_to "En", url_for(:locale => 'en')
    end
  end
end


