require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  render_views

  describe 'Browse in the static pages of Brazos Valley Food Bank' do
    context 'visit the home page of Brazos Valley Food Bank' do
      it 'should display the home page' do
        get :home

        expect(response).to render_template(:home)
        expect(response.status).to eq(200)

        expect(response.body).to match(/Donate at Brazos Valley Food Bank!/)
        expect(response.body).to match(/Sign up/)
        expect(response.body).not_to match(/Kai Zheng/)
      end
    end

    context 'visit the help page of Brazos Valley Food Bank' do
      it 'should display the help page' do
        get :help

        expect(response).to render_template(:help)
        expect(response.status).to eq(200)

        expect(response.body).to match(/Help/)
        expect(response.body).to match(/Please visit <[^\[\]]*>Brazos Valley Food Bank<[^\[\]]*> for more information./)
        expect(response.body).not_to match(/Kai Zheng/)
      end
    end

    context 'visit the about page of Brazos Valley Food Bank' do
      it 'should display the about page' do
        get :about

        expect(response).to render_template(:about)
        expect(response.status).to eq(200)

        expect(response.body).to match(/About/)
        expect(response.body).to match(/Please visit <[^\[\]]*>Brazos Valley Food Bank<[^\[\]]*> for more information./)
        expect(response.body).not_to match(/Kai Zheng/)
      end
    end

    context 'visit the contact page of Brazos Valley Food Bank' do
      it 'should display the contact page' do
        get :contact

        expect(response).to render_template(:contact)
        expect(response.status).to eq(200)

        expect(response.body).to match(/Contact/)
        expect(response.body).to match(/Please visit <[^\[\]]*>Brazos Valley Food Bank<[^\[\]]*> for more information./)
        expect(response.body).not_to match(/Kai Zheng/)
      end
    end
  end
end
