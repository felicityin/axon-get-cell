// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

struct Cell {
    bool exists;
    bool hasTypeScript;
    bool hasConsumedNumber;
    uint64 createdNumber;
    uint64 consumedNumber;
    uint64 capacity;
    uint8 lockHashType;
    uint8 typeHashType;
    bytes32 lockCodeHash;
    bytes32 typeCodeHash;
    bytes lockArgs;
    bytes typeArgs;
    bytes data;
}

// The address 0xf0 implements the function of geting cell.
// `CellProvider` can be renamed, but `getCell` cannot.
interface CellProvider {
    function getCell(bytes32 txHash, uint32 index) external returns (Cell memory cell);
}

contract CellProviderContract {
    event GetCellEvent(Cell);
    event NotGetCellEvent();

    Cell cell;

    function testGetCell(bytes32 txHash, uint32 index) public {
        cell = CellProvider(address(0xf0)).getCell(txHash, index);
        if (cell.exists) {
            emit GetCellEvent(cell);
        } else {
            emit NotGetCellEvent();
        }
    }

    function getCell() public view returns (Cell memory) {
        return cell;
    }
}
