const Web3 = require("web3");

module.exports = {
  networks: {
    development: {
      provider: new Web3.providers.HttpProvider("https://app-ap-south-1b.blockcluster.io/api/node/wqxyflws/jsonrpc"),
      network_id: "*", // Match any network id
      gasPrice: 0,
      gas: "300000000"
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
};
