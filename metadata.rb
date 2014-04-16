maintainer        "batdevis"
maintainer_email  "batdevis@gmail.com"
license           "Apache 2.0"
description       "Installs arbitrary packges with apt-get install"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"
recipe            "apt-get_install", "Installs apt packages"

%w{ ubuntu debian }.each do |os|
  supports os
end

%w{ runit }.each do |cb|
  depends cb
end
