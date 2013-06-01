require 'spec_helper'

describe "service_records/show" do
  before(:each) do
    @service_record = assign(:service_record, stub_model(ServiceRecord,
      :service_type => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
