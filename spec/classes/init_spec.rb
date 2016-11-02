require 'spec_helper'

describe 'dirtycow' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      let(:facts) do
        facts
      end

      context "on #{os}" do
        it { is_expected.to create_class('dirtycow') }
        it { is_expected.to compile.with_all_deps }
      end
    end
  end
end
