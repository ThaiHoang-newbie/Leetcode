select pow(pow(max(XCoordinate) - min(XCoordinate), 2) + pow(max(YCoordinate) - min(YCoordinate), 2), 0.5) as A
  from HOUSES