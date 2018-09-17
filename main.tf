

provider "gsuite" {
  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.group",
    "https://www.googleapis.com/auth/admin.directory.user"
  ]
  credentials = "/Users/paul/credentials.json"
  impersonated_user_email = "paul@gaexample.net"
}

provider "google" {
  credentials = "/Users/paul/credentials.json"
}
# Top-level folder under an organization.
resource "google_folder" "Paul" {
  display_name = "Paul"
  parent     = "organizations/87223077497"
}

# Folder nested under another folder.
resource "google_folder" "Corporate IT" {
  display_name = "Corporate IT"
  parent     = "${google_folder.Paul.name}"
}

# Folder nested under another folder.
resource "google_folder" "Marketing" {
  display_name = "Marketing"
  parent     = "${google_folder.Paul.name}"
}

# Folder nested under another folder.
resource "google_folder" "e-Commerce" {
  display_name = "e-Commerce"
  parent     = "${google_folder.Paul.name}"
}

# Folder nested under another folder.
resource "google_folder" "Security" {
  display_name = "Security"
  parent     = "${google_folder.Paul.name}"
}

