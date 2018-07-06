require 'rails_helper'

RSpec.describe 'submissions/edit', type: :view do
  before do
    @submission = assign(:submission, Submission.create!(
                                        url: 'MyText',
                                        html: 'MyText',
                                        base_url: 'MyText',
                                        save_html: false,
                                        render_html_in_page: false
                                      ))
  end

  it 'renders the edit submission form' do
    render

    assert_select 'form[action=?][method=?]', submission_path(@submission), 'post' do
      assert_select 'textarea[name=?]', 'submission[url]'

      assert_select 'textarea[name=?]', 'submission[html]'

      assert_select 'textarea[name=?]', 'submission[base_url]'

      assert_select 'input[name=?]', 'submission[save_html]'

      assert_select 'input[name=?]', 'submission[render_html_in_page]'
    end
  end
end
