feature 'User can create articles' do
    before do 
        visit root_path
        click_on "New Article"
    end

    context 'Successfully create an article' do 
        before do 
            fill_in 'Title', with: 'Happy holidays'
            fill_in 'Content', with: 'Buy your gifts now'
            click_on 'Create article'
        end

        it 'User should see article on show page' do
            article = Article.find_by(title: 'Happy holidays')
            expect(current_path).to eq article_path(article)
        end
    end
end