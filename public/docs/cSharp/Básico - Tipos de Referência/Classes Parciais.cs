// Uma partial class divide uma classe em partes
public partial class Geeks { 
    private string AutorNome; 
    private int NumeroDeArtigos; 
  
    public Geeks(string a, int t) 
    { 
        this.AutorNome = a; 
        this.NumeroDeArtigos = t; 
    } 
} 


public partial class Geeks { 
    public void Display() 
    { 
        Console.WriteLine("Author's name is : " + AutorNome); 
        Console.WriteLine("Total number articles is : " + NumeroDeArtigos); 
    } 
} 

// A classe sem ser dividida
public class Geeks { 
    private string AutorNome; 
    private int NumeroDeArtigos; 
  
    public Geeks(string a, int t) 
    { 
        this.Authour_name = a; 
        this.NumeroDeArtigos = t; 
    } 
  
    public void Display() 
    { 
        Console.WriteLine("Author's name is : " +AutorNome); 
        Console.WriteLine("Total number articles is : " + NumeroDeArtigos); 
    } 
} 
