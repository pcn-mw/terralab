provider "google" {
  credentials = "/home/paul/credentials.json"
}

#provider "gsuite" {
#  oauth_scopes = [
#    "https://www.googleapis.com/auth/admin.directory.group",
#    "https://www.googleapis.com/auth/admin.directory.user"
#  ]
#  credentials = "/home/paul/credentials.json"
#  impersonated_user_email = "paul@gaexample.net"
#}


# Top-level folder under an organization.
resource "google_folder" "Paul" {
  display_name = "Paul"
  parent     = "organizations/87223077497"
}

# Folder nested under another folder.
resource "google_folder" "CorporateIT" {
  display_name = "CorporateIT"
  parent     = "${google_folder.Paul.name}"
}

# Folder nested under another folder.
resource "google_folder" "Marketing" {
  display_name = "Marketing"
  parent     = "${google_folder.Paul.name}"
}

# Folder nested under another folder.
resource "google_folder" "eCommerce" {
  display_name = "eCommerce"
  parent     = "${google_folder.Paul.name}"
}

# Folder nested under another folder.
resource "google_folder" "Security" {
  display_name = "Security"
  parent     = "${google_folder.Paul.name}"
}

