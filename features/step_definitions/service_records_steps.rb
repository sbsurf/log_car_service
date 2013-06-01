Given(/^car service records exist$/) do
  service_type = ServiceType.create!(:name => 'Oil change')
  ServiceRecord.create!(:service_type_id => service_type.id, :mileage => 155000, :notes => "5W30 6Qts")
end

When(/^the user browses to the index page$/) do
  visit service_records_path
  #save_and_open_page
end

Then(/^all service records should be listed$/) do
  page.should have_content("Oil change")
  page.should have_content("155,000")
  page.should have_content("5W30 6Qts")
end