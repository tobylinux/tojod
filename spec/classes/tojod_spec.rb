require 'spec_helper'

describe 'tojod' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to contain_class('tojod::install') }
      it { is_expected.to contain_class('tojod::config') }
      it { is_expected.to contain_class('tojod::service') }

      case os_facts[:os_family]
      when 'Debian'
        it { is_expected.to contain_package('tojodeb').with_ensure('present') }
        it { is_expected.to contain_package('tojodeb').with_ensure('running') }
      when 'RedHat'
        it { is_expected.to contain_package('tojod').with_ensure('present') }
        it { is_expected.to contain_file('/etc/tojo/tojod.conf').with_ensure('directory') }
        it { is_expected.to contain_package('tojod').with_ensure('running') }


      it { is_expected.to compile }
    end
  end
end
