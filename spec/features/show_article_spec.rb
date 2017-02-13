require 'rails_helper'

RSpec.feature "Showing Article Specifications" do

  before do
    john= User.create(email: "john@example.com", password: "password")
    login_as(john)
    @article=Article.create(title: "The First Article",body: "Carpe Diem.", user: john)
  end

  scenario "User shows on article" do
    visit "/"

    click_link @article.title

    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))


  end
end