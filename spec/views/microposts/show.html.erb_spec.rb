require 'spec_helper'

describe "microposts/show" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :email => "Email",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
  end
end
