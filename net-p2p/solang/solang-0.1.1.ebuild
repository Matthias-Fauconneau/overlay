# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
addr2line-0.12.0
adler32-1.0.4
aho-corasick-0.7.10
ansi_term-0.11.0
arrayref-0.3.6
arrayvec-0.5.1
ascii-canvas-2.0.0
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.0
backtrace-0.3.48
base64-0.10.1
base64-0.11.0
bit-set-0.5.2
bit-vec-0.6.2
bitflags-1.2.1
bitvec-0.17.4
blake2b_simd-0.5.10
block-buffer-0.7.3
block-padding-0.1.5
byte-slice-cast-0.3.5
byte-tools-0.3.1
byteorder-1.3.4
bytes-0.4.12
cargo_toml-0.8.0
cc-1.0.52
cfg-if-0.1.10
clap-2.33.1
cloudabi-0.0.3
constant_time_eq-0.1.5
cookie-0.12.0
cookie_store-0.7.0
core-foundation-0.7.0
core-foundation-sys-0.7.0
crc32fast-1.2.0
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.1
crossbeam-utils-0.7.2
crunchy-0.2.2
diff-0.1.12
digest-0.8.1
dirs-1.0.5
docopt-1.1.0
dtoa-0.4.5
either-1.5.3
ena-0.13.1
encoding_rs-0.8.23
error-chain-0.12.2
ethabi-11.0.0
ethbloom-0.8.1
ethereum-types-0.8.0
failure-0.1.8
failure_derive-0.1.8
fake-simd-0.1.2
fixed-hash-0.5.2
fixedbitset-0.1.9
flate2-1.0.14
fnv-1.0.6
foreign-types-0.3.2
foreign-types-shared-0.1.1
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.29
futures-cpupool-0.1.8
generic-array-0.12.3
getrandom-0.1.14
gimli-0.21.0
h2-0.1.26
hermit-abi-0.1.12
hex-0.4.2
http-0.1.21
http-body-0.1.0
httparse-1.3.4
hyper-0.12.35
hyper-tls-0.3.2
idna-0.1.5
idna-0.2.0
impl-codec-0.4.2
impl-rlp-0.2.1
impl-serde-0.2.3
impl-serde-0.3.1
indexmap-1.3.2
inkwell-0.1.0-llvm8sample
inkwell_internals-0.1.0
iovec-0.1.4
itertools-0.8.2
itoa-0.4.5
kernel32-sys-0.2.2
lalrpop-0.18.1
lalrpop-util-0.18.1
lazy_static-1.4.0
libc-0.2.70
llvm-sys-80.1.2
lock_api-0.3.4
log-0.4.8
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.3.3
memoffset-0.5.4
memory_units-0.3.0
mime-0.3.16
mime_guess-2.0.3
miniz_oxide-0.3.6
mio-0.6.22
miow-0.2.1
native-tls-0.2.4
net2-0.2.34
new_debug_unreachable-1.0.4
num-bigint-0.2.6
num-derive-0.3.0
num-integer-0.1.42
num-rational-0.2.4
num-traits-0.2.11
num_cpus-1.13.0
object-0.19.0
once_cell-1.3.1
opaque-debug-0.2.3
openssl-0.10.29
openssl-probe-0.1.2
openssl-sys-0.9.56
ordermap-0.3.5
parity-scale-codec-1.3.0
parity-scale-codec-derive-1.2.0
parity-wasm-0.41.0
parking_lot-0.10.2
parking_lot-0.9.0
parking_lot_core-0.6.2
parking_lot_core-0.7.2
percent-encoding-1.0.1
percent-encoding-2.1.0
petgraph-0.4.13
phf_generator-0.7.24
phf_shared-0.7.24
pkg-config-0.3.17
ppv-lite86-0.2.6
precomputed-hash-0.1.1
primitive-types-0.6.2
proc-macro-crate-0.1.4
proc-macro2-0.4.30
proc-macro2-1.0.12
publicsuffix-1.5.4
quote-0.6.13
quote-1.0.5
radium-0.3.0
rand-0.6.5
rand-0.7.3
rand_chacha-0.1.1
rand_chacha-0.2.2
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.1.0
rand_hc-0.2.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.4
regex-1.3.7
regex-syntax-0.6.17
remove_dir_all-0.5.2
reqwest-0.9.24
rlp-0.4.5
rust-argon2-0.7.0
rustc-demangle-0.1.16
rustc-hex-2.1.0
rustc_version-0.2.3
ryu-1.0.4
schannel-0.1.19
scopeguard-1.1.0
security-framework-0.4.4
security-framework-sys-0.4.3
semver-0.9.0
semver-parser-0.7.0
serde-1.0.110
serde_derive-1.0.110
serde_json-1.0.53
serde_urlencoded-0.5.5
sha2-0.8.1
siphasher-0.2.3
slab-0.4.2
smallvec-0.6.13
smallvec-1.4.0
solang-0.1.1
static_assertions-1.1.0
string-0.2.1
string_cache-0.7.5
string_cache_codegen-0.4.4
string_cache_shared-0.3.0
strsim-0.8.0
strsim-0.9.3
syn-0.15.44
syn-1.0.21
synstructure-0.12.3
tempfile-3.1.0
term-0.5.2
textwrap-0.11.0
thread_local-1.0.1
time-0.1.43
tiny-keccak-1.5.0
tokio-0.1.22
tokio-buf-0.1.1
tokio-current-thread-0.1.7
tokio-executor-0.1.10
tokio-io-0.1.13
tokio-reactor-0.1.12
tokio-sync-0.1.8
tokio-tcp-0.1.4
tokio-threadpool-0.1.18
tokio-timer-0.2.13
toml-0.5.6
try-lock-0.2.2
try_from-0.3.2
typenum-1.12.0
uint-0.8.3
unescape-0.1.0
unicase-2.6.0
unicode-bidi-0.3.4
unicode-normalization-0.1.12
unicode-width-0.1.7
unicode-xid-0.1.0
unicode-xid-0.2.0
url-1.7.2
url-2.1.1
uuid-0.7.4
vcpkg-0.2.8
vec_map-0.8.2
version_check-0.9.1
want-0.2.0
wasi-0.9.0+wasi-snapshot-preview1
wasmi-0.6.2
wasmi-validation-0.3.0
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.6.2
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="Solang Solidity Compiler"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="homepage field in Cargo.toml inaccessible to cargo metadata"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0 WITH LLVM-exception BSD-2-Clause BSD-3-Clause BSL-1.0 CC0-1.0 ISC MIT MPL-2.0 Unlicense Zlib"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
