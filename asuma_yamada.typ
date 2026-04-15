#import "alta-typst.typ": alta, icon, skill, styled-link, term

#alta(
  name: "Asuma Yamada",
  links: (
    (name: "email", link: "mailto:yamadaasuma@gmail.com"),
    (
      name: "website",
      link: "https://posaune0423.com",
      display: "posaune0423.com",
    ),
    (
      name: "github",
      link: "https://www.github.com/posaune0423/",
      display: "@posaune0423",
    ),
    (
      name: "linkedin",
      link: "https://www.linkedin.com/in/posaune0423/",
      display: "linkedin.com/in/posaune0423",
    ),
  ),
  tagline: [Software engineer building AI products, web3 applications, and open source developer tools across TypeScript, smart contracts, and product-focused full-stack systems.],
  [
    == Experience

    === Co-Founder / CTO \
    _Daiko Labs_\
    #term[Apr 2025 --- Present][Tokyo / New York]

    - Building Daiko, a Solana-native vibe trading product focused on actionable wallet intelligence.
    - Leading product architecture and engineering across agents, trading workflows, and user-facing product direction.
    - Helped the team place #strong[4th] in the Solana Breakout Hackathon.

    === Contract Engineer \
    _PixeLAW_\
    #term[Aug 2024 --- Present][Remote]

    - Worked on autonomous world gameplay and frontend systems for a Starknet / Redstone project.
    - Built product features spanning Cairo contracts, React frontends, and high-performance WebGL rendering.
    - Contributed back to the Dojo ecosystem through OSS usage and implementation work.

    === Software Engineer \
    _DeNA Co., Ltd._\
    #term[Apr 2024 --- Mar 2025][Tokyo, Japan]

    - Built an internal AI workflow platform for safe enterprise LLM adoption as a new-graduate engineer.
    - Integrated and extended Dify-based workflows with multimodal, RAG, and custom internal app capabilities.
    - Supported company-wide AI enablement through implementation, documentation, and developer advocacy.

    === Tech Lead \
    _VELVETT PTE. LTD._\
    #term[Jun 2023 --- Mar 2024][Singapore / Remote]

    - Led engineering for Unikura, an RWA marketplace, across product design, frontend, and smart contract delivery.
    - Took over technical leadership during team transition and drove architecture decisions in a web3 product environment.
    - Worked in English with distributed teammates while mentoring junior engineers and reviewing production code.

    === Software Engineer \
    _Ango-ya LLC / VWBL Protocol_\
    #term[Dec 2021 --- 2023][Remote]

    - Developed TypeScript SDKs, demo apps, and smart contract implementations for the VWBL NFT access-control protocol.
    - Worked across frontend, backend, package release flows, and protocol-level product enablement.

    === Frontend Engineer \
    _CoinOtaku Inc._\
    #term[May 2021 --- Mar 2022][Tokyo, Japan]

    - Joined at product launch to build NFT marketplace features from UI design through AWS-backed frontend delivery.
    - Focused on frontend architecture, product UX, and blockchain-connected application flows.

    == Selected OSS Projects

    - #styled-link("https://github.com/posaune0423/use-haptic")[use-haptic] (#icon("star")84): React hook for Safari haptic feedback via the `input[switch]` API.
    - #styled-link("https://github.com/posaune0423/mdv")[mdv] (#icon("star")10): Rust-based Markdown viewer for the terminal with image, diagram, and typography support.
    - #styled-link("https://github.com/posaune0423/kms-viem-account-mini")[kms-viem-account-mini] (#icon("star")1): Minimal AWS KMS-backed viem account implementation for Ethereum signing.
    - #styled-link("https://github.com/posaune0423/uuid256")[uuid256] (#icon("star")2): Small utility for bridging UUID canonical values and uint256 representations.
    - #styled-link("https://github.com/posaune0423/portfolio")[portfolio] (#icon("star")1): Portfolio site inspired by PlayStation 2 startup and browser UX, built for Cloudflare.

    == Skills

    - TypeScript, React, Next.js, Node.js, Go, Rust, Solidity, Cairo
    - Cloudflare Workers, AWS, GCP, Vercel, PostgreSQL, Docker
    - Product engineering, smart contracts, AI workflows, frontend architecture

    == Education

    === Bachelor of Arts in Economics \
    _Aoyama Gakuin University_\
    #term[Graduated Sep 2023][Tokyo, Japan]

    == Selected Qualifications

    - Applied Information Technology Engineer Examination (Dec 2020)
    - TOEFL ITP 560
    - Japanese (native), English (working proficiency)

  ],
)
