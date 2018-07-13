[![License](https://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/73/badge)](https://bestpractices.coreinfrastructure.org/projects/73)
[![Puppet Forge](https://img.shields.io/puppetforge/v/simp/dirtycow.svg)](https://forge.puppetlabs.com/simp/dirtycow)
[![Puppet Forge Downloads](https://img.shields.io/puppetforge/dt/simp/dirtycow.svg)](https://forge.puppetlabs.com/simp/dirtycow)
[![Build Status](https://travis-ci.org/simp/pupmod-simp-dirtycow.svg)](https://travis-ci.org/simp/pupmod-simp-dirtycow)

1. [Overview](#overview)
2. [Usage - The basics of getting started with simp-dirtycow](#usage)
3. [Development - Guide for contributing to the module](#development)

## Overview

In October 2016, a privilege escalation vulnerability was discovered
in the Linux kernel.  It has been given the name "Dirty Cow" and
assigned a Common Vulnerability and Exposures (CVE) number
[CVE-2016-5195](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-5195).

This module checks your running kernel to determine if it is vulnerable
to Dirty Cow.  A puppet notice is logged if it is vulnerable.

## Usage

Add the following to Hiera:

```
yaml
---
include 'dirtycow'
```

## Development

Please see the [SIMP Contribution Guidelines](https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP).

General developer documentation can be found on
[Confluence](https://simp-project.atlassian.net/wiki/display/SD/SIMP+Development+Home).
Visit the project homepage on [GitHub](https://simp-project.com),
chat with us on our [HipChat](https://simp-project.hipchat.com/),
and look at our issues on  [JIRA](https://simp-project.atlassian.net/).
