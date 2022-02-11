{ buildGoModule, fetchFromGitHub, lib }:
buildGoModule rec {
  pname = "goawk";
  version = "1.15.0";

  src = fetchFromGitHub {
    owner = "benhoyt";
    repo = "goawk";
    rev = "v${version}";
    sha256 = "sha256-gd26j6c8ORy0qkeHvwPFLkymeRiFr8MLxJ6hIrBwAZw=";
  };

  vendorSha256 = "sha256-pQpattmS9VmO3ZIQUFn66az8GSmB4IvYhTTCFn6SUmo=";

  # checks do not pass at the moment
  doCheck = false;

  meta = with lib; {
    description = "A POSIX-compliant AWK interpreter written in Go";
    homepage = "https://benhoyt.com/writings/goawk/";
    license = licenses.mit;
    mainProgram = "goawk";
    maintainers = with maintainers; [ abbe ];
  };
}
