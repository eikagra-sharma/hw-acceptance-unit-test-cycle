require 'rails_helper'

describe MoviesController, :type => :controller do
    
    describe "index page should render" do
      it 'should render successfully' do
        get :index
        assert :success
      end
      
      it 'should render the index view' do
        get :index
        expect(response).to render_template('index')
      end
    end
    
    describe 'GET new' do
      it 'should render successfully' do
        get :new
        assert :success
      end
      it 'should render the new view' do
        get :new
        expect(response).to render_template('new')
      end
    end
    
    describe "GET show" do
      movie = Movie.create
      
      it 'should render successfully' do
        get :show, :id => movie.id
        assert :success
      end
      it 'should render the show view' do
        get :show, :id => movie.id
        expect(response).to render_template('show')
      end
      it 'should display the right movie' do
        get :show, :id => movie.id
        expect(assigns(:movie)).to eq(movie)
      end
    end
    
    describe "POST create" do
      it "creates a new movie" do
        post :create, :movie => {:title => 'test movie', :rating => 'NC-17', :description => 'Best test movie ever!!', :release_date => '2010-10-20'}
        expect(assigns(:movie)).should_not be_nil
      end
    end
end