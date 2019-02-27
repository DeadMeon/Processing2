class Complexe {
  private float a; // partie réelle
  private float b; // partie imaginaire

  Complexe(float a, float b)
  {
    this.a = a;
    this.b = b;
  }

  Complexe(float a)
  {
    this(a, 0);
  }

  Complexe()
  {
    this(0, 0);
  }

  Complexe(Complexe z)
  {
    this(z.a, z.b);
  }

  String toString() {
    if (b == 0) 
    {
      return "" + a;
    }
    String s = "";
    if (a != 0)
    {
      s += a;
      if (b > 0)
      {
        s += "+";
      }
    }
    if (b == -1)
    {
      s += "-";
    } else if (b != 1)
    {
      s += b;
    }
    s += "i";
    return s;
  }

  float re()
  {
    return a;
  }

  float im()
  {
    return b;
  }

  boolean egal(Complexe z)
  {
    return(z.re() == a && z.im() == b);
  }

  boolean egal(float c)
  {
    return(a == c && b == 0);
  }

  Complexe plus(Complexe z) {
    return new Complexe(a + z.a, b + z.b);
  }

  Complexe plus(float c) {
    return new Complexe(a + c, b);
  }

  Complexe mult(Complexe z) {
    return new Complexe(a * z.a - b * z.b, a * z.a + b * z.a);
  }

  Complexe mult(float c) {
    return new Complexe(a * c, b * c);
  }

  Complexe moins(Complexe z) {
    return new Complexe(a - z.a, b - z.b);
  }

  Complexe moins(float c) {
    return new Complexe(a - c, b);
  }

  Complexe conj() {
    return new Complexe(a, -b);
  }

  float mod() {
    return sqrt(a*a + b*b);
  }
}