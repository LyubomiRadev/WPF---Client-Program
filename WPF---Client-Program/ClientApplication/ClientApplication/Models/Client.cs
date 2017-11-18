using Microsoft.Practices.Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClientApplication.Models
{
    public class Client: BindableBase

    {
        private string firstName;

        public string FirstName
        {
            get { return this.firstName; }
            set { SetProperty(ref this.firstName, value); }
        }

        private string lastName;

        public string LastName
        {
            get { return this.lastName; }
            set { SetProperty(ref this.lastName, value); }
        }
    }
}
