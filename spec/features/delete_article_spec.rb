require 'rails_helper'

RSpec.feature "Deleting and Article" do
  before do
    @article=Article.create(title: "Title of first article", body: "Body of the first article")

  end

  scenario "User deletes an article" do
    visit "/"

    click_link @article.title
    click_link "Delete Article"

    expect(page).to have_content("article has been deleted")
    expect(current_path).to eq(articles_path)
  end
end