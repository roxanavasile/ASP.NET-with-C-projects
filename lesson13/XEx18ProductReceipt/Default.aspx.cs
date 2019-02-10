using XEx18ProductReceipt.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace XEx18ProductReceipt
{
    public partial class Default : System.Web.UI.Page
    {
        HalloweenEntities2 db = new HalloweenEntities2();

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Product> grdProducts_GetData()
        {
            return null;
        }
        public IEnumerable<Category> ddlCategory_GetData( int maximumRows, 
                                                          int startRowIndex, 
                                                          out int totalRowCount,
                                                          string sortByExpression)
        {
            var categories = from c in db.Categories
                             orderby c.LongName
                             select c;
            ddlCategory.DataSource = categories.ToList();
            ddlCategory.DataBind();

            totalRowCount = 10;

            return categories;
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression

    }
}