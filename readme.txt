##  Install vagrant plugin
vagrant plugin install vagrant-bindfs

##  Get Composer
##  https://getcomposer.org/

##  Get Magento 2
./composer.phar create-project --repository-url=https://repo.magento.com/ magento/project-community-edition src
##  (Prompt username/password are Magento Marketplace Access Keys)

##  and finally...
vagrant up

##  automatically install Magento 2 with CLI by running the following command
vagrant ssh -c /vagrant/install.sh