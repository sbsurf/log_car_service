require 'spec_helper'

describe "service_records/edit" do
  before(:each) do
    @service_record = assign(:service_record, stub_model(ServiceRecord,
      :service_type => ""
    ))
  end

  it "renders the edit service_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_record_path(@service_record), "post" do
      assert_select "input#service_record_service_type[name=?]", "service_record[service_type]"
    end
  end
end
