# Besu-Contract
This is example of smart contract deploy in Hyperledger Besu

Requirement
1. Install Node.js
2. Install Truffle
3. Install and start Hyperledger Besu. Please kindly refer to the Hyperledger Besu Official Link (https://besu.hyperledger.org/en/stable/private-networks/get-started/install/).

To run it, please refer to the following steps.
1. Please run this command: npm install @truffle/hdwallet-provider
2. Please compile the smart contract by running: truffle compile
3. To deploy the smart contract, please run: truffle migrate --reset --network besu

After deployment success, you can interact with the smart contract via truffle console.
