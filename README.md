# SwiftIBPortalApi

An unofficial Swift API client for the InteractiveBrokers Portal API.

## Overview

The unofficial Python API client library for Interactive Broker Client Portal Web API allows individuals with Interactive Broker accounts to manage trades, pull historical and real-time data, manage their accounts, create and modify orders all using the Python programming language.

Interactive Broker offers multiple APIs for their clients. If you would like to learn more about their API offerings click on the links below:

- Trade Workstation API, please refer to the [official documentation](http://interactivebrokers.github.io/tws-api/)
- Client Portal API, please refer to the [official documentation](https://interactivebrokers.github.io/cpwebapi/)
- Third Party API, plesfe refer to the [official documentation](https://www.interactivebrokers.com/webtradingapi/)

## What's in the API

- Authentication
- Account Endpoints
- Market Data Endpoints
- Trade Endpoints
- Portfolio Endpoints
- Scanner Endpoints
- Portfolio Analysis Endpoints
- Web Streaming

## Setup Requirements

The following requirements must be met to use this API:

- A Interactive Broker account, you'll need your account password and account number to use the API.
- [Java 8](https://developers.redhat.com/products/openjdk/download) update 192 or higher installed (gateway is compatible with higher Java versions including OpenJDK 11).
- Download the [Beta Client Portal Gateway](https://www.interactivebrokers.com/en/index.php?f=45185)

## Documentation and Resources

- [Getting Started](https://interactivebrokers.github.io/cpwebapi/index.html#login)
- [Endpoints](https://interactivebrokers.com/api/doc.html)
- [Websockets](https://interactivebrokers.github.io/cpwebapi/RealtimeSubscription.html)

## Features

### Endpoint Verification

To use certain endpoints, you must call other endpoints before you use it. To help limit the amount of confusion for users, the library will call those endpoints for you behind the scenes so that way you don't need to worry about it.
