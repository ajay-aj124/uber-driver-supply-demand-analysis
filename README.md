# 🚗 Uber Driver Supply & Ride Demand Analysis

## 📌 Project Overview

This project analyzes Uber ride-booking data to understand **ride demand, booking outcomes, cancellations, waiting times, vehicle-type performance, locations, and operational patterns**.

The project uses **SQL** for database creation, data cleaning, validation, and business analysis, and **Microsoft Power BI** for interactive dashboard development.

The goal is to transform raw Uber booking data into meaningful business insights that can help understand demand patterns, service fulfilment, cancellation behavior, and operational performance.

---

## 🎯 Project Objectives

- Analyze overall Uber ride demand.
- Identify peak demand periods.
- Analyze demand by vehicle type.
- Identify high-demand pickup locations.
- Analyze completed, cancelled, incomplete, and unfulfilled bookings.
- Understand customer and driver cancellation reasons.
- Analyze average driver arrival time (VTAT).
- Analyze average customer waiting time (CTAT).
- Analyze booking value and ride distance.
- Analyze driver and customer ratings.
- Analyze payment-method usage.
- Build an interactive Power BI dashboard.
- Provide data-driven business recommendations.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **SQL / MySQL** | Database creation, data cleaning and analysis |
| **Microsoft Power BI** | Dashboard and data visualization |
| **Microsoft Excel** | Data inspection and documentation |
| **CSV** | Source dataset |
| **GitHub** | Project version control and portfolio |

---

## 📊 Dataset

The project uses an Uber NCR ride-booking dataset containing:

- **15,000 booking records**
- **21 columns**
- Data period: **January–December 2024**

### Important Dataset Fields

| Column | Description |
|--------|-------------|
| Date | Booking date |
| Time | Booking time |
| Booking ID | Unique booking identifier |
| Booking Status | Status of the booking |
| Customer ID | Customer identifier |
| Vehicle Type | Type of vehicle requested |
| Pickup Location | Ride pickup location |
| Drop Location | Ride destination |
| Avg VTAT | Average vehicle arrival time |
| Avg CTAT | Average customer waiting time |
| Cancelled by Customer | Customer cancellation indicator |
| Customer Cancellation Reason | Reason for customer cancellation |
| Cancelled by Driver | Driver cancellation indicator |
| Driver Cancellation Reason | Reason for driver cancellation |
| Incomplete Rides | Incomplete ride indicator |
| Incomplete Ride Reason | Reason for incomplete ride |
| Booking Value | Value of the booking |
| Ride Distance | Distance travelled |
| Driver Rating | Driver rating |
| Customer Rating | Customer rating |
| Payment Method | Payment method used |

---

# 🗄️ SQL Analysis

SQL is used as the analytical layer of the project.

### SQL Workflow

```text
Raw Dataset
     ↓
Database Creation
     ↓
Table Creation
     ↓
Data Cleaning
     ↓
Data Validation
     ↓
Business Analysis
     ↓
Power BI
