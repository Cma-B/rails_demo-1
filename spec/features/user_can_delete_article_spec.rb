feature 'User can' do
    context 'delete an article' do
        before do
            create(:article, title: 'Some crispy news', content: 'Cheez doodles are now available with chocolate')
            visit root_path
        end

        it 'Delete specific article' do
            click_on 'Delete'
            expect(page).to_not have_content 'Some crispy news'
        end
    end
end