require 'rails_helper'
require 'movies_helper'

describe MoviesHelper do
    describe "oddness works" do
      it 'should find 5 is odd' do
        val = MoviesHelper.oddness 5
        val.match? "odd"
      end
  end
end