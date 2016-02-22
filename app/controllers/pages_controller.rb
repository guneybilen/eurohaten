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
end
