class PagesController < ApplicationController
    
    def main
    end
    
    def pdf1
      send_file("#{Rails.root}/public/haten_katalog_brief.pdf", :type => 'application/pdf', :disposition => 'inline')
    end

    def pdf2
      send_file("#{Rails.root}/public/haten_katalog_main.pdf", :type => 'application/pdf', :disposition => 'inline')
    end
    
    def other_amenities
      @id = params[:id]
    end
    
    def slippers 
    end 
    
    def soaps
    end
    
    def profile
      setter("profile")
    end 
    
    def production 
      setter("production")
    end
    
    def vandm 
      setter("vandm")
    end
    
    def contact_us
      setter("contact_us")
    end 
    
    def setter(n)
      if I18n.locale == 'en'
        render "#{n}.en.html.erb"
      elsif I18n.locale == 'tr'
        render "#{n}.tr.html.erb"
      end
    end
    
end
