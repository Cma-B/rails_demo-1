feature 'User can create articles' do
    before do 
        visit root_path
        click_on 'New Article'
    end

    context 'Successfully create an article' do 
        before do 
            fill_in 'article_title', with: 'Happy holidays'
            fill_in 'article_content', with: 'Buy your gifts now'
            click_on 'Save Article'
        end
    
        it 'User should bee article on show page' do
            visit articles_path
            article = Article.find_by(title: 'Happy holidays')
            expect(current_path).to eq articles_path(article)
        end 
    end
end