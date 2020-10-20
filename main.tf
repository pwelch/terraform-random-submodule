resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

output "random" {
  value = random_id.random.hex
}

module "random" {
  source = "./modules"
  string_length = 10
}

output "module-random" {
  value = module.random.random_string
}