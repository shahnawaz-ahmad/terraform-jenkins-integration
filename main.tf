resource "local_file" pet {
    filename = "/home/osboxes/codeplayground/terraform-jenkins-integration/pets.txt"
    content = "We love pets!"
}

resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = "."
    length = 1
}