require 'test_helper'

describe OmniAuth::Strategies::Carepass do
  let(:carepass) do
    OmniAuth::Strategies::Carepass.new({})
  end

  it 'has correct site' do
    carepass.options.client_options.site.must_equal("https://www.carepass.com/carepass")
  end

  it 'has correct authorize url' do
    carepass.options.client_options.authorize_url.must_equal('https://www.carepass.com/carepass/oauth/authorize')
  end

  it 'has correct token url' do
    carepass.options.client_options.token_url.must_equal('https://www.carepass.com/carepass/oauth/token')
  end
end
