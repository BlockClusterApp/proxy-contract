A minimal, beginner friendly boilerplate for writing dynamo proxy contracts in BlockCluster platform.

# Proxy Contract

A proxy contract in dynamo is used to implement custom logic such as advanced permissions, implementing new actors, calculating or conditioning assets metadata and so on. 

It's useful when you need more customized and advanced operations over Dynamo's native assets and streams protocol. For example: if you have an asset and want to give two different members the ability to modify the asset then you would require to write a proxy contract as native set of operations over assets doesn't provide this feature.  

### Configuring

To run this truffle project you need to configure your networks smart contract addresses and replace the node URL with your's node URL.

First of all create a new network on [app.blockcluster.io](http://app.blockcluster.io/login). The you will see this control panel for your network:

![Screen Shot 2018-09-06 at 12.52.48 AM](https://s22.postimg.cc/c363yy9s1/Screen_Shot_2018-09-06_at_12.52.48_AM.png)

Then click on <u>Node Info and Settings</u> option to view your dynamo node's network and contracts information. You would see a screen similar to this:

![Screen Shot 2018-09-06 at 12.54.43 AM](https://s22.postimg.cc/itml8d22p/Screen_Shot_2018-09-06_at_12.54.43_AM.png)

Now copy the assets, streams and atomic swap contracts addresses and replace with the dummy ones provided in the [contracts/Example.sol](https://github.com/BlockClusterApp/proxy-contract/blob/master/contracts/Example.sol) file.

The next step is to go to the <u>API</u> option on the control panel page. You will see a screen similar to this:

![Screen Shot 2018-09-06 at 12.58.39 AM](https://s22.postimg.cc/3xo20qgdd/Screen_Shot_2018-09-06_at_12.58.39_AM.png)

Now copy the Dynamo APIs URL and replace with the dummy one provided in the [truffle.js](https://github.com/BlockClusterApp/proxy-contract/blob/master/truffle.js) file.

## Testing

Just like testing any other truffle project you need to first compile smart contracts, then deploy the contracts and finally run Mocha tests.

Let's first install the dependencies:

```shell
npm install
```

Then compile the contracts:

```shell
truffle compile
```

Then deploy the contracts:

```shell
truffle migrate --reset --network development
```

Finally, run the mocha tests:

```shell
truffle test
```

## Auditing

To convert the transactions related to the proxy contract into readable format in Audit explorer you would need to add the proxy contract's bytecode and ABI in dynamo. 

To do this, click on <u>Add Smart Contracts</u> option in control panel. You will see a screen similar to this:

![Screen Shot 2018-09-06 at 1.08.34 AM](https://s22.postimg.cc/5ph0vm4v5/Screen_Shot_2018-09-06_at_1.08.34_AM.png)

Now copy the bytecode and ABI from your projects <u>build/contracts/Example.json</u> file and paste it in the form. Then submit the form. Now you will be able to audit all `Example` contracts transactions in the explorer.

Here is how a transaction will look when viewed in explorer:

![Screen Shot 2018-09-06 at 4.09.42 PM](https://s22.postimg.cc/x30gf7wld/Screen_Shot_2018-09-06_at_4.09.42_PM.png)

