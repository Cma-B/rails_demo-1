feature 'User can create articles' do
    before do 
        visit root_path
        click_on 'New Article'
    end

    context 'Successfully create an article' do 
        before do 
            fill_in 'article_title', with: 'A girl who learned to code'
            fill_in 'article_content', with: 'And you will never believe what happened next!'
            click_on 'Save Article'
        end
    
        it 'User should be on article on show page' do
            article = Article.find_by(title: 'A girl who learned to code')
            expect(current_path).to eq article_path(article)
        end 

        it 'User should see success message' do 
            expect(page).to have_content 'Article was successfully created.'
        end

        it 'User should see article title' do
            expect(page).to have_content 'A girl who learned to code'
        end

        it 'User can see article content' do 
            expect(page).to have_content 'And you will never believe what happened next!'
        end
    end

    context 'User doesn\'t enter a title for the article' do
        before do 
            fill_in 'article_content', with: 'And you will never believe what happened next!'
            click_on 'Save Article'
        end

        it 'User should see error message' do
        expect(page).to have_content 'Title can\'t be blank'
        end
    end

    context 'User doesn\'t enter content for the article' do
        before do
            fill_in 'article_title', with: 'A girl who learned to code'
            click_on 'Save Article'
        end

        it 'User should see error message' do
            expect(page).to have_content 'Content can\'t be blank'
        end
    end
end