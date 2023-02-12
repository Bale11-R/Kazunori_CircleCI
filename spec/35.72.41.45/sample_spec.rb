require 'spec_helper'

listen_port = 80

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

describe command('curl http://kurata-alb-02-190809292.ap-northeast-1.elb.amazonaws.com/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
