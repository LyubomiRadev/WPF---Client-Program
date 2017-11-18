using Microsoft.Practices.Prism.Commands;
using System.Windows;

namespace ClientApplication.ViewModels
{
    public class AddClientViewModel
    {
        public bool TypeOperation { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public DelegateCommand<Window> AddCommand { get; private set; }

        public AddClientViewModel()
        {
            this.TypeOperation = false;
            this.AddCommand = new DelegateCommand<Window>(AddOperation);
        }

        private void AddOperation(Window obj)
        {
            this.TypeOperation = true;
            obj.Close();
        }

    }
}
