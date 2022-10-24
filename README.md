# ndb-pricehistory
Gathering crypto currency pricehistory as plan9's ndb database.

The database will be stored as 4h candlestick charts, structured :

open:
close:
high:
low:

I will try to build it with scaling in mind, since I want to extend the datascraping from just bitcoin price to multiple crypto prices, ebay prices, chrono24prices, real estate prices of selected areas (if I can find that data public), stock prices and forrex prices. The end goal would be to be able to analyze costum data against oneother.

For starters, I will write the datascraping program in bash since that is the language I'm most comfortable in, but the end goal will be to rewrite it in plan9's rc shell.
