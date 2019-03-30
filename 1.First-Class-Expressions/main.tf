resource "random_uuid" "test" {}

resource "local_file" "foo" {
  content  = random_uuid.test.result
  filename = "./foo.foo"
}

resource "local_file" "interpolation" {
  content  = "${random_uuid.test.result}-test"
  filename = "./interpolation.foo"
}

resource "random_uuid" "array" {
  count = 2
}

resource "local_file" "array" {
  content  = join("\n",random_uuid.array[*].result)
  filename = "./array.foo"
}
