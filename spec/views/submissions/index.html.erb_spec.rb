require 'rails_helper'

RSpec.describe "submissions/index", type: :view do
  before(:each) do
    assign(:submissions, [
      Submission.create!(
        :url => "MyText",
        :html => "MyText",
        :base_url => "MyText",
        :save_html => false,
        :render_html_in_page => false
      ),
      Submission.create!(
        :url => "MyText",
        :html => "MyText",
        :base_url => "MyText",
        :save_html => false,
        :render_html_in_page => false
      )
    ])
  end

  it "renders a list of submissions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
