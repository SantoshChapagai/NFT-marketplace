import Nat8 "mo:base/Nat8";
import Cycles "mo:base/ExperimentalCycles";
import Principal "mo:base/Principal";
import NFTActorClass "../NFT/nft";
actor OpenD {
  public shared (msg) func mint(imgData : [Nat8], name : Text) : async Principal {
    let owner : Principal = msg.caller;

    Cycles.add(100_500_000_000);
    let newNFT = await NFTActorClass.NFT(name, owner, imgData);
    let newCFTPrincipal = await newNFT.getCanisterId();
    return newCFTPrincipal;
  };
};
