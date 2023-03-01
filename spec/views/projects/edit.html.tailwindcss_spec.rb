require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:user) { User.create!(email: "test@gmail.com", password: "123456") }
  let(:project) {
    Project.create!(
      name: "MyString",
      description: "MyText",
      status: "MyString",
      user: user
    )
  }

  before(:each) do
    assign(:project, project)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

      assert_select "input[name=?]", "project[name]"

      assert_select "textarea[name=?]", "project[description]"

      assert_select "input[name=?]", "project[status]"
    end
  end
end
