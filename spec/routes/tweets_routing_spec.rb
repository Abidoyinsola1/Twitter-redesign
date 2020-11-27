require 'spec_helper'

RSpec.describe 'Routing', type: :routing do
  it 'routes to #index' do
    expect(get: '/tweets').to route_to('tweets#index')
  end
end
