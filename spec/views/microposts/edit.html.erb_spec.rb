require 'spec_helper'

describe "microposts/edit" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :email => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit micropost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", micropost_path(@micropost), "post" do
      assert_select "input#micropost_email[name=?]", "micropost[email]"
      assert_select "textarea#micropost_body[name=?]", "micropost[body]"
    end
  end
end
