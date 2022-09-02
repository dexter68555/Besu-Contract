var MyDapp = artifacts.require("StorageFactory");

module.exports = function(deployer){
	deployer.deploy(MyDapp);
};