feature 'User can create articles' do
    before do 
        visit articles_index_path
    end

    context 'Successfully create an article' do 
        before do 
            click_on 'New Article'
            fill_in 'Title', with: 'Happy holidays'
            fill_in 'Content', with: 'Buy your gifts now'
            click_on 'Create article'
        end
    
        it 'User should bee article on show page' do
            visit articles_path
            article = Article.find_by(title: 'Happy holidays')
            expect(current_path).to eq article_path(article)
        end 
    end
end