# Start Axon
```
git clone git@github.com:felicityin/axon.git
git checkout get-cell
cargo build
./target/debug/axon -c devtools/chain/config.toml -g devtools/chain/genesis_single_node.json
```

# Start Emitter
Start Emitter.
```
cd emitter
git checkout send-eth-tx
touch scan_state
cargo build
RUST_LOG=info ./target/debug/emitter -s ./ -c https://testnet.ckb.dev
```

Register the cell you want to track.
```bash
echo '{
    "id": 2,
    "jsonrpc": "2.0",
    "method": "register",
    "params": [
        {
            "script": {
                "code_hash": "0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8",
                "hash_type": "type",
                "args": "0x5989ae415bb667931a99896e5fbbfad9ba53a223"
            },
            "script_type": "lock"
        },
        "0x0"
    ]
}' \
| curl -H 'content-type: application/json' -d @- \
http://localhost:8120
```

# Test contract
```
yarn
npx hardhat run scripts/test.js --network axon
```

output
```
cell: [
  true,
  false,
  false,
  BigNumber { value: "6318217" },
  BigNumber { value: "0" },
  BigNumber { value: "6600000000" },
  1,
  0,
  '0x00000000000000000000000000000000000000000000000000000000000001a0',
  '0x00000000000000000000000000000000000000000000000000000000000001e0',
  '0x140000005989ae415bb667931a99896e5fbbfad9ba53a223',
  '0x',
  '0x',
  [length]: 13,
  exists: true,
  hasTypeScript: false,
  hasConsumedNumber: false,
  createdNumber: BigNumber { value: "6318217" },
  consumedNumber: BigNumber { value: "0" },
  capacity: BigNumber { value: "6600000000" },
  lockHashType: 1,
  typeHashType: 0,
  lockCodeHash: '0x00000000000000000000000000000000000000000000000000000000000001a0',
  typeCodeHash: '0x00000000000000000000000000000000000000000000000000000000000001e0',
  lockArgs: '0x140000005989ae415bb667931a99896e5fbbfad9ba53a223',
  typeArgs: '0x',
  data: '0x'
]
```
