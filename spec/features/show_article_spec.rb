require 'rails_helper'

RSpec.feature "Showing Article Specifications" do

  before do
    @article=Article.create(title: "The First Article",body: "Carpe Diem.")
  end

  scenario "User shows on article" do
    visit "/"

    click_link @article.title

    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))


  end
end