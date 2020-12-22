using System;
using System.Text;
using System.Security.Cryptography;

namespace _4
{
    class Program
    {
        static void Main(string[] args)
        {
            ComputeAdventCoins("ckczppom");
        }

        static void ComputeAdventCoins(string secKey)
        {
            using(MD5 md5 = MD5.Create())
            {
                for(int i = 100000 ;; i++)
                {
                    var key = $"{secKey}{i}";
                    var computedHash = md5.ComputeHash(Encoding.UTF8.GetBytes(key));
                    var hexHash = BitConverter.ToString(computedHash).Replace("-","");
                    if(hexHash.StartsWith("000000")){
                        Console.WriteLine(
                            $"Secret Key: {secKey}\n"+
                            $"Key: {key}\n"+
                            $"Number: {i}"
                        );
                        return;
                    }
                }
            }
        }
    }
}
