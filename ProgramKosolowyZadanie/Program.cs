using ProgramKosolowyZadanie.Class;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramKosolowyZadanie
{
    public class Program
    {
        public static void Main(string[] args)
        {
            IList<Osoby> osobies = new List<Osoby>();
            NewMethod();
            NewCollection newCollection = new NewCollection();
            osobies.Select(x => new { x.imie, x.nazwisko }).OrderBy(x => x.imie).ToList().ForEach(o =>
            {
                newCollection.AddElement(new ItemNewCollection() { imie = o.imie, nazwisko = o.nazwisko });
            });
            var FinallistGroup = newCollection.list.GroupBy(o => o.nazwisko);
            foreach(var item in FinallistGroup)
            {
                Console.WriteLine("Nazwisko : " + item.Key);
                foreach(var o in item)
                {
                    Console.Write(o.imie + " ");
                }
                Console.WriteLine("\n");
            }
            Console.ReadKey();

            void NewMethod()
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1Entities"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Select * from Osoby", con))
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        {
                            while (reader.Read())
                            {
                                osobies.Add(new Osoby()
                                {
                                    id_osoby = reader.GetInt32(0),
                                    imie = reader[1].ToString(),
                                    nazwisko = reader[2].ToString(),
                                    plec = reader[3].ToString(),
                                    id_ojca = reader.IsDBNull(reader.GetOrdinal("id_ojca")) ? default(int) : reader.GetInt32(4),
                                    id_matki = reader.IsDBNull(reader.GetOrdinal("id_matki")) ? default(int) : reader.GetInt32(5),
                                    rok_urodzenia = reader.GetInt32(6)
                                });
                            }
                        }
                    }
                }
            }
        }
    }
}
