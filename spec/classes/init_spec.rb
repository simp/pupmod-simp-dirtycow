require 'spec_helper'

describe 'dirtycow' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do

        context 'with a vulnerable kernel' do
          let(:facts){
            facts.merge({
              :kernelrelease => '1.1.1-111.elX.x86_64'
          }) }

          it { is_expected.to create_class('dirtycow') }
          it { is_expected.to compile.with_all_deps }
          if ['RedHat','CentOS'].include?(facts[:operatingsystem])
            if facts[:operatingsystemmajrelease].to_s <= '6'
              it { is_expected.to contain_notify('EL6_dirtycow') }
              it { is_expected.to_not contain_notify('EL7_dirtycow') }
            else
              it { is_expected.to contain_notify('EL7_dirtycow') }
              it { is_expected.to_not contain_notify('EL6_dirtycow') }
            end
          end
        end

        context 'with a non-vulnerable kernel' do

          if ['RedHat','CentOS'].include?(facts[:operatingsystem])
            if facts[:operatingsystemmajrelease].to_s <= '6'
              let(:facts){
                facts.merge({
                  :kernelrelease => '2.6.32-642.6.2.el6.x86_64'
              }) }
              it { is_expected.to_not contain_notify('EL6_dirtycow') }
              it { is_expected.to_not contain_notify('EL7_dirtycow') }
            else
              let(:facts){
                facts.merge({
                  :kernelrelease => '3.10.0-327.36.3.el6.x86_64'
              }) }
              it { is_expected.to_not contain_notify('EL7_dirtycow') }
              it { is_expected.to_not contain_notify('EL6_dirtycow') }
            end
          end
        end
      end
    end
  end
end
