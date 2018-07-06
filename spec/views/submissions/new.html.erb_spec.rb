require 'rails_helper'

RSpec.describe 'submissions/new', type: :view do
  before do
    assign(:submission, Submission.new(
                          url: 'MyText',
                          html: 'MyText',
                          base_url: 'MyText',
                          save_html: false,
                          render_html_in_page: false
                        ))
  end

  it 'renders new submission form' do
    render

    assert_select 'form[action=?][method=?]', submissions_path, 'post' do
      assert_select 'textarea[name=?]', 'submission[url]'

      assert_select 'textarea[name=?]', 'submission[html]'

      assert_select 'textarea[name=?]', 'submission[base_url]'

      assert_select 'input[name=?]', 'submission[save_html]'

      assert_select 'input[name=?]', 'submission[render_html_in_page]'
    end
  end
end
