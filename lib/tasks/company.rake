namespace :melezha do
  desc "Проверка давно не обновлявшихся компаний"
  task :checktime => :environment do
    date = Date.today-90
    companys = Company.where("updated_at < ?", date)
    companys.each do |company|
      puts "#{company.title} #{company.user.email} #{company.user.username}"
      CompanyMailer.outdated_company_email(company.user.email,company.user.username,company.title).deliver
    end
  end
end
