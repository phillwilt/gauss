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
        
        #cong = Gauss(b.x, -b.y)
        #top = self * cong
        #bottom = b.x**2 + b.y**2
        
        #real = top.x / bottom
        #imag = top.y / bottom
        
        return self.x // 0 #buggy version! don't use!
       

