# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
Inflector-0.11.4
adler32-1.0.4
aes-ctr-0.3.0
aes-soft-0.3.3
aesni-0.6.0
ahash-0.2.18
aho-corasick-0.7.10
alga-0.9.3
ansi_term-0.11.0
ansi_term-0.12.1
anyhow-1.0.28
app_dirs-1.2.1
approx-0.3.2
arbitrary-0.4.1
arc-swap-0.4.5
arrayref-0.3.6
arrayvec-0.4.12
arrayvec-0.5.1
asn1_der-0.6.3
asn1_der_derive-0.1.2
assert_cmd-1.0.1
assert_matches-1.3.0
async-std-1.5.0
async-task-1.3.1
async-tls-0.7.0
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.0
backtrace-0.3.46
backtrace-sys-0.1.35
base58-0.1.0
base64-0.11.0
base64-0.12.0
bincode-1.2.1
bindgen-0.53.2
bitflags-1.2.1
bitmask-0.5.0
bitvec-0.17.4
blake2-0.8.1
blake2-rfc-0.2.18
blake2b_simd-0.5.10
blake2s_simd-0.5.10
block-buffer-0.7.3
block-cipher-trait-0.6.2
block-padding-0.1.5
broadcaster-1.0.0
bs58-0.3.1
bstr-0.2.12
build-helper-0.1.1
bumpalo-3.2.1
byte-slice-cast-0.3.5
byte-tools-0.3.1
byteorder-0.5.3
byteorder-1.3.4
bytes-0.4.12
bytes-0.5.4
c_linked_list-1.1.1
cargo_metadata-0.9.1
cast-0.2.3
cc-1.0.50
cexpr-0.4.0
cfg-if-0.1.10
chacha20-poly1305-aead-0.1.2
chrono-0.4.11
clang-sys-0.29.3
clap-2.33.0
clear_on_drop-0.2.3
cloudabi-0.0.3
cmake-0.1.42
console_error_panic_hook-0.1.6
console_log-0.1.2
const-random-0.1.8
const-random-macro-0.1.8
constant_time_eq-0.1.5
core-foundation-0.7.0
core-foundation-sys-0.7.0
cranelift-bforest-0.63.0
cranelift-codegen-0.63.0
cranelift-codegen-meta-0.63.0
cranelift-codegen-shared-0.63.0
cranelift-entity-0.63.0
cranelift-frontend-0.63.0
cranelift-native-0.63.0
cranelift-wasm-0.63.0
crc32fast-1.2.0
criterion-0.2.11
criterion-0.3.1
criterion-plot-0.3.1
criterion-plot-0.4.1
crossbeam-channel-0.4.2
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.1
crossbeam-utils-0.7.2
crunchy-0.2.2
crypto-mac-0.7.0
csv-1.1.3
csv-core-0.1.10
ct-logs-0.6.0
ctor-0.1.13
ctr-0.3.2
cuckoofilter-0.3.2
curve25519-dalek-2.0.0
data-encoding-2.2.0
derive_more-0.99.5
difference-2.0.0
digest-0.8.1
directories-2.0.2
dirs-sys-0.3.4
dns-parser-0.8.0
doc-comment-0.3.3
ed25519-dalek-1.0.0-pre.3
either-1.5.3
enum-primitive-derive-0.1.2
enumflags2-0.6.3
enumflags2_derive-0.6.3
env_logger-0.6.2
env_logger-0.7.1
environmental-1.1.1
erased-serde-0.3.11
errno-0.2.5
errno-dragonfly-0.1.1
evm-0.16.1
evm-core-0.16.1
evm-gasometer-0.16.1
evm-runtime-0.16.1
exit-future-0.2.0
faerie-0.15.0
failure-0.1.7
failure_derive-0.1.7
fake-simd-0.1.2
fallible-iterator-0.2.0
fdlimit-0.1.4
file-per-thread-logger-0.1.2
finality-grandpa-0.12.3
fixed-hash-0.6.0
fixedbitset-0.2.0
flate2-1.0.14
fnv-1.0.6
fs-swap-0.2.4
fs2-0.4.3
fs_extra-1.1.0
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.29
futures-0.3.4
futures-channel-0.3.4
futures-channel-preview-0.3.0-alpha.19
futures-core-0.3.4
futures-core-preview-0.3.0-alpha.19
futures-cpupool-0.1.8
futures-diagnose-1.0.1
futures-executor-0.3.4
futures-io-0.3.4
futures-macro-0.3.4
futures-sink-0.3.4
futures-task-0.3.4
futures-timer-2.0.2
futures-timer-3.0.2
futures-util-0.3.4
futures-util-preview-0.3.0-alpha.19
futures_codec-0.3.4
gcc-0.3.55
generic-array-0.12.3
get_if_addrs-0.5.3
get_if_addrs-sys-0.1.1
getrandom-0.1.14
gimli-0.20.0
glob-0.2.11
glob-0.3.0
globset-0.4.5
gloo-timers-0.2.1
goblin-0.1.3
h2-0.1.26
h2-0.2.4
hash-db-0.15.2
hash256-std-hasher-0.15.2
hashbrown-0.6.3
heck-0.3.1
hermit-abi-0.1.10
hex-0.4.2
hex-literal-0.2.1
hex-literal-impl-0.2.1
hmac-0.7.1
hmac-drbg-0.2.0
honggfuzz-0.5.47
http-0.1.21
http-0.2.1
http-body-0.1.0
http-body-0.3.1
httparse-1.3.4
humantime-1.3.0
hyper-0.12.35
hyper-0.13.4
hyper-rustls-0.20.0
idna-0.1.5
idna-0.2.0
impl-codec-0.4.2
impl-rlp-0.2.1
impl-serde-0.2.3
impl-serde-0.3.0
impl-trait-for-tuples-0.1.3
indexmap-1.3.2
integer-sqrt-0.1.3
intervalier-0.4.0
iovec-0.1.4
ip_network-0.3.4
ipnet-2.3.0
itertools-0.8.2
itoa-0.4.5
jobserver-0.1.21
js-sys-0.3.37
jsonrpc-client-transports-14.1.0
jsonrpc-core-14.1.0
jsonrpc-core-client-14.1.0
jsonrpc-derive-14.0.5
jsonrpc-http-server-14.1.0
jsonrpc-pubsub-14.1.0
jsonrpc-server-utils-14.1.0
jsonrpc-ws-server-14.1.0
keccak-0.1.0
keccak-hasher-0.15.2
kernel32-sys-0.2.2
kv-log-macro-1.0.4
kvdb-0.6.0
kvdb-memorydb-0.6.0
kvdb-rocksdb-0.8.0
kvdb-web-0.6.0
lazy_static-1.4.0
lazycell-1.2.1
leb128-0.2.4
libc-0.2.69
libflate-0.1.27
libloading-0.5.2
libm-0.2.1
libp2p-0.19.0
libp2p-core-0.19.0
libp2p-core-derive-0.19.0
libp2p-deflate-0.19.0
libp2p-dns-0.19.0
libp2p-floodsub-0.19.0
libp2p-gossipsub-0.19.0
libp2p-identify-0.19.0
libp2p-kad-0.19.0
libp2p-mdns-0.19.0
libp2p-mplex-0.19.0
libp2p-noise-0.19.0
libp2p-ping-0.19.0
libp2p-plaintext-0.19.0
libp2p-pnet-0.19.0
libp2p-secio-0.19.0
libp2p-swarm-0.19.0
libp2p-tcp-0.19.0
libp2p-uds-0.19.0
libp2p-wasm-ext-0.19.0
libp2p-websocket-0.19.0
libp2p-yamux-0.19.0
librocksdb-sys-6.7.4
libsecp256k1-0.3.5
libz-sys-1.0.25
linked-hash-map-0.5.2
linked_hash_set-0.1.3
linregress-0.1.7
lite-json-0.1.0
lock_api-0.3.4
log-0.4.8
lru-0.4.3
mach-0.2.3
matches-0.1.8
matrixmultiply-0.2.3
maybe-uninit-2.0.0
memchr-2.3.3
memmap-0.7.0
memoffset-0.5.4
memory-db-0.20.1
memory_units-0.3.0
merlin-2.0.0
miniz_oxide-0.3.6
mio-0.6.21
mio-extras-2.0.6
mio-uds-0.6.7
miow-0.2.1
more-asserts-0.2.1
multihash-0.11.1
multimap-0.8.1
multistream-select-0.8.0
nalgebra-0.18.1
names-0.11.0
net2-0.2.33
netstat2-0.8.1
nix-0.17.0
nodrop-0.1.14
nohash-hasher-0.2.0
nom-5.1.1
ntapi-0.3.3
num-bigint-0.2.6
num-complex-0.2.4
num-integer-0.1.42
num-rational-0.2.4
num-traits-0.1.43
num-traits-0.2.11
num_cpus-1.12.0
object-0.18.0
ole32-sys-0.2.0
once_cell-1.3.1
oorandom-11.1.0
opaque-debug-0.2.3
openssl-probe-0.1.2
output_vt100-0.1.2
owning_ref-0.4.1
parity-db-0.1.2
parity-multiaddr-0.7.3
parity-multiaddr-0.9.0
parity-multihash-0.2.3
parity-scale-codec-1.3.0
parity-scale-codec-derive-1.2.0
parity-send-wrapper-0.1.0
parity-util-mem-0.6.1
parity-util-mem-derive-0.1.0
parity-wasm-0.32.0
parity-wasm-0.41.0
parking_lot-0.10.2
parking_lot-0.9.0
parking_lot_core-0.6.2
parking_lot_core-0.7.1
paste-0.1.10
paste-impl-0.1.10
pbkdf2-0.3.0
pdqselect-0.1.0
peeking_take_while-0.1.2
percent-encoding-1.0.1
percent-encoding-2.1.0
petgraph-0.5.0
pin-project-0.4.9
pin-project-internal-0.4.9
pin-project-lite-0.1.4
pin-utils-0.1.0-alpha.4
pkg-config-0.3.17
plain-0.2.3
platforms-0.2.1
plotters-0.2.12
ppv-lite86-0.2.6
predicates-1.0.4
predicates-core-1.0.0
predicates-tree-1.0.0
pretty_assertions-0.6.1
primitive-types-0.7.0
proc-macro-crate-0.1.4
proc-macro-error-1.0.2
proc-macro-error-attr-1.0.2
proc-macro-hack-0.5.15
proc-macro-nested-0.1.4
proc-macro2-1.0.10
procfs-0.7.8
prometheus-0.8.0
prost-0.6.1
prost-build-0.6.1
prost-derive-0.6.1
prost-types-0.6.1
protobuf-2.14.0
pwasm-utils-0.12.0
quick-error-1.2.3
quickcheck-0.9.2
quicksink-0.1.2
quote-0.3.15
quote-1.0.3
radium-0.3.0
rand-0.3.23
rand-0.4.6
rand-0.5.6
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
rand_pcg-0.2.1
rand_xorshift-0.1.1
rand_xoshiro-0.1.0
raw-cpuid-7.0.3
rawpointer-0.2.1
rayon-1.3.0
rayon-core-1.7.0
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.4
ref-cast-1.0.1
ref-cast-impl-1.0.1
regalloc-0.0.21
regex-1.3.6
regex-automata-0.1.9
regex-syntax-0.6.17
region-2.1.2
remove_dir_all-0.5.2
ring-0.16.12
rle-decode-fast-1.0.1
rlp-0.4.5
rocksdb-0.14.0
rpassword-4.0.5
rust-argon2-0.7.0
rustc-demangle-0.1.16
rustc-hash-1.1.0
rustc-hex-2.1.0
rustc_version-0.2.3
rustls-0.17.0
rustls-native-certs-0.3.0
rustversion-1.0.2
rw-stream-sink-0.2.1
ryu-1.0.3
safe-mix-1.0.1
salsa20-0.3.0
salsa20-core-0.2.3
same-file-1.0.6
schannel-0.1.18
schnorrkel-0.9.1
scoped-tls-1.0.0
scopeguard-1.1.0
scroll-0.10.1
scroll_derive-0.10.1
sct-0.6.0
security-framework-0.4.2
security-framework-sys-0.4.2
semver-0.6.0
semver-0.9.0
semver-parser-0.7.0
send_wrapper-0.2.0
send_wrapper-0.3.0
send_wrapper-0.4.0
serde-1.0.106
serde_derive-1.0.106
serde_json-1.0.51
sha-1-0.8.2
sha1-0.6.0
sha2-0.8.1
sha3-0.8.2
shell32-sys-0.1.2
shlex-0.1.1
signal-hook-registry-1.2.0
slab-0.4.2
slog-2.5.2
slog-json-2.3.0
slog-scope-4.3.0
slog_derive-0.2.0
smallvec-0.6.13
smallvec-1.3.0
snow-0.6.2
socket2-0.3.12
soketto-0.3.2
spin-0.5.2
stable_deref_trait-1.1.1
static_assertions-1.1.0
statrs-0.10.0
stream-cipher-0.3.2
string-0.2.1
string-interner-0.7.1
strsim-0.8.0
structopt-0.3.13
structopt-derive-0.4.6
strum-0.16.0
strum_macros-0.16.0
substrate-bip39-0.4.1
substrate-wasm-builder-1.0.10
substrate-wasm-builder-runner-1.0.6
substrate-wasmtime-0.16.0-threadsafe.3
substrate-wasmtime-jit-0.16.0-threadsafe.3
substrate-wasmtime-profiling-0.16.0-threadsafe.3
substrate-wasmtime-runtime-0.16.0-threadsafe.3
subtle-1.0.0
subtle-2.2.2
syn-0.11.11
syn-1.0.17
syn-mid-0.5.0
synom-0.11.3
synstructure-0.12.3
sysinfo-0.13.3
take_mut-0.2.2
target-lexicon-0.10.0
tempfile-3.1.0
termcolor-1.1.0
test-case-0.3.3
textwrap-0.11.0
thiserror-1.0.15
thiserror-impl-1.0.15
thread_local-1.0.1
threadpool-1.7.1
time-0.1.42
tiny-bip39-0.7.3
tiny-keccak-1.5.0
tiny-keccak-2.0.2
tinytemplate-1.0.3
tokio-0.1.22
tokio-0.2.18
tokio-buf-0.1.1
tokio-codec-0.1.2
tokio-current-thread-0.1.7
tokio-executor-0.1.10
tokio-executor-0.2.0-alpha.6
tokio-fs-0.1.7
tokio-io-0.1.13
tokio-macros-0.2.5
tokio-reactor-0.1.12
tokio-rustls-0.13.0
tokio-sync-0.1.8
tokio-sync-0.2.0-alpha.6
tokio-tcp-0.1.4
tokio-threadpool-0.1.18
tokio-timer-0.2.13
tokio-udp-0.1.6
tokio-uds-0.2.6
tokio-util-0.3.1
toml-0.5.6
tower-service-0.3.0
tracing-0.1.13
tracing-attributes-0.1.7
tracing-core-0.1.10
treeline-0.1.0
trie-bench-0.21.1
trie-db-0.20.1
trie-root-0.16.0
trie-standardmap-0.15.2
try-lock-0.2.2
trybuild-1.0.25
twofish-0.2.0
twox-hash-1.5.0
typenum-1.12.0
uint-0.8.2
unicase-2.6.0
unicode-bidi-0.3.4
unicode-normalization-0.1.12
unicode-segmentation-1.6.0
unicode-width-0.1.7
unicode-xid-0.0.4
unicode-xid-0.2.0
unsigned-varint-0.3.3
untrusted-0.7.0
url-1.7.2
url-2.1.1
vcpkg-0.2.8
vec_map-0.8.1
version_check-0.9.1
void-1.0.2
wabt-0.9.2
wabt-sys-0.7.1
wait-timeout-0.2.0
walkdir-2.3.1
want-0.2.0
want-0.3.0
wasi-0.9.0+wasi-snapshot-preview1
wasm-bindgen-0.2.62
wasm-bindgen-backend-0.2.62
wasm-bindgen-futures-0.4.10
wasm-bindgen-macro-0.2.62
wasm-bindgen-macro-support-0.2.62
wasm-bindgen-shared-0.2.62
wasm-bindgen-test-0.3.10
wasm-bindgen-test-macro-0.3.10
wasm-gc-api-0.1.11
wasm-timer-0.2.4
wasmi-0.6.2
wasmi-validation-0.3.0
wasmparser-0.51.4
wasmparser-0.52.2
wasmtime-debug-0.16.0
wasmtime-environ-0.16.0
wast-13.0.0
wat-1.0.14
web-sys-0.3.37
webpki-0.21.2
webpki-roots-0.18.0
webpki-roots-0.19.0
which-3.1.1
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.4
winapi-x86_64-pc-windows-gnu-0.4.0
ws-0.9.1
ws2_32-sys-0.2.1
x25519-dalek-0.6.0
xdg-2.2.0
yamux-0.4.5
zeroize-1.1.0
zeroize_derive-1.0.0
zstd-0.5.1+zstd.1.4.4
zstd-safe-2.0.3+zstd.1.4.4
zstd-sys-1.4.15+zstd.1.4.4
"

inherit cargo git-r3

DESCRIPTION="Substrate node implementation in Rust."
HOMEPAGE="https://github.com/paritytech/substrate"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
EGIT_REPO_URI="https://github.com/paritytech/substrate"
EGIT_COMMIT="ci-release-2.0.0-alpha.5+6"
LICENSE="Apache-2.0 Apache-2.0 WITH LLVM-exception BSD-2-Clause \
BSD-3-Clause BSL-1.0 CC0-1.0 GPL-3.0 ISC MIT MPL-2.0 Unlicense Zlib"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

src_unpack() {
 cargo_live_src_unpack
}
