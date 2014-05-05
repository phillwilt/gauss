class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return 'I'm crazy'
    def __div__(self, b):
        """
        Divides a Gauss number
        
        Args:
          b: Gauss number
        
        Returns:
          Gauss object
          
        Examples:
        
        sage: Gauss(2,3) / Gauss(3,6)
        8/15-1/15i
        
        """
        
        cong = Gauss(b.real, -b.imag)
        top = self * cong
        bottom = b.real**2 + b.imag**2
        
        real = top.real / bottom
        imag = top.imag / bottom
        
        return Gauss(real,imag)
       

