## Package
```sh
eselect repository add git https://github.com/Matthias-Fauconneau/overlay.git
emaint sync -r overlay
flaggie sys-devel/llvm +llvm_targets_WebAssembly
flaggie net-p2p/solang +BSD-2-Clause +BSD-3-Clause +BSL-1.0 +LLVM-exception +WITH +Zlib
emerge solang
```
## Container
https://github.com/Matthias-Fauconneau/kubler-solang
```sh
git clone https://github.com/Matthias-Fauconneau/kubler-solang.git
cd kubler-solang
kubler build solang
docker run solang
```
