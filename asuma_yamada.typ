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
  tagline: [Financial Infrastructure Engineer building trading systems, market-data pipelines, transaction-oriented analytics, and secure AI workflows. Built a Solana-native trading product with a Rust transaction indexer, TimescaleDB analytics, Telegram workflows, automated trading bots, and LLM-powered analysis of on-chain trading activity.],
  [
    == Core Skills

    - Trading / Data: transaction indexing, wallet analytics, trading workflows, execution automation, market-data pipelines
    - Backend / Infra: Rust, TypeScript, PostgreSQL, TimescaleDB, Docker, Cloudflare Workers, AWS
    - AI / Finance: LLM-powered analytics, natural-language data queries, AI sell signals, Solana, DeFi, digital assets

    == Work Experience

    === Co-Founder / CTO \
    _Daiko Labs_\
    #term[Apr 2025 --- Dec 2025][Tokyo / New York]

    - Built #styled-link("https://www.daiko.ai/en")[Daiko] as a founding CTO, shipping a Solana-native trading intelligence product with wallet behaviour analytics, AI sell signals, Telegram workflows, and automated trading bots.
    - Developed a high-speed Solana transaction indexer in *Rust* using *TimescaleDB* to support trading analytics, token-flow investigation, and wallet-level analysis.
    - Built an LLM-powered query interface for analysing complex on-chain trading data through natural-language investigation of trader behaviour, token flows, and execution context.
    - Designed the full system architecture across data ingestion, storage, analytics, Telegram integration, and trading automation.

    === Software Engineer \
    _DeNA Co., Ltd._\
    #term[Apr 2024 --- Mar 2025][Tokyo, Japan]

    - Built a secure enterprise AI platform at #styled-link("https://dena.com/intl/")[DeNA] with permissions, audit trails, tool execution, and production-grade workflow automation, contributing to *40,000 hours* of company-wide productivity savings.
    - Designed reusable internal workflows and application templates for safe adoption of LLM-based systems across business teams.
    - Extended Dify-based workflows with multimodal, RAG, and custom internal applications, and helped publish Dify-related OSS with the team that earned *200+ GitHub stars*.

    === Tech Lead \
    _VELVETT PTE. LTD._\
    #term[Jun 2023 --- Mar 2024][Singapore / Remote]

    - Led engineering for #styled-link("https://app.unikura.xyz/")[Unikura] (USD 3M seed), owning Solidity smart contracts, marketplace architecture, randomised asset distribution, and transaction-heavy blockchain flows.
    - Architected *RWA (Real World Asset)* systems connecting blockchain-based ownership records with physical logistics and delivery operations.
    - Drove technical decision-making in an international team and shipped systems that generated *50,000+* on-chain transactions.

    === Software Engineer \
    _Ango-ya LLC / VWBL Protocol_\
    #term[Dec 2021 --- 2023][Remote]

    - Designed and implemented Solidity smart contracts for decentralized access control over encrypted NFT content.
    - Built TypeScript SDKs, protocol integrations, and supporting tools for enterprise client adoption of the #styled-link("https://vwbl-protocol.org/")[VWBL Protocol].

    === Contract & game engineer \
    _PixeLAW_\
    #term[Aug 2024 --- 2025][Remote]

    - Built Cairo-based Starknet applications and high-performance web clients, contributing to a *USD 25K* Starknet Foundation Seed Grant.
    - Contributed implementation learnings to the *Dojo Framework* and `dojo.js` open-source ecosystem.

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
    - #styled-link("https://doomindex.fun")[DOOM INDEX]: Cloudflare-first market-context project using Workers, KV, D1, and R2 to transform live market signals into generated art and blockchain-connected minting flows.

    == Selected OSS

    - #styled-link("https://github.com/posaune0423/use-haptic")[use-haptic] (#icon("star")84): React hook for Safari haptic feedback via the `input[switch]` API.
    - #styled-link("https://github.com/posaune0423/mdv")[mdv] (#icon("star")11): Browser-quality Markdown viewer for Ghostty and Kitty, built in Rust with WebKit snapshots and the Kitty Graphics Protocol to render GitHub-styled docs, images, Mermaid diagrams, syntax highlighting, and GFM callouts in the terminal.

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
