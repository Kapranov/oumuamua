# Naive

**TODO: Add description**

```
bash> mix new naive --sup
bash> iex -S mix

iex> Naive.Trader.start_link(%{symbol: "XRPUSDT", profit_interval: 0.01})
iex> Streamer.Binance.start_link("xrpusdt", [])
```

### 7 Feb 2021 by Oleg G.Kapranov
