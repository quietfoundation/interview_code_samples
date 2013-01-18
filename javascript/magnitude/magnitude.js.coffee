LOG_BASE1K_DIVSOR = Math.log(1000)

MAGNITUDE_SUFFIXES = ['', 'K', 'M', 'B', 'T']

magnitudeFormat = (number) ->
  return '' + number if number < 1000

  logBase1K = Math.log(number)/LOG_BASE1K_DIVSOR
  suffixIndex = Math.floor(logBase1K)
  suffix = MAGNITUDE_SUFFIXES[suffixIndex]
  shortNum = Math.round(number / Math.pow(1000, suffixIndex))

  '' + shortNum + suffix
