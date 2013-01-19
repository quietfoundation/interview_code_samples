LOG_BASE1K_DIVSOR = Math.log(1000)

MAGNITUDE_SUFFIXES = ['', 'K', 'M', 'B', 'T']

Magnitude = {
  format: function (number) {
    if (number < 1000) return '' + number;

    var logBase1K = Math.log(number) / LOG_BASE1K_DIVSOR
    var suffixIndex = Math.floor(logBase1K)
    var suffix = MAGNITUDE_SUFFIXES[suffixIndex]
    var shortNum = Math.round(number / Math.pow(1000, suffixIndex))

    return '' + shortNum + suffix
  }
}
