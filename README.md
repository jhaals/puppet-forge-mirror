# puppet-forge-mirror
simple tool that mirrors the Puppet Forge by downloading it's modules to a local folder on disk.
It queries the Puppet v3 API and download each module listed under `https://forgeapi.puppetlabs.com/v3/releases`.

A module is only downloaded if:

* less than 1MB - Some people put binary files in their modules
* The checksum from the API != checksum of the module already stored on disk.

Modules are structured `<author>/<modulename>/<author>-<modulename>-<version>.tar.gz>`

### Usage

    gem install puppet-forge-mirror

    $ puppet-forge-mirror /path/to/modules
    downloading https://forgeapi.puppetlabs.com/v3/files/example42-puppi-2.1.9.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/puppetlabs-postgresql-3.3.3.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/puppetlabs-stdlib-4.3.2.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/phundisk-spacewalk-0.1.2.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/puppetlabs-apache-1.0.1.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/puppetlabs-inifile-1.0.3.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/puppetlabs-puppetdb-3.0.1.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/yguenane-repoforge-0.1.0.tar.gz
    downloading https://forgeapi.puppetlabs.com/v3/files/puppetlabs-apt-1.2.0.tar.gz

### Why would I need this?
One example would be that you're running a huge infrastructure with a masterless Puppet setup.That could generate a several thousand requests which would make Puppetlabs servers very unhappy. Running a local cache internally would increase the download speed and reduce the upstream requests to the forge. The mirror script could for example run once a day and that would only generate ~ 300 HTTP requests.
