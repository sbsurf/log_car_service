require 'spec_helper'

describe "service_records/index" do
  before(:each) do
    assign(:service_records, [
      stub_model(ServiceRecord,
        :service_type => ""
      ),
      stub_model(ServiceRecord,
        :service_type => ""
      )
    ])
  end

  it "renders a list of service_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
