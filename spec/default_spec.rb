require 'chefspec'
require 'chefspec/berkshelf'

describe 'xrdp::default' do

  let(:chef_run) do
    runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04')
    runner.converge('xrdp::default')
  end

  it 'should include the xrdp recipe by default' do
    expect(chef_run).to include_recipe 'xrdp::default'
  end

  it 'should include the server install recipe do' do
    expect(chef_run).to include_recipe 'xrdp::server'
  end

  context 'fedora' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'fedora', version: '24')
      runner.converge('xrdp::default')
    end

    it 'should include the server install recipe do' do
      expect(chef_run).to include_recipe 'xrdp::server'
    end
  end

end
