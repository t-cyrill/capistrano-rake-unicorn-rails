require 'spec_helper'

describe Capistrano::Rake::Unicorn::Rails do
  it 'has a version number' do
    expect(Capistrano::Rake::Unicorn::Rails::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
