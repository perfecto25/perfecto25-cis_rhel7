require 'spec_helper'
describe 'cis_rhel7' do

  context 'with default values for all parameters' do
    it { should contain_class('cis_rhel7') }
  end
end
