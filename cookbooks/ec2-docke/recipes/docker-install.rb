execute 'yum' do
  cwd '/home/ec2-user'
  command 'yum update -y'
end

execute 'yum' do
  cwd '/home/ec2-user'
  command 'yum install -y yum-utils'
end

execute 'yum' do
  cwd '/home/ec2-user'
  command 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'
end

execute 'yum' do 
  cwd '/home/ec2-user'
  command 'yum makecache fast'
end
  
execute 'yum' do
  cwd '/home/ec2-user'
  command 'yum install docker-ce'
end

template '/etc/systemd/system/docker.service.d/docker.conf' do
  source 'docker.conf.erb'
end
		