##  Install vagrant plugin
vagrant plugin install vagrant-bindfs

##  Get Composer
##  https://getcomposer.org/

##  Get Magento2
./composer.phar create-project --repository-url=https://repo.magento.com/ magento/project-community-edition src
##  (Username/Password are Magento Marketplace Access Keys)

##  and finally...
vagrant up
