import { abi as POOL_ABI } from '@otterswap/core/artifacts/contracts/OtterSwapPool.sol/OtterSwapPool.json'
import { Contract, Wallet } from 'ethers'
import { IOtterSwapPool } from '../../typechain'

export default function poolAtAddress(address: string, wallet: Wallet): IOtterSwapPool {
  return new Contract(address, POOL_ABI, wallet) as IOtterSwapPool
}
