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
    #term[Apr 2025 --- Dec 2025][Tokyo / New York]

    - Built #styled-link("https://www.daiko.ai/en")[Daiko] in a *2-person* founding team, shipping a Solana-native trading product with wallet intelligence, personalized AI sell signals, alerts, and wallet-driven trading workflows.
    - Implemented Solana DEX indexers, token and wallet analytics, notification pipelines, and the core product as a solo engineer, developing deep working knowledge of Solana, DEXs, stablecoins, and traditional financial market structures.

    === Contract & game engineer \
    _PixeLAW_\
    #term[Aug 2024 --- 2025][Remote]

    - Built product features across Cairo contracts, React frontends, and high-performance WebGL gameplay systems.
    - Built fully on-chain game logic and frontend systems on Starknet, contributing to a *USD 25K* Starknet Foundation Seed Grant.
    - Contributed commits to core libraries in the Dojo ecosystem, including dojo and dojo.js, while feeding implementation learnings back into the framework.

    === Software Engineer \
    _DeNA Co., Ltd._\
    #term[Apr 2024 --- Mar 2025][Tokyo, Japan]

    - Built an internal AI platform at #styled-link("https://dena.com/intl/")[DeNA], one of Japan's largest gaming companies, with permissions, auditing, and tool execution, driving *40,000 hours* of company-wide productivity savings through safe enterprise LLM adoption.
    - Extended Dify-based workflows with multimodal, RAG, and custom internal applications, and helped publish Dify-related OSS with the team that earned *200+ GitHub stars*.
    - Supported company-wide AI enablement through reusable templates, documentation, internal advocacy, and production-grade implementations used by multiple business teams.

    === Tech Lead \
    _VELVETT PTE. LTD._\
    #term[Jun 2023 --- Mar 2024][Singapore / Remote]

    - Led engineering for #styled-link("https://app.unikura.xyz/")[Unikura], a global startup that raised *USD 3M*, across product design, frontend, backend, and smart contract delivery.
    - Drove serverless architecture and technical decision-making in an international English-speaking team, generating *50,000+* on-chain transactions through the product.

    === Software Engineer \
    _Ango-ya LLC / VWBL Protocol_\
    #term[Dec 2021 --- 2023][Remote]

    - Built protocol implementations, TypeScript SDKs, demo apps, landing pages, and supporting tools for the #styled-link("https://vwbl-protocol.org/")[VWBL Protocol] NFT access-control protocol.
    - Worked across access-control flows, frontend and backend integration, package releases, and protocol-level enablement for client projects.

    === Frontend Engineer \
    _CoinOtaku Inc._\
    #term[May 2021 --- Mar 2022][Tokyo, Japan]

    - Built an early NFT marketplace from UI design through AWS-backed frontend delivery during the product launch phase.
    - Owned frontend architecture, product UX, and blockchain-connected purchase and account flows, including advanced fractionalized NFT marketplace features in the early market.

    == Awards & Speaking

    - #styled-link("https://x.com/ProtocolCamp/status/2011649545470689371")[SMBC Nikko Track Winner, Protocol Camp]: Daiko won *USD 5K* from SMBC Nikko Securities, one of Japan's major securities firms, for advancing DeFi decision-making with AI-powered trading agents.
    - #styled-link("https://www.starknet.io/grants/seed-grants/")[Starknet Foundation Seed Grant] (USD 25K), Sep 2025 --- Dec 2025: Received funding for p_dash and Pixelaw, a fully on-chain game built on Starknet with CairoVM.
    - #styled-link("https://arena.colosseum.org/projects/explore/daiko")[Colosseum Breakout Hackathon] AI Track 4th Place, Mar 2025 --- May 2025: Daiko AI placed 4th with personalized AI-powered sell signals for Solana traders.
    - #styled-link("https://www.youtube.com/watch?v=Oa37E_jVEo4&t=1916s")[Solana Developer Bootcamp 2026 - Session 1]: Spoke on the Solana Foundation main channel for Solana Japan.

    == Selected Projects

    - #styled-link("https://posaune0423.com")[posaune0423.com]: Next.js portfolio recreating the PlayStation 2 startup and browser UX with Three.js, React Three Fiber, custom interaction design, and Cloudflare Workers deployment via OpenNext.
    - #styled-link("https://doomindex.fun")[DOOM INDEX]: Cloudflare-first generative art project using Workers, KV, D1, and R2 to turn live market context into on-chain paintings, launch a pump.fun token that reached *USD 377K ATH*, and make generated art mintable as NFTs.

    == Selected OSS

    - #styled-link("https://github.com/posaune0423/use-haptic")[use-haptic] (#icon("star")84): React hook for Safari haptic feedback via the `input[switch]` API.
    - #styled-link("https://github.com/posaune0423/mdv")[mdv] (#icon("star")11): Browser-quality Markdown viewer for Ghostty and Kitty, built in Rust with WebKit snapshots and the Kitty Graphics Protocol to render GitHub-styled docs, images, Mermaid diagrams, syntax highlighting, and GFM callouts in the terminal.

    == Skills

    - TypeScript, React, Next.js, Rust, Solidity, Cairo, Go, Python
    - Cloudflare, AWS, GCP, PostgreSQL, Docker, AI workflows, smart contracts
    - Product engineering, frontend architecture, developer tooling, AI systems, and on-chain applications

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
