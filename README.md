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

# Phát tiển một ERC20 Token - Crypto Currency

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
$ forge install https://github.com/OpenZeppelin/openzeppelin-contracts@v5.0.2 --no-commit
```
