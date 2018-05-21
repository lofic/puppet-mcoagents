metadata :name        => "clean",
         :description => "Maintenance tasks for test VMs",
         :author      => "Louis Coilliot",
         :license     => "Apache License 2.0",
         :version     => "1.0.0",
         :url         => "http://www.example.com",
         :timeout     => 60

action "logs", :description => "Clean logs" do
    display :always
end

action "filebucket", :description => "Clean Puppet filebucket" do
    display :always
end

action "all", :description => "Clean all" do
    display :always
end
