const PaintingNFT = artifacts.require("PaintingNFT");

module.exports = function (deployer) {
  deployer.deploy(PaintingNFT, "Painting", "PAINT");
};
