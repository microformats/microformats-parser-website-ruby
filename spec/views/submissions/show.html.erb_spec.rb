require 'rails_helper'

RSpec.describe 'submissions/show', type: :view do
  before do
    @submission = assign(:submission, Submission.create!(
                                        url: 'MyText',
                                        html: 'MyText',
                                        base_url: 'MyText',
                                        save_html: false,
                                        render_html_in_page: false
                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
