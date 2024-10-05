<div align="center">

<h1>Solidity Advanced</h1>

<strong>Học cách phát triển Smart Contract Solidity nâng cao bằng thư viện Foundry.</strong>

<p align="center">
<a href="https://www.youtube.com/@VBIAcademy">
        <img src=".github/images/vbi-powered-badge.png" width="145" alt=""/></a>
</p>
Chào mừng bạn đến với repository của khoá học Solidity Advanced. <br/> Khoá học này được phát triển bởi <a href="https://www.youtube.com/@VBIAcademy">VBI Academy</a> và <a href="https://www.terrancrypt.com/">Terran Crypt</a>.

</div>

---
> Nội dung trong khoá học này đã được sự cho phép chọn lọc và dịch thuật từ các khoá học được phát triển và giảng dạy bởi [Cyfrin Updraft](https://updraft.cyfrin.io/) và [Patrick Collins](https://www.youtube.com/@PatrickAlphaC).
---

- [Section 1: ERC20 Token - Crypto Currency](#section-1-erc20-token---crypto-currency)
  - [ERC là gì?](#erc-là-gì)
  - [EIPs là gì?](#eips-là-gì)
  - [ERC20 Token Standard là gì?](#erc20-token-standard-là-gì)
  - [Dùng ERC20 để làm gì?](#dùng-erc20-để-làm-gì)
  - [Tạo ra một Token ERC20 thế nào?](#tạo-ra-một-token-erc20-thế-nào)
  - [Sử dụng thư viện OpenZeppelin](#sử-dụng-thư-viện-openzeppelin)
  - [Contract Building \& Deployment](#contract-building--deployment)
- [Section 2: NFTs Collection](#section-2-nfts-collection)
  - [NFT là gì?](#nft-là-gì)
  - [NFT Collection là gì?](#nft-collection-là-gì)
  - [NFT Marketplace là gì?](#nft-marketplace-là-gì)
- [Section 3: DeFi | Stablecoin](#section-3-defi--stablecoin)
  - [Decentralized Finance là gì?](#decentralized-finance-là-gì)
  - [Stablecoin là gì?](#stablecoin-là-gì)
- [Section 4: Merkle Airdrop \& Signature](#section-4-merkle-airdrop--signature)
  - [Airdrop là gì?](#airdrop-là-gì)
  - [Merkle Tree là gì?](#merkle-tree-là-gì)
- [Section 5: Upgradable Smart Contract](#section-5-upgradable-smart-contract)
  - [Upgradable Smart Contract là gì?](#upgradable-smart-contract-là-gì)
- [Section 6: Account Abstraction](#section-6-account-abstraction)
  - [Sử dụng Private Key để Sign Transactions](#sử-dụng-private-key-để-sign-transactions)
  - [Tuỳ chọn xác thực linh hoạt](#tuỳ-chọn-xác-thực-linh-hoạt)
- [Section 7: DAO | Governance](#section-7-dao--governance)
  - [Decentralized Autonomous Organization là gì?](#decentralized-autonomous-organization-là-gì)
- [Section 8: Security \& Audit](#section-8-security--audit)
  - [Smart Contract Security là gì?](#smart-contract-security-là-gì)
  - [Audit là gì?](#audit-là-gì)

# Section 1: ERC20 Token - Crypto Currency

## ERC là gì?

Ethereum ERC (Ethereum Request for Comment) là các tiêu chuẩn và đề xuất kỹ thuật được tạo ra để cải thiện và mở rộng hệ sinh thái Ethereum. ERC được sử dụng để định nghĩa các giao thức và quy chuẩn cho hợp đồng thông minh trên Ethereum, đảm bảo tính tương thích giữa các ứng dụng và hợp đồng với nhau.

Trước khi một ERC được đi vào sử dụng như một tiêu chuẩn, nó sẽ chạy qua nhiều bước đề xuất gọi là EIPs.

## EIPs là gì?

Ethereum Improvement Proposals (EIPs) - Đề xuất cải tiến Ethereum (EIP) mô tả các tiêu chuẩn cho nền tảng Ethereum, bao gồm các thông số kỹ thuật giao thức cốt lõi, API của khách hàng và các tiêu chuẩn hợp đồng.

Trang chủ: https://eips.ethereum.org/


## ERC20 Token Standard là gì?

ERC20 là các hợp đồng thông minh trên blockchain Ethereum đại diện cho một loại mã thông báo (thưc ra là không thể dịch sát nghĩa được, token là token).

Nếu bạn có nghe đến USDT, USDC, LINK, UNI, DAI,... hay hàng ngàn token khác được deploy trên Ethereum blockchain thì đó đều là những ERC20 Token.

Nếu bạn có biết tới đồng token của dự án Chainlink thì nó gọi là ERC677, tuy nhiên về cơ bản nó vẫn là ERC20.

## Dùng ERC20 để làm gì?

- Governance Token: token quản trị cho một dự án.
- Bảo mật mạng lưới cơ bản.
- Tạo ra một loại tài sản tổng hợp.
- Hoặc bất kỳ điều gì khác...

## Tạo ra một Token ERC20 thế nào?

Tất cả những thứ chúng ta cần làm là tạo ra một smart contract tuân thủ theo tiêu chuẩn được giải thích [tại đây](https://eips.ethereum.org/EIPS/eip-20). Có tất cả những functions trong nội dung tiêu chuẩn được đề cập.

## Sử dụng thư viện OpenZeppelin

Tất nhiên chúng ta hoàn toàn có thể tạo ra một contract ERC20 thủ công bằng cách tuân thủ tiêu chuẩn. Nhưng nếu bạn cần một bộ mã nguồn có sẵn, an toàn hơn, đã được audit (kiểm toán) cho việc tạo ra một ERC20 Token contract thì có thể follow thư viện OpenZeppelin.

- Trang chủ: [OpenZeppelin](https://www.openzeppelin.com/)
- Github: [OpenZeppelin Github](https://github.com/OpenZeppelin/openzeppelin-contracts)

Cài đặt vào dự án Foundry: 

```bash
forge install https://github.com/OpenZeppelin/openzeppelin-contracts@v5.0.2 --no-commit
```

## Contract Building & Deployment

Final code: [tại đây](https://github.com/openedu101/solidity-advanced/tree/01-erc20)

# Section 2: NFTs Collection

## NFT là gì?

NFT (Non-Fungible Token) là một loại token mà không có thể được đổi sang một token khác. Nó có thể được sử dụng để làm một số loại tài sản khác nhau như ví dụ như một tài sản đồ họa, một tài sản của một công ty, một tài sản của một người, v.v.

## NFT Collection là gì?

NFT Collection là một tập hợp các NFT được lưu trữ trên một blockchain. Nó có thể được sử dụng để làm một số loại tài sản khác nhau như ví dụ như một tài sản đồ họa, một tài sản của một công ty, một tài sản của một người, v.v.

## NFT Marketplace là gì?

NFT Marketplace là một dịch vụ để làm một số loại tài sản khác nhau như ví dụ như một tài sản đồ họa, một tài sản của một công ty, một tài sản của một người, v.v. được cung cấp bởi các cộng đồng hoặc các người dùng.

# Section 3: DeFi | Stablecoin

## Decentralized Finance là gì?

## Stablecoin là gì?

# Section 4: Merkle Airdrop & Signature

## Airdrop là gì?

## Merkle Tree là gì?

# Section 5: Upgradable Smart Contract

## Upgradable Smart Contract là gì?

# Section 6: Account Abstraction

Account Abstraction (trừu tượng hoá tài khoản) là một khái niệm khá khó để có thể hiểu sâu. Đơn giản là tạo ra những smart account (hay thẳng ra là các smart contract) giúp đại diện cho một cái ví để thực hiện những logic phức tạp hơn mà ví thông thường không làm được.

## Sử dụng Private Key để Sign Transactions

Trong các phần trước, khi cần ký một giao dịch nào đó như giao dịch deploy contract hay giao dịch chuyển tiền, tương tác với smart contract thì chúng ta cần private key được lưu trữ trong Metamask hoặc trong công cụ `cast wallet` trong Foundry.

Điều này không tốt, vì đôi lúc chúng ta không lưu lại private key thì sao? Nếu chúng ta bị mất private key thì coi như chúng ta không còn quyền truy cập vào tài khoản nữa, mà không có cách nào để khôi phục tài khoản.

Account Abstraction giải quyết điều này bằng cách cho người dùng không cần phải sử dụng private key để sign transaction nữa. Người dùng có thể sử dụng một loại key (khoá) khác, thân thiện với người dùng hơn và an toàn hơn. 

Đơn giản hoá quy trình sign transaction và giảm nguy cơ mất quyền truy cập vào tài khoản, tăng cường tính bảo mật và trải nghiệm người dùng.

Cái loại **key** mới này có thể là bất kỳ thứ gì bạn có thể nghĩ ra (miễn là nó có thể mã hoá được). Điều này có nghĩa là bạn có thể sử dụng điện thoại, tài khoản Google hoặc thậm chí là dấu vân tay của bạn để ký giao dịch. 

Khả năng với Account Abstraction là vô tận. Mình rất yêu thích chủ đề này và liên tục đào sâu vào nó trên nhiều blockchain khác nhau và mình khuyên bạn cũng nên cùng học với mình nhé.

## Tuỳ chọn xác thực linh hoạt

Khi bạn sign transaction truyền thống bằng private key thì có nghĩa là chỉ có chủ sở hữu tài khoản mới có thể sign và send transaction. Với Account Abstraction thì có thể linh hoạt hơn trong cách xác thực giao dịch.

Điều này có nghĩa là bạn có thể nhờ người khác thanh toán giúp phí giao dịch (gas fee) khi giao dịch trong mạng lưới blockchain.

# Section 7: DAO | Governance

## Decentralized Autonomous Organization là gì? 

# Section 8: Security & Audit

## Smart Contract Security là gì?

## Audit là gì?