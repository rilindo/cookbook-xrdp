require 'chefspec'
require 'chefspec/berkshelf'

describe 'xrdp::server' do
  let(:chef_run) {
    runner = ChefSpec::SoloRunner.new('platform' => 'ubuntu', 'version'=> '12.04')
    runner.converge('xrdp::server')
  }

  it 'installs xrdp server' do
    expect(chef_run).to install_package 'xrdp'
  end

  it 'enables xrdp service' do
    expect(chef_run).to enable_service 'xrdp'
  end

  it 'starts xrdp service' do
    expect(chef_run).to start_service 'xrdp'
  end

end
