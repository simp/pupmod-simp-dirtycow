[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html) [![Build Status](https://travis-ci.org/simp/pupmod-simp-dirtycow.svg)](https://travis-ci.org/simp/pupmod-simp-dirtycow) [![SIMP compatibility](https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg)](https://img.shields.io/badge/SIMP%20compatibility-4.2.*%2F5.1.*-orange.svg)

1. [Overview](#overview)
2. [Usage - The basics of getting started with simp-dirtycow](#usage)
3. [Limitations - OS compatibility, etc.](#limitations)
4. [Development - Guide for contributing to the module](#development)

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
classes:
  - 'dirtycow'
```

## Limitations

Currently this has only been tested with RedHat 7.

## Development

Please see the [SIMP Contribution Guidelines](https://simp-project.atlassian.net/wiki/display/SD/Contributing+to+SIMP).

General developer documentation can be found on
[Confluence](https://simp-project.atlassian.net/wiki/display/SD/SIMP+Development+Home).
Visit the project homepage on [GitHub](https://simp-project.com),
chat with us on our [HipChat](https://simp-project.hipchat.com/),
and look at our issues on  [JIRA](https://simp-project.atlassian.net/).

