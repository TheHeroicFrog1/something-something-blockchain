# Blue CarbonChain (DecarbonSea) 🌊🌱

> **I built it for sih (smart india hackthon) but got rejected in the 1st round, so its in a meh state putting it here because it was the 1st thing i built so i want to archive it**.

## Overview
This repository contains a functional proof-of-concept for a **Blockchain-Based Blue Carbon Registry and MRV System**. The goal of the project was to solve the trust deficit in the climate tech market by tokenizing blue carbon assets (mangroves, seagrass) using an immutable ledger.

While the project didn't make it past the hackathon screening, the repository includes a fully functional frontend UI and the foundational Solidity smart contracts needed to mint, trade, and retire carbon credits.

## Repository Structure
* `/frontend/index.html` - The complete frontend application (UI + Web3 Logic).
* `/contracts/BlueCarbonCredit.sol` - The ERC-1155 smart contract logic.
* `/docs/SIH-Presentation.pdf` - The original system design and architecture pitch deck.

## Features Built
- **Web3 Wallet Integration:** Connects seamlessly with MetaMask using `ethers.js`.
- **Role-Based Simulation:** UI allows toggling between an "Admin/Project" wallet and a "Corporate Buyer" wallet to demonstrate the supply chain.
- **On-Chain Actions:**
  - **Minting:** Admins can mint new batches of carbon credits.
  - **Trading:** Credits can be securely transferred between wallet addresses.
  - **Retiring (Offsetting):** Buyers can permanently "burn" credits to claim environmental offsets.
- **Real-Time Tracking:** Includes an activity log to track on-chain interactions and wallet balances.

## Tech Stack
* **Frontend:** HTML5, Tailwind CSS, JavaScript
* **Web3 Library:** `ethers.js` (v5.6)
* **Smart Contracts:** Solidity (^0.8.20)
* **Token Standard:** ERC-1155 (Semi-Fungible Tokens via OpenZeppelin)

## How to Run the Prototype Locally
1. Clone this repository.
2. Open `frontend/index.html` directly in your web browser.
3. Ensure you have the [MetaMask extension](https://metamask.io/) installed.
4. Set up at least two accounts in MetaMask to test the transfer functionality between the Admin and the Buyer.
5. Click **"Connect"** in the top right corner to start interacting with the Web3 interface.

## System Architecture Highlights
Though this is a prototype, the underlying system design was built to handle real-world MRV (Measurement, Reporting, and Verification) friction:
* **Why ERC-1155?** Carbon credits are issued in distinct "vintages" and batches. ERC-1155 is the perfect standard to handle multiple token IDs within a single contract efficiently.
* **Access Control:** The `Ownable` modifier restricts credit minting strictly to the protocol admin, preventing fraudulent inflation of carbon assets.

---
