var Migrations = artifacts.require('TodoList.sol');

module.exports = function (deployer) {
   deployer.deploy(Migrations);
};
