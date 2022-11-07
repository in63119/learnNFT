const ERCFactory = artifacts.require("ERCFactory");

module.exports = function (deployer) {
  deployer.deploy(ERCFactory, "MyErcToken", "MET");
};
