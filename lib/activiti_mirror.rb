require "activiti_mirror/version"
require 'sshkit'
require 'sshkit/dsl'

module ActivitiMirror
  include SSHKit::DSL 
  
  def download_activiti_by_version(hosts, version = '5.18.0')
    activiti_filename = "activiti-#{version}.zip"
    activiti_url = "https://github.com/Activiti/Activiti/releases/download/activiti-#{version}/#{activiti_filename}"
  
    on hosts, in: :sequence, wait: 5 do |host|
      unless test("[ -f activiti/#{activiti_filename}  ]")
        within "activiti" do
          execute(:wget, activiti_url)
        end
      else
        puts capture(:echo, "#{activiti_filename} is exists, it cannot be download again!!!")
      end
      puts capture("source /etc/profile.d/rvm.sh; cd ~/activiti; bbs_uploader ./#{activiti_filename}")
    end
  end
  
  def command(options = {})
    hosts = options.delete(:hosts) || %w{root@188.166.209.243} 
    version = options.delete(:version)
    
    download_activiti_by_version hosts, version
  end
  
  extend self
end
