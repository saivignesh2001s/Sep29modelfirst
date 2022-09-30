using dal_banking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sep29M
{
    internal class Program
    {
        static void Main(string[] args)
        {
           BankmodelContainer bank= new BankmodelContainer();
            bank.Borrowers.Add(new Borrower { BorrowerId = 1, BorrowerName = "Sai" });
            
            Console.WriteLine("done");
            Console.ReadLine();


        }
    }
}
