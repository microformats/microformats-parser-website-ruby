require 'rails_helper'

RSpec.describe 'submissions/show', type: :view do
  before do
    @submission = assign(:submission, Submission.create!(
                                        html: 'MyText',
                                        base_url: 'MyText',
                                        save_html: false,
                                        render_html_in_page: false
                                      ))
  end

  it 'renders attributes in <p>' do
    render

    assert_select 'form[action=?][method=?]', submission_path(@submission.id), 'post' do
      assert_select 'textarea[name=?]', 'submission[html]'

      assert_select 'input[name=?][value=?]', 'submission[base_url]', 'MyText'

      assert_select 'textarea[name=?]', 'submission[json]'
    end
  end
end
