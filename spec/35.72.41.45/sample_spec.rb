require 'spec_helper'

listen_port = 8080

describe package('git') do
    it { should be_installed }
end

describe service('nginx') do
    it { should be_running }
end

describe command("ps aux | grep unicorn" ) do
    its(:stdout) { should contain("unicorn master") }
end

describe port(listen_port) do
    it { should be_listening }
end
