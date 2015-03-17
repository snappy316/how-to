require "test_helper"

feature "Add a step to a list" do
  scenario "can add a step to a list" do
    visit list_path(lists(:one))
    click_on("New Step")
    fill_in("Content", with: "Another step")
    click_on("Create Step")
    page.text.must_include("Another step")
  end
end
