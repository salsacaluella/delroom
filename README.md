# DelRooms App – Booking & Checkout Flow Documentation

This document provides an overview of the operational workflows implemented in the **DelRooms App**, a mobile application designed to streamline the management of boarding house (kost) rentals. It outlines two major flows handled by the system: **Initial Booking** and **Checkout**.

---

## Contents

- [1. Initial Booking Flow](#1-initial-booking-flow)
- [2. Checkout Flow](#2-checkout-flow)
- [3. Operational Notes](#3-operational-notes)

---

## 1. Initial Booking Flow

The following outlines the user journey from the initial room inquiry to the final handover of access.

### 1.1 Check Room Availability
- The user inquires about room availability.
- If the requested room is available, the process continues to confirmation.

### 1.2 Confirm with User
- The system (or admin) contacts the user to confirm their interest.
- If the user agrees, proceed to the booking process.

### 1.3 Booking & Payment
- A booking is created in the system.
- An invoice is generated and sent to the user.
- The user completes the payment.
- Upon successful payment verification, the process continues.

### 1.4 Booking Validation & Room Preparation
- The system validates the booking and reserves the room.
- The following items are prepared:
  - Room access card
  - Rental agreement document
  - TV and AC remote control

### 1.5 Transfer to Housekeeping
- Housekeeping (HK) receives the access card, rental agreement, and remote control.
- The user signs the rental agreement and receives the access items.
- A signed copy is archived for documentation.

### 1.6 Final Room Preparation & User Notification
- The room is cleaned and prepared based on an internal checklist.
- If the checklist is not passed, the cleaning process is repeated.
- Once ready, the user is notified, and the room is handed over.

---

## 2. Checkout Flow

This section outlines the standard process for when a user ends their tenancy.

### 2.1 Confirm Checkout Intent
- The user confirms that they will no longer occupy the room.
- A facility checklist is prepared by the administrator or housekeeping staff.

### 2.2 Room Inspection & Deposit Approval
- The room is inspected against the facility checklist.
- If items are missing or damaged, the final decision is made by the Supervisor (SPV).
- If approved, the deposit refund process is initiated.

### 2.3 Return of Access Items
- The user returns the room access card and remote control (TV and AC).
- The returned items are verified and logged in the system.

### 2.4 Laundry & Inventory Management
- Used linens (sheets, blankets) are collected for laundry.
- The laundry process is tracked and must meet the assigned due date.
- A signed receipt and photograph of the transaction are recorded.

- Stock circulation is updated as follows:
  - Dirty → cleaned → restocked
  - Cleaning supplies and inventory levels are also logged

### 2.5 Smart Lock & Data Audit
- Smart lock logs and room usage history are audited.
- All data is verified and archived for future reference.

---

## 3. Operational Notes

- Room inspections must be completed before deposit returns are processed.
- Photo documentation should accompany all signed forms, handovers, and laundry transactions.
- Laundry workflows and inventory cycles must follow the assigned timelines and logging standards.

---

**Maintained by:** Atheron Mobile Team  
**Project:** DelRooms  
**Version:** Alpha 1.0 – Internal Development

