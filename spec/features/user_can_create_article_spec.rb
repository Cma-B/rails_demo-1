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
    
        it 'User should be on article on show page' do
            article = Article.find_by(content: 'Buy your gifts now')
            expect(current_path).to eq article_path(article)
        end 

        it 'User should see success message' do 
            expect(page).to have_content 'Article was successfully created.'
        end
    end
end