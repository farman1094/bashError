Ran 1 test for test/fuzz/Invariants.t.sol:Invariants
[FAIL. Reason: invariant_protocolMustHaveMoreValueThanTotalSupply persisted failure revert]
        [Sequence]
                sender=0x00000000000000000000000000000000000001a1 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[3998, 3041954474 [3.041e9]]
                sender=0x00000000000000000000000000000000000001ac addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[3, 659]
                sender=0x0000000000000000000000000000237A9926993e addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[14342017254695067634718324 [1.434e25], 330163590867193692802 [3.301e20]]
                sender=0x43ADca325f44004E3b96DB22d88474fd3e329774 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[0, 61246308997971103485613883047664239530092505335637118479394 [6.124e58]]
                sender=0x000000000000266C7f4022a9090b4CCe097c90f1 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[87870011255095998549021738332682 [8.787e31], 223693669477094990048954286412934557635437368192243 [2.236e50]]
                sender=0x000000000000000019f683605c9F18e44100D758 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[1757799953 [1.757e9], 2889377557621965550785512763164741263435259909653690197 [2.889e54]]
                sender=0x0ea808447dE12FD3Ec796709Ddc238ABE079fbAc addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=mintDsc(uint256,uint256) args=[115792089237316195423570985008687907853269984665640564039457584007913129639934 [1.157e77], 3621958311209530 [3.621e15]]
                sender=0x000000000000266C7f4022a9090b4CCe097c90f1 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=redeemCollateral(uint256,uint256) args=[3856632708 [3.856e9], 1010]
 invariant_protocolMustHaveMoreValueThanTotalSupply() (runs: 1, calls: 1, reverts: 1)
Logs:
  Bound result 3041954474
  Bound result 659
  Bound result 330163590867193692802
  Bound result 19075424165431745602800698689
  Bound result 52374492275032028193093282343
  Bound result 15408110124076407934189866012
  Bound result 52374492275032028193093282342999
  Bound result 1010
  totalSupply 52374492275032028193093282342999
  wethValue 142899833541254729332259256616000
  wbtcValue 924486607444584476051392000260000
  totalWethDeposited 71449916770627364666129628308
  totalWbtcDeposited 15408110124076407934189866671
  deposittimesCalled 6
  halfMinttimesCalled 1
  MinttimesCalled 1
  halfredeemtimesCalled 0
  redeemtimesCalled 0

Traces:
  [199360] Handler::depositCollateral(3998, 3041954474 [3.041e9])
    ├─ [0] console::log("Bound result", 3041954474 [3.041e9]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] VM::startPrank(0x00000000000000000000000000000000000001a1)
    │   └─ ← [Return]
    ├─ [29712] WETH::mint(0x00000000000000000000000000000000000001a1, 3041954474 [3.041e9])
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x00000000000000000000000000000000000001a1, value: 3041954474 [3.041e9])
    │   └─ ← [Stop]
    ├─ [24739] WETH::approve(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 3041954474 [3.041e9])
    │   ├─ emit Approval(owner: 0x00000000000000000000000000000000000001a1, spender: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 3041954474 [3.041e9])   
    │   └─ ← [Return] true
    ├─ [58682] DSCEngine::depositCollateral(WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], 3041954474 [3.041e9])
    │   ├─ emit CollateralDeposited(user: 0x00000000000000000000000000000000000001a1, token: WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], amount: 3041954474 [3.041e9])
    │   ├─ [26088] WETH::transferFrom(0x00000000000000000000000000000000000001a1, DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 3041954474 [3.041e9])
    │   │   ├─ emit Transfer(from: 0x00000000000000000000000000000000000001a1, to: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 3041954474 [3.041e9])     
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [165161] Handler::depositCollateral(3, 659)
    ├─ [0] console::log("Bound result", 659) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] VM::startPrank(0x00000000000000000000000000000000000001ac)
    │   └─ ← [Return]
    ├─ [29712] WBTC::mint(0x00000000000000000000000000000000000001ac, 659)
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x00000000000000000000000000000000000001ac, value: 659)
    │   └─ ← [Stop]
    ├─ [24739] WBTC::approve(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 659)
    │   ├─ emit Approval(owner: 0x00000000000000000000000000000000000001ac, spender: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 659)
    │   └─ ← [Return] true
    ├─ [58682] DSCEngine::depositCollateral(WBTC: [0xDB8cFf278adCCF9E9b5da745B44E754fC4EE3C76], 659)
    │   ├─ emit CollateralDeposited(user: 0x00000000000000000000000000000000000001ac, token: WBTC: [0xDB8cFf278adCCF9E9b5da745B44E754fC4EE3C76], amount: 659)
    │   ├─ [26088] WBTC::transferFrom(0x00000000000000000000000000000000000001ac, DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 659)
    │   │   ├─ emit Transfer(from: 0x00000000000000000000000000000000000001ac, to: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 659)
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [148060] Handler::depositCollateral(14342017254695067634718324 [1.434e25], 330163590867193692802 [3.301e20])
    ├─ [0] console::log("Bound result", 330163590867193692802 [3.301e20]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] VM::startPrank(0x0000000000000000000000000000237A9926993e)
    │   └─ ← [Return]
    ├─ [29712] WETH::mint(0x0000000000000000000000000000237A9926993e, 330163590867193692802 [3.301e20])
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x0000000000000000000000000000237A9926993e, value: 330163590867193692802 [3.301e20])
    │   └─ ← [Stop]
    ├─ [24739] WETH::approve(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 330163590867193692802 [3.301e20])
    │   ├─ emit Approval(owner: 0x0000000000000000000000000000237A9926993e, spender: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 330163590867193692802 [3.301e20])
    │   └─ ← [Return] true
    ├─ [41582] DSCEngine::depositCollateral(WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], 330163590867193692802 [3.301e20])
    │   ├─ emit CollateralDeposited(user: 0x0000000000000000000000000000237A9926993e, token: WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], amount: 330163590867193692802 [3.301e20])
    │   ├─ [8988] WETH::transferFrom(0x0000000000000000000000000000237A9926993e, DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 330163590867193692802 [3.301e20])  
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000237A9926993e, to: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 330163590867193692802 [3.301e20])
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [148750] Handler::depositCollateral(0, 61246308997971103485613883047664239530092505335637118479394 [6.124e58])
    ├─ [0] console::log("Bound result", 19075424165431745602800698689 [1.907e28]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] VM::startPrank(0x43ADca325f44004E3b96DB22d88474fd3e329774)
    │   └─ ← [Return]
    ├─ [29712] WETH::mint(0x43ADca325f44004E3b96DB22d88474fd3e329774, 19075424165431745602800698689 [1.907e28])
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x43ADca325f44004E3b96DB22d88474fd3e329774, value: 19075424165431745602800698689 [1.907e28])  
    │   └─ ← [Stop]
    ├─ [24739] WETH::approve(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 19075424165431745602800698689 [1.907e28])
    │   ├─ emit Approval(owner: 0x43ADca325f44004E3b96DB22d88474fd3e329774, spender: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 19075424165431745602800698689 [1.907e28])
    │   └─ ← [Return] true
    ├─ [41582] DSCEngine::depositCollateral(WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], 19075424165431745602800698689 [1.907e28])
    │   ├─ emit CollateralDeposited(user: 0x43ADca325f44004E3b96DB22d88474fd3e329774, token: WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], amount: 19075424165431745602800698689 [1.907e28])
    │   ├─ [8988] WETH::transferFrom(0x43ADca325f44004E3b96DB22d88474fd3e329774, DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 19075424165431745602800698689 [1.907e28])
    │   │   ├─ emit Transfer(from: 0x43ADca325f44004E3b96DB22d88474fd3e329774, to: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 19075424165431745602800698689 [1.907e28])
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [148750] Handler::depositCollateral(87870011255095998549021738332682 [8.787e31], 223693669477094990048954286412934557635437368192243 [2.236e50])
    ├─ [0] console::log("Bound result", 52374492275032028193093282343 [5.237e28]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] VM::startPrank(0x000000000000266C7f4022a9090b4CCe097c90f1)
    │   └─ ← [Return]
    ├─ [29712] WETH::mint(0x000000000000266C7f4022a9090b4CCe097c90f1, 52374492275032028193093282343 [5.237e28])
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x000000000000266C7f4022a9090b4CCe097c90f1, value: 52374492275032028193093282343 [5.237e28])  
    │   └─ ← [Stop]
    ├─ [24739] WETH::approve(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 52374492275032028193093282343 [5.237e28])
    │   ├─ emit Approval(owner: 0x000000000000266C7f4022a9090b4CCe097c90f1, spender: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 52374492275032028193093282343 [5.237e28])
    │   └─ ← [Return] true
    ├─ [41582] DSCEngine::depositCollateral(WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], 52374492275032028193093282343 [5.237e28])
    │   ├─ emit CollateralDeposited(user: 0x000000000000266C7f4022a9090b4CCe097c90f1, token: WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], amount: 52374492275032028193093282343 [5.237e28])
    │   ├─ [8988] WETH::transferFrom(0x000000000000266C7f4022a9090b4CCe097c90f1, DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 52374492275032028193093282343 [5.237e28])
    │   │   ├─ emit Transfer(from: 0x000000000000266C7f4022a9090b4CCe097c90f1, to: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 52374492275032028193093282343 [5.237e28])
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [148751] Handler::depositCollateral(1757799953 [1.757e9], 2889377557621965550785512763164741263435259909653690197 [2.889e54])
    ├─ [0] console::log("Bound result", 15408110124076407934189866012 [1.54e28]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] VM::startPrank(0x000000000000000019f683605c9F18e44100D758)
    │   └─ ← [Return]
    ├─ [29712] WBTC::mint(0x000000000000000019f683605c9F18e44100D758, 15408110124076407934189866012 [1.54e28])
    │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x000000000000000019f683605c9F18e44100D758, value: 15408110124076407934189866012 [1.54e28])   
    │   └─ ← [Stop]
    ├─ [24739] WBTC::approve(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 15408110124076407934189866012 [1.54e28])
    │   ├─ emit Approval(owner: 0x000000000000000019f683605c9F18e44100D758, spender: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 15408110124076407934189866012 [1.54e28])
    │   └─ ← [Return] true
    ├─ [41582] DSCEngine::depositCollateral(WBTC: [0xDB8cFf278adCCF9E9b5da745B44E754fC4EE3C76], 15408110124076407934189866012 [1.54e28])
    │   ├─ emit CollateralDeposited(user: 0x000000000000000019f683605c9F18e44100D758, token: WBTC: [0xDB8cFf278adCCF9E9b5da745B44E754fC4EE3C76], amount: 15408110124076407934189866012 [1.54e28])
    │   ├─ [8988] WBTC::transferFrom(0x000000000000000019f683605c9F18e44100D758, DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], 15408110124076407934189866012 [1.54e28])
    │   │   ├─ emit Transfer(from: 0x000000000000000019f683605c9F18e44100D758, to: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], value: 15408110124076407934189866012 [1.54e28])
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [191748] Handler::mintDsc(115792089237316195423570985008687907853269984665640564039457584007913129639934 [1.157e77], 3621958311209530 [3.621e15])
    ├─ [0] VM::startPrank(0x000000000000266C7f4022a9090b4CCe097c90f1)
    │   └─ ← [Return]
    ├─ [43487] DSCEngine::getAccountInformation(0x000000000000266C7f4022a9090b4CCe097c90f1) [staticcall]
    │   ├─ [8993] WETHOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 200000000000 [2e11], 1, 1, 1
    │   ├─ [8993] WBTCOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 6000000000000 [6e12], 1, 1, 1
    │   └─ ← [Return] 0, 104748984550064056386186564686000 [1.047e32]
    ├─ [0] console::log("Bound result", 52374492275032028193093282342999 [5.237e31]) [staticcall]
    │   └─ ← [Stop]
    ├─ [85958] DSCEngine::mintDsc(52374492275032028193093282342999 [5.237e31])
    │   ├─ [993] WETHOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 200000000000 [2e11], 1, 1, 1
    │   ├─ [993] WBTCOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 6000000000000 [6e12], 1, 1, 1
    │   ├─ emit DscAmountMinted(user: 0x000000000000266C7f4022a9090b4CCe097c90f1, amount: 52374492275032028193093282342999 [5.237e31])
    │   ├─ [49149] DecentralizedStableCoin::mint(0x000000000000266C7f4022a9090b4CCe097c90f1, 52374492275032028193093282342999 [5.237e31])
    │   │   ├─ emit Transfer(from: 0x0000000000000000000000000000000000000000, to: 0x000000000000266C7f4022a9090b4CCe097c90f1, value: 52374492275032028193093282342999 [5.237e31])
    │   │   └─ ← [Return] true
    │   └─ ← [Stop]
    ├─ [0] VM::stopPrank()
    │   └─ ← [Return]
    └─ ← [Stop]

  [124897] Handler::redeemCollateral(3856632708 [3.856e9], 1010)
    ├─ [0] VM::startPrank(0x000000000000266C7f4022a9090b4CCe097c90f1)
    │   └─ ← [Return]
    ├─ [2783] DSCEngine::getCollateralBalanceOfUser(0x000000000000266C7f4022a9090b4CCe097c90f1, WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496]) [staticcall]
    │   └─ ← [Return] 52374492275032028193093282343 [5.237e28]
    ├─ [0] console::log("Bound result", 1010) [staticcall]
    │   └─ ← [Stop]
    ├─ [85577] DSCEngine::redeemCollateral(WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], 1010)
    │   ├─ emit CollateralRedeemed(redeemedFrom: 0x000000000000266C7f4022a9090b4CCe097c90f1, redeemedTo: 0x000000000000266C7f4022a9090b4CCe097c90f1, token: WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], amount: 1010)
    │   ├─ [29988] WETH::transfer(0x000000000000266C7f4022a9090b4CCe097c90f1, 1010)
    │   │   ├─ emit Transfer(from: DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512], to: 0x000000000000266C7f4022a9090b4CCe097c90f1, value: 1010)
    │   │   └─ ← [Return] true
    │   ├─ [8993] WETHOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 200000000000 [2e11], 1, 1, 1
    │   ├─ [8993] WBTCOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 6000000000000 [6e12], 1, 1, 1
    │   └─ ← [Revert] DSCEngine__BreaksHealthFactor(999999999999999999 [9.999e17])
    └─ ← [Revert] DSCEngine__BreaksHealthFactor(999999999999999999 [9.999e17])

  [86981] Invariants::invariant_protocolMustHaveMoreValueThanTotalSupply()
    ├─ [2349] DecentralizedStableCoin::totalSupply() [staticcall]
    │   └─ ← [Return] 52374492275032028193093282342999 [5.237e31]
    ├─ [2607] WETH::balanceOf(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512]) [staticcall]
    │   └─ ← [Return] 71449916770627364666129628308 [7.144e28]
    ├─ [2607] WBTC::balanceOf(DSCEngine: [0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512]) [staticcall]
    │   └─ ← [Return] 15408110124076407934189866671 [1.54e28]
    ├─ [14958] DSCEngine::getUsdValue(WETH: [0xA8452Ec99ce0C64f20701dB7dD3abDb607c00496], 71449916770627364666129628308 [7.144e28]) [staticcall]
    │   ├─ [8993] WETHOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 200000000000 [2e11], 1, 1, 1
    │   └─ ← [Return] 142899833541254729332259256616000 [1.428e32]
    ├─ [14958] DSCEngine::getUsdValue(WBTC: [0xDB8cFf278adCCF9E9b5da745B44E754fC4EE3C76], 15408110124076407934189866671 [1.54e28]) [staticcall]
    │   ├─ [8993] WBTCOracle::latestRoundData() [staticcall]
    │   │   └─ ← [Return] 1, 6000000000000 [6e12], 1, 1, 1
    │   └─ ← [Return] 924486607444584476051392000260000 [9.244e32]
    ├─ [0] console::log("totalSupply", 52374492275032028193093282342999 [5.237e31]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] console::log("wethValue", 142899833541254729332259256616000 [1.428e32]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] console::log("wbtcValue", 924486607444584476051392000260000 [9.244e32]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] console::log("totalWethDeposited", 71449916770627364666129628308 [7.144e28]) [staticcall]
    │   └─ ← [Stop]
    ├─ [0] console::log("totalWbtcDeposited", 15408110124076407934189866671 [1.54e28]) [staticcall]
    │   └─ ← [Stop]
    ├─ [2384] Handler::deposittimesCalled() [staticcall]
    │   └─ ← [Return] 6
    ├─ [0] console::log("deposittimesCalled", 6) [staticcall]
    │   └─ ← [Stop]
    ├─ [2361] Handler::halfMinttimesCalled() [staticcall]
    │   └─ ← [Return] 1
    ├─ [0] console::log("halfMinttimesCalled", 1) [staticcall]
    │   └─ ← [Stop]
    ├─ [2318] Handler::MinttimesCalled() [staticcall]
    │   └─ ← [Return] 1
    ├─ [0] console::log("MinttimesCalled", 1) [staticcall]
    │   └─ ← [Stop]
    ├─ [2317] Handler::halfredeemtimesCalled() [staticcall]
    │   └─ ← [Return] 0
    ├─ [0] console::log("halfredeemtimesCalled", 0) [staticcall]
    │   └─ ← [Stop]
    ├─ [2428] Handler::redeemtimesCalled() [staticcall]
    │   └─ ← [Return] 0
    ├─ [0] console::log("redeemtimesCalled", 0) [staticcall]
    │   └─ ← [Stop]
    └─ ← [Stop]

Suite result: FAILED. 0 passed; 1 failed; 0 skipped; finished in 4.29ms (2.47ms CPU time)

Ran 1 test suite in 1.74s (4.29ms CPU time): 0 tests passed, 1 failed, 0 skipped (1 total tests)

Failing tests:
Encountered 1 failing test in test/fuzz/Invariants.t.sol:Invariants
[FAIL. Reason: invariant_protocolMustHaveMoreValueThanTotalSupply persisted failure revert]
        [Sequence]
                sender=0x00000000000000000000000000000000000001a1 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[3998, 3041954474 [3.041e9]]
                sender=0x00000000000000000000000000000000000001ac addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[3, 659]
                sender=0x0000000000000000000000000000237A9926993e addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[14342017254695067634718324 [1.434e25], 330163590867193692802 [3.301e20]]
                sender=0x43ADca325f44004E3b96DB22d88474fd3e329774 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[0, 61246308997971103485613883047664239530092505335637118479394 [6.124e58]]
                sender=0x000000000000266C7f4022a9090b4CCe097c90f1 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[87870011255095998549021738332682 [8.787e31], 223693669477094990048954286412934557635437368192243 [2.236e50]]
                sender=0x000000000000000019f683605c9F18e44100D758 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=depositCollateral(uint256,uint256) args=[1757799953 [1.757e9], 2889377557621965550785512763164741263435259909653690197 [2.889e54]]
                sender=0x0ea808447dE12FD3Ec796709Ddc238ABE079fbAc addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=mintDsc(uint256,uint256) args=[115792089237316195423570985008687907853269984665640564039457584007913129639934 [1.157e77], 3621958311209530 [3.621e15]]
                sender=0x000000000000266C7f4022a9090b4CCe097c90f1 addr=[test/fuzz/Handler.t.sol:Handler]0x2e234DAe75C793f67A35089C9d99245E1C58470b calldata=redeemCollateral(uint256,uint256) args=[3856632708 [3.856e9], 1010]
 invariant_protocolMustHaveMoreValueThanTotalSupply() (runs: 1, calls: 1, reverts: 1)

Encountered a total of 1 failing tests, 0 tests succeeded