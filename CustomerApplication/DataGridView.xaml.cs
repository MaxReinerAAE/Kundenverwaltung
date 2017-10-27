using DataModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ViewModel;

namespace CustomerApplication
{
    /// <summary>
    /// Interaktionslogik für DataGridView.xaml
    /// </summary>
    public partial class DataGridView : UserControl
    {
      
        public DataGridView()
        {
            InitializeComponent();
           

        }

        
        private void CustomerGrid_Loaded(object sender, RoutedEventArgs e)
        {
            DataGrid dg = sender as DataGrid;
            Border border = VisualTreeHelper.GetChild(dg, 0) as Border;
            ScrollViewer scrollViewer = VisualTreeHelper.GetChild(border, 0) as ScrollViewer;
            Grid grid = VisualTreeHelper.GetChild(scrollViewer, 0) as Grid;
            Button button = VisualTreeHelper.GetChild(grid, 0) as Button;

            if (button != null && button.Command != null && button.Command == DataGrid.SelectAllCommand)
            {
                button.IsEnabled = false;
                button.Opacity = 0;
            }
            
        }

        private void btn_Click_UnselectAllRows_Customer(object sender, RoutedEventArgs e)
        {
          
            CustomerGrid.UnselectAllCells();
        }
        private void btn_Click_Delete_Customers(object sender, RoutedEventArgs e)
        {
            DataGridViewModel gridViewModel = (DataGridViewModel)this.DataContext;
            if (CustomerGrid.SelectedItems.Count > 0)
            {
                ObservableCollection<CustomerViewModel> customersToDelete = new ObservableCollection<CustomerViewModel>();
                foreach (CustomerViewModel customerToDelete in CustomerGrid.SelectedItems)
                {
                    customersToDelete.Add(customerToDelete);
                }
                gridViewModel.DeleteCustomers(customersToDelete);
            }
            else MessageBox.Show("Es müssen ein oder mehr Kunden ausgewählt werden", "Kunden löschen - Fehler in Auswahl", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void btn_Click_Update_Customers(object sender, RoutedEventArgs e)
        {
            CustomerGrid.CommitEdit();
            CustomerGrid.UnselectAllCells();
            DataGridViewModel gridViewModel = (DataGridViewModel)CustomerGrid.DataContext;
            if (gridViewModel.CustomersInfo.Count > 0)
            {
                
                gridViewModel.UpdateAllCustomers();
                CustomerGrid.DataContext = new DataGridViewModel();
                MessageBox.Show("Datensätze wurden aktualisiert", "Kundenaktualisierung", MessageBoxButton.OK, MessageBoxImage.Information);
            }

        }
        private void btn_Click_Edit_Customer(object sender, RoutedEventArgs e)
        {
            if (CustomerGrid.SelectedItems.Count == 1)
            {
                CustomerViewModel rowViewModel = CustomerGrid.SelectedItem as CustomerViewModel;
                CustomerDetailWindow detailWindow = new CustomerDetailWindow();
               
                detailWindow.DataContext = rowViewModel.Clone(); ;

                DataGridViewModel gridViewModel = (DataGridViewModel)this.DataContext;
                rowViewModel.ParentGrid = gridViewModel;
                CustomerGrid.UnselectAllCells();
                bool? result = detailWindow.ShowDialog();
            }
            else MessageBox.Show("Ein Datensatz muss zuvor selektiert werden", "Kunde bearbeiten - Fehler in Auswahl", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void btn_Click_Insert_New_Customer(object sender, RoutedEventArgs e)
        {
           
            CustomerDetailWindow detailWindow = new CustomerDetailWindow();
            CustomerViewModel rowViewModel = CustomerViewModel.getNewCustomerView();
            detailWindow.DataContext = rowViewModel;

            DataGridViewModel gridViewModel = (DataGridViewModel)this.DataContext;
            rowViewModel.ParentGrid = gridViewModel;
            
            bool? result = detailWindow.ShowDialog();
          
        }

        private void CustomerGrid_DataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            

           
        }
    }
}
