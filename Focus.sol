   function redeemCollateral(uint256 collateralSeed, uint256 amountCollateral) public {
        vm.startPrank(msg.sender);
        ERC20Mock collateral = _getCollateralFromSeed(collateralSeed);
        uint256 maxCollateral = engine.getCollateralBalanceOfUser(msg.sender, address(collateral));

        amountCollateral = bound(amountCollateral, 0, maxCollateral);
        //vm.prank(msg.sender);
        halfredeemtimesCalled++;
        if (amountCollateral == 0) {
            return;
        }
        engine.redeemCollateral(address(collateral), amountCollateral);
        redeemtimesCalled++;
        vm.stopPrank();
    }




    //Please look into this first we deposited this amount 52374492275032028193093282343 this token on the value of 2000 now we minted the DSC of the value arount 52374492275032028193093282342999 how much dsc we have left now?