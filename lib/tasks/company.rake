desc "Check add time"
task :checktime => :environment do
	date = Date.today-365
	companys = Company.where("updated_at < ? and user_id = 1", date)
	companys.each do |company|
		puts "#{company.title} #{company.user.email} #{company.user.username}"
		CompanyMailer.outdated_company_email('denis@torr.by',company.user.username,company.title).deliver
	end
end