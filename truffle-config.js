const HDWalletProvider = require("@truffle/hdwallet-provider");
const privateKey = [<Private key>
];
const privateKeyProvider = new HDWalletProvider(privateKey, "http://127.0.0.1:8545", 0, 3); //you need to edit this

module.exports = {
	networks: {
		development: {
			host: "127.0.0.1",
			port: 7545,
			network_id: "*"
		},
		besu: {
			provider: privateKeyProvider,
			network_id: "*",
			gasPrice: 0
		}
	}
};
