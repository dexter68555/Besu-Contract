const HDWalletProvider = require("@truffle/hdwallet-provider");
const privateKey = ['0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63',
	'0xc87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3',
	'0xae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f'
];
const privateKeyProvider = new HDWalletProvider(privateKey, "http://127.0.0.1:8545", 0, 3);

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
