[![Build Status](https://travis-ci.org/byapparov/rzendesk.svg?branch=master)](https://travis-ci.org/byapparov/rzendesk)
[![codecov.io](https://codecov.io/github/byapparov/rzendesk/coverage.svg?branch=master)](https://codecov.io/github/byapparov/rzendesk?branch=master)

# rzendesk

Package provides easy access to data in Zendesk via incremental API.


To use the package you will need to set environment variables with admin zendesk user and password.

```R

# Environment variables required
Sys.setenv(ZENDESK_USER = ...)
Sys.setenv(ZENDESK_PASSWORD = ...)

```

To extract all users:

```R
# Here test is the subdomain of the zendesk account
users <- zdGetUsers("test", 0)
```

Supported fields:

+ id
+ email
+ created_at
+ update_at
+ role

To extract all ticktes:
```R
# To extract all tickets for "test" subdomain of the zendesk from the begining:
tickets <- zdGetTickets("test", 0)
```

Supported fields:

+ id
+ create_at
+ updated_at
+ type
+ status
+ subject


Use `updated_at` from the results to store increment as POSIX datetime.