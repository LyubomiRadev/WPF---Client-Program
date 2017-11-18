using ClientApplication.Models;
using ClientApplication.Views;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Mvvm;
using System.Collections.ObjectModel;
using System.Windows;

namespace ClientApplication.ViewModels
{
    public class ClientViewModel: BindableBase
    {

        public Client SelectedElement { get; set; }

        //=============================================================

        public ObservableCollection<Client> MyCollection { get; set; }

        //=============================================================

        public DelegateCommand AddCommand { get; private set; }

        public DelegateCommand UpdateCommand { get; private set; }

        public DelegateCommand DeleteCommand { get; private set; }

        public ClientViewModel()
        {
            this.MyCollection = new ObservableCollection<Client>();

            this.AddCommand = new DelegateCommand(AddOperation);
            this.UpdateCommand = new DelegateCommand(UpdateOperation);
            this.DeleteCommand = new DelegateCommand(DeleteOperation);
        }

        private void AddOperation()
        {
            var vm = new AddClientViewModel();
            var addWindow = new AddClientWindow() { DataContext= vm};
            addWindow.ShowDialog();

            if(vm.TypeOperation)
            {
                var newElement = new Client()
                {
                    FirstName = vm.FirstName,
                    LastName = vm.LastName
                };
                this.MyCollection.Add(newElement);
            }
        }

        private void DeleteOperation()
        {
            if(this.SelectedElement != null)
            {
                this.MyCollection.Remove(this.SelectedElement);
            }
            else
            {
                MessageBox.Show("Моля, изберете клиент!", "Внимание", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
            
        }

        private void UpdateOperation()
        {
            if(this.SelectedElement != null)
            {
                var index = this.MyCollection.IndexOf(this.SelectedElement);

                var vm = new UpdateButtonViewModel(this.SelectedElement);
                var updateWindow = new UpdateClientWindow() { DataContext = vm };
                updateWindow.ShowDialog();

                if (vm.TypeOperation)
                {
                    var newElement = new Client()
                    {
                        FirstName = vm.FirstName,
                        LastName = vm.LastName
                    };
                    this.MyCollection[index] = newElement;
                }
            }
        }
    }
}
