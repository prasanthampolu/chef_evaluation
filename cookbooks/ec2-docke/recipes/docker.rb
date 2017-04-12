docker_service 'default' do
  action [:create, :start]
end

docker_image 'jenkins' do
  action :pull
end

docker_container 'own-container' do
  repo 'jenkins'
  port '8080:8080'
  command "docker run -p 8080:8080 --name=jenkins-master -d jenkins"
end