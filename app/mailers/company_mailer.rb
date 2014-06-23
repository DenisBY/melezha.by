class CompanyMailer < ActionMailer::Base
	def outdated_company_email(email,username,company_name)
		@company_name = company_name
		@username = username
	    mail(:to => email, :subject => "Обновление информации про #{@company_name} на Мележа.by", :from => "no-reply@melezha.by") do |format|
	        format.html(:content_type => "text/html", :charset => "UTF-8", :content_transfer_encoding => "7bit")
	    end
	end
end
