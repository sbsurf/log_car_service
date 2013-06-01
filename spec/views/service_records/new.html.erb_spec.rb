require 'spec_helper'

describe "service_records/new" do
  before(:each) do
    assign(:service_record, stub_model(ServiceRecord,
      :service_type => ""
    ).as_new_record)
  end

  it "renders new service_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_records_path, "post" do
      assert_select "input#service_record_service_type[name=?]", "service_record[service_type]"
    end
  end
end
