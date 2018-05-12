# feature test - articles controller
require 'rails_helper'

describe 'user sees all articles' do
  context 'they visit /articles' do
    it 'displays all articles' do
      article1 = Article.create!(title: 'Title 1', body: 'Body 1')
      article2 = Article.create!(title: 'Title 2', body: 'Body 2')
      new_article_button = 'Create a New Article'

      visit '/articles'

      expect(page).to have_link(article1.title)
      expect(page).to have_link(article2.title)
      expect(page).to have_link(new_article_button)
    end
  end
end
