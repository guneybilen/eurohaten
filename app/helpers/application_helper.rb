module ApplicationHelper
    
  def language_selector
    if I18n.locale == :en
      link_to "Tr", url_for(:locale => 'tr')
    else
      link_to "En", url_for(:locale => 'en')
    end
  end
  
  def pdf_crtr(filename)
    file = temp.path
    File.open(file, 'r') do |f|
      send_data f.read.force_encoding('BINARY'), :filename => filename, :type => "application/pdf", :disposition => "attachment"
    end
    File.delete(file)
  end
end


