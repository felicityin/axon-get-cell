# Start Axon
```
git clone git@github.com:felicityin/axon.git
git checkout get-cell
cargo build
./target/debug/axon -c devtools/chain/config.toml -g devtools/chain/genesis_single_node.json
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
