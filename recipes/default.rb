case node['platform']
  when "ubuntu","debian"
    unless node['packages'].blank?
      node['packages'].each do |pck|
        package pck do
          action :install
        end
      end
    end
end
