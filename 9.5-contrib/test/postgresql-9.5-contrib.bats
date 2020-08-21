#!/usr/bin/env bats

source "${BATS_TEST_DIRNAME}/test_helper.sh"

@test "It should install PostgreSQL 9.5.22" {
  /usr/lib/postgresql/9.5/bin/postgres --version | grep "9.5.22"
}

@test "It should support tds_fdw" {
  initialize_and_start_pg
  sudo -u postgres psql --command "CREATE EXTENSION tds_fdw;"
}

@test "This image needs to forever support PostGIS 2.2" {
  run dpkg --status  postgresql-9.5-postgis-2.2

  [[ "$output" =~ "Status: install ok installed" ]]
}
