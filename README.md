cas-overlay
==================

This overlay configures Jasig CAS v4.0.0 for use with a LDAP server. Intended to test against Enterprise accounts.

Currently, this overlay is configured for LDAP Direct Bind. For configuration against an authenticated search or AD search, please refer to https://apereo.github.io/cas/4.2.x/installation/LDAP-Authentication.html to configure an alternate configuration manager.

# Versions
```xml
<cas.version>4.0.0</cas.version>
<cas-addons.version>1.12</cas-addons.version>
```

# Requirements
* Apache Maven 3
* Web Server (i.e. Apache Tomcat 7)

# Configuration
The `etc` directory contains the sample configuration files that would need to be copied to an external file system location (`/etc/cas` by default) and configured to satisfy local CAS installation needs. These are managed by Puppet in the `cas` module.

# Building
* Execute `mvn clean package`
* Copy the file over to `$CATALINA_HOME/conf/Catalina/localhost`
* Restart tomcat.
