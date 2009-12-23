class HomeController < ApplicationController

	def index
		@news = New.find(:all, :conditions => ["status = ?", 2], :order => "id desc")
	end

end
