feature 'User can' do
    context 'edit and article' do
        before do
            create(:article, title: 'Some crispy news', content: 'Some breaking action')
            visit root_path
            click_on 'Edit'
        end

        it 'User can edit the content' do
            fill_in 'article_content', with: 'Cheez Doodles are now available with chocolate'
            click_on 'Update Article'
            expect(page).to have_content 'Cheez Doodles are now available with chocolate'
        end
    end
end