using ClientApplication.Models;
using Microsoft.Practices.Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ClientApplication.ViewModels
{
    public class UpdateButtonViewModel
    {
        public bool TypeOperation { get; set; }
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public DelegateCommand<Window> UpdateCommand { get; private set; }

        public UpdateButtonViewModel(Client updateElement)
        {
            this.FirstName = updateElement.FirstName;
            this.LastName = updateElement.LastName;
            this.TypeOperation = false;
            this.UpdateCommand = new DelegateCommand<Window>(UpdateOperation);
        }

        private void UpdateOperation(Window obj)
        {
            this.TypeOperation = true;
            obj.Close();
        }
    }
}
