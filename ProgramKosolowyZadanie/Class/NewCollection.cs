using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramKosolowyZadanie.Class
{
    public class NewCollection
    {
        public List<ItemNewCollection> list = new List<ItemNewCollection>();

        public void AddElement(ItemNewCollection element)
        {
            if (element != null)
            {
                list.Add(element);
            }
        }






    }
}
