package magnitude

object MagnitudeApp {

  def assertEqual(a: Long, b: String): Unit = {
    val str = Magnitude.format(a)
    if (!str.equals(b))
      throw new RuntimeException("Failed %s not equal to %s".format(str, b))
  }
  
  def main(args: Array[String]): Unit = {
    assertEqual(0, "0")
    assertEqual(10, "10")
    assertEqual(23456, "23K")
    assertEqual(312344000, "312M")
    assertEqual(1454000000, "1B")
    assertEqual(12344000000000L, "12T")
  }
}