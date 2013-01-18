package magnitude

object MagnitudeApp {

  def assertEqual(a: String, b: String): Unit = {
    if (!a.equals(b))
      throw new RuntimeException("Failed %s not equal to %s".format(a, b))
  }
  
  def main(args: Array[String]): Unit = {
    assertEqual(Magnitude.format(100), "100")
    assertEqual(Magnitude.format(10000), "10K")
    assertEqual(Magnitude.format(10000000000000L), "10T")
  }
}