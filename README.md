# Build Containers
for JVM-, GO-, RUST-builds and the likes...

Create build containers by runnning build.sh scripts in each directory.
Then run build container by calling:
  ./run.sh -b build-go:1.8.3     -s /user/hugo/sources
  ./run.sh -b build-jvm:8        -s /user/hugo/sources
  ./run.sh -b build-rust:1.19.0  -s /user/hugo/sources
Note: if a container was not built before, it will be built when issuing the run command.



