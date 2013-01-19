package magnitude

object Magnitude {
  val SUFFIXES = List[String]("", "K", "M", "B")

  def format(num: Long, suffixes: List[String] = SUFFIXES): String =
    suffixes match {
      case suffix::suffixTail =>
        if (num < 1000) {
          num + suffix
        } else {
          format(num / 1000, suffixTail)
        }
      case Nil => num + "T"
    }
}
