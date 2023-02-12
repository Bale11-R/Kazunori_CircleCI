require 'spec_helper'

describe package('git') do
    it { should be_installed }
end

describe service('nginx') do
    it { should be_running }
end

describe command("ps aux | grep unicorn" ) do
    its(:stdout) { should contain("unicorn_rails master") }
end

describe port(80) do
    it { should be_listening }
end
