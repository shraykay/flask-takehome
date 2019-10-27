# Take Home - Python Flask SQLAlchemy Postgres Docker

### Setup

Takehome asssumes Docker/Docker Compose/*nix environment, unzip file and extract.

```sh
$ make build
$ make up
```

Open your browser and visit this [page](http://localhost:3000).

Confirm changes have been added to database:
```sh
$ make console
/app # apk add postgresql-client

/app # psql -h db -U postgres
<enter password as supersecret123>

postgres=# \c takehome

takehome=# select * from "user";
 id | username |       email
----+----------+-------------------
  1 | admin    | admin@example.com
(1 row)
```

Exit from console and clean up assets:
```sh
takehome=# exit
/app # exit
$ make destroy
```