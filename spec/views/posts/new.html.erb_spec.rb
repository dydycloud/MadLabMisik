require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :name => "MyString",
      :title => "MyString",
      :content => "MyText",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_name", :name => "post[name]"
      assert_select "input#post_title", :name => "post[title]"
      assert_select "textarea#post_content", :name => "post[content]"
      assert_select "textarea#post_description", :name => "post[description]"
    end
  end
end
