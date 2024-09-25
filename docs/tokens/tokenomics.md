---
sidebar_position: 30
---

# Tokenomics

## 1. Initial Minting:
 When a box is successfully opened, new tokens are minted on the Solana blockchain. 
 The quantity of tokens minted is predetermined based on the rules governing the box. 
 If a box remains unopened or the contents are burned, no new tokens are minted.

## 2. Box Creation and Opening Mechanism

### Box Creation:
Every minute, the system checks if there is an ongoing box in progress.

If no box is in progress, a new box is created. This box contains tokens that can potentially be minted and distributed (and potentially hold different rewards).

### Guessing Mechanism:
Participants in the network, referred to as Box Opener Nodes, submit guesses to unlock the box. 
Each guess represents an attempt to discover, by brute force, the correct password associated with the box.

## 3. Reward System and Token Distribution

### Correct Password Guess:
If a Box Opener Node successfully guesses the correct password, the box is opened. This action triggers the minting of new tokens on the Solana chain.
- Reward Distribution:
  - If the box is burned, the reward is 0 for everyone.
  - If the box is not burned, the reward is split as follows:
    - 20% of the total minted tokens go to the Box Opener who successfully unlocked the box.
    - 80% of the total minted tokens are split equally between all contributors who attempted to unlock the box.
- Example: If there are 100 tokens minted and 2 participants:
  - The Box Opener would receive 20 tokens (20%).
  - The remaining 80 tokens (80%) would be split equally between the two participants.
  - The Box Opener would get an additional 40 tokens (half of 80 tokens).
  - The other participant would receive 40 tokens.

The successful participant is recorded in the system's ledger.
This record includes details of their contribution and, if applicable, rewards in the form of newly minted tokens.

### Ledger Record:
The ledger serves as a historical record of all box openers, tracking contributions, rewards, and any penalties incurred from decay or failed attempts.

## 4. Token Burning Mechanism

### Burning Conditions:
If the box contents are deemed to have been burned (which might happen due to a time limit or decay), the newly minted tokens are also burned. 
This mechanism ensures that the total supply of tokens is controlled and that tokens are only circulated under certain conditions.

### Decay Mechanism:
If a correct password is not guessed, the system checks if the box contents have decayed, using a "Decay Dice" roll.
If decay occurs, the box contents are burned, and no tokens are minted.

## 5. vENV Token System

### vENV Token Minting:
If the box contents are not burned and no correct password is guessed within the designated timeframe, a vENV (virtual environment) token is minted.
The purpose of the vENV token could be multifaceted, potentially serving as a reward for participation, a placeholder for future rewards, or a utility token within your ecosystem.
