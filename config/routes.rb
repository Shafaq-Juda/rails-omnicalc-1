Rails.application.routes.draw do
  get("/", {:controller=>"pages", :action=>"square"})
  get("/square/new", {:controller=>"pages", :action=>"square"})
  get("/square_root/new", {:controller=>"pages", :action=>"square_root"})
  get("/payment/new", {:controller=>"pages", :action=>"payment"})
  get("/random/new", {:controller=>"pages", :action=>"random"})
  get("/square/results", {:controller=>"pages", :action=>"square_results"})
  get("/square_root/results", {:controller=>"pages", :action=>"square_root_results"})
  get("/payment/results", {:controller=>"pages", :action=>"payment_results"})
  get("/random/results", {:controller=>"pages", :action=>"random_results"})
end
