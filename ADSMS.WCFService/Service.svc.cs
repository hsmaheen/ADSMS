using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using ADSMS.BizLogic;
using ADSMS.DataAccess;
using System.Reflection;
using System.Data;
using System.Data.SqlClient;
namespace ADSMS.WCFService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service : IService
    {
        RequisitionService service = new RequisitionService();
        static string connection = @"Data Source=10.10.3.165;uid=sa;password=sa37team_3;DATABASE=stationery";

        public Service()
        {
            
        }

        #region Select Methods by Seint Santhandar Bo
        public RequisitionItems[] GetData()
        {
            
            List<ADSMS.DataAccess.RequisitionItems> obj =service.RequisitionItemByCategory();
           
            RequisitionItems[] items = new RequisitionItems[obj.Count];
            int count = 0;
            foreach (ADSMS.DataAccess.RequisitionItems o in obj)
            {
                RequisitionItems item = new RequisitionItems();
                item.CategoryID = o.CategoryID;
                item.CategoryName = o.CategoryName;
                item.Quantity = o.Quantity;
                
                items.SetValue(item,count);
                count++;
            }
            return items;
            
        }
        public RequisitionItemDetails[] GetDetailItem()
        {
            List<ADSMS.DataAccess.RequisitionItemsDetail> obj = service.RequisitionDetailsItemByCategory("6");
            
            RequisitionItemDetails[] items = new RequisitionItemDetails[obj.Count];
            int count = 0;
            foreach (ADSMS.DataAccess.RequisitionItemsDetail o in obj)
            {
                RequisitionItemDetails item = new RequisitionItemDetails();
                item.ItemID = o.ItemID.ToString();
                item.ItemDescription = o.ItemDescription;
                item.ItemQuant = o.ItemQuant.ToString();
                item.RequestedQuantity = o.RequestedQuantity;

                items.SetValue(item, count);
                count++;
            }
            return items;
        }
        public Item[] GetAllItem()
        {
            
            Service_phyo servicePhyo = new Service_phyo();
            List<ADSMS.DataAccess.item> obj = servicePhyo.getAllItem2();
          
            Item[] items = new Item[obj.Count];
            int count = 0;
            foreach (ADSMS.DataAccess.item o in obj)
            {
                Item item = new Item();
                item.ItemID = o.ItemID;
                item.ItemCatID = o.ItemCatID;
                item.CategoryDescription = o.category.CategoryName;
                item.ItemDescription = o.ItemDescription;
                item.ItemBinID = o.bin.BinNumber;
                item.ItemQuant = o.ItemQuant ??  default(int);
                item.ItemReOrderLvl = o.ItemReOrderLvl;
                item.ItemReOrderQuant = o.ItemReOrderQuant;
                item.ItemUOM = o.ItemUOM;

                items.SetValue(item, count);
                count++;
            }
            return items;
        }
        public RequisitionItemByDepartment[] GetDataItemByDepartment(String itemID)
        {
            DepartmentService department = new DepartmentService();
            var objItemByDepartment = department.getItemByDep(itemID);
            RequisitionItemByDepartment[] itemList = new RequisitionItemByDepartment[objItemByDepartment.Count];
            int count = 0;
            foreach (var obj in objItemByDepartment)
            {
                RequisitionItemByDepartment d = new RequisitionItemByDepartment();
                Type t = obj.GetType();
                PropertyInfo dep_ID = t.GetProperty("DepID");
                PropertyInfo item_Description = t.GetProperty("ItemDescription");
                PropertyInfo dep_Name = t.GetProperty("DepName");
                PropertyInfo required_Qty = t.GetProperty("Required_Quantity");
                d.DepID = dep_ID.GetValue(obj, null).ToString();
                d.DepName = dep_Name.GetValue(obj, null).ToString();
                d.ItemDescription = item_Description.GetValue(obj, null).ToString();
                d.Required_Quantity = required_Qty.GetValue(obj, null).ToString();

                itemList.SetValue(d,count);
                count++;
   
            }
            return itemList;
        }
        public PurchaseOrder[] selectPurchaseOrderList()
        {
            PurchaseOrderService poService = new PurchaseOrderService();
            var polist = poService.selectPurchaseOrder();
            PurchaseOrder[] po_list = new  PurchaseOrder[polist.Count];
             int count = 0;
            foreach (var obj in polist)
            {
                PurchaseOrder purchaseOrder = new PurchaseOrder();
                Type t = obj.GetType();
                PropertyInfo poID = t.GetProperty("POID");
                PropertyInfo poReqDate = t.GetProperty("POReqDate");
               // PropertyInfo poApproveDate = t.GetProperty("POApproveDate");
                PropertyInfo poSupplierCode = t.GetProperty("SupplierCode");

                purchaseOrder.PurchaseOrderID =Convert.ToInt32( poID.GetValue(obj,null));
                purchaseOrder.PurchaseOrderDate = Convert.ToDateTime(poReqDate.GetValue(obj, null));
                //purchaseOrder.PurchaseOrderApproveDate = Convert.ToDateTime(poApproveDate.GetValue(obj, null));
                purchaseOrder.PurchaseOrderSupplierName =Convert.ToString(poSupplierCode.GetValue(obj,null));

                po_list.SetValue(purchaseOrder, count);
                count++; 
            }
            return po_list;
        }
        public PurchaseOrderDetail[] selectPurchaseOrderDetails(String id)
        {
            PurchaseOrderService poService = new PurchaseOrderService();
            var poDetail = poService.selectPurchaseOrderDetail(Convert.ToInt32(id));
            PurchaseOrderDetail[] po_Detail = new  PurchaseOrderDetail[poDetail.Count];
            int count = 0;

            foreach (var obj in poDetail)
            {
                PurchaseOrderDetail d = new PurchaseOrderDetail ();
                Type t = obj.GetType();
                PropertyInfo poID = t.GetProperty("POID");
                PropertyInfo poItemID = t.GetProperty("POItemID");
                PropertyInfo poItemDesp = t.GetProperty("ItemDescription");
                PropertyInfo poItemQuant = t.GetProperty("POItemQuant");

                d.PoID = Convert.ToInt32(poID.GetValue(obj, null));
                d.PoItemID = Convert.ToInt32(poID.GetValue(obj, null));
                d.ItemDescription = Convert.ToString(poItemDesp.GetValue(obj,null));
                d.POItemQuantity = Convert.ToInt32(poItemQuant.GetValue(obj, null));

                po_Detail.SetValue(d, count);
                count++;
                
            }
            return po_Detail;

        }
       
        public loginData Something(loginauthnization aa)
        {
            loginData data = new loginData();
            LoginService_Mobile loginMobile = new LoginService_Mobile();
            List<object> result = loginMobile.Login(aa.UserID, aa.Password);

            data.RoleID = result[1].ToString();
            data.EmployeeID = result[0].ToString();
            return data;
            
        }
        public DisbursementByDepartment[] getDisbursement(String depID)
        {
            DisbursementServie disService = new DisbursementServie();
            var disDetail = disService.selectDisbursementByDepartment(Convert.ToInt32(depID));
            DisbursementByDepartment[] dis_Detail = new DisbursementByDepartment[disDetail.Count];
            int count = 0;

            foreach (var obj in disDetail)
            {
                DisbursementByDepartment d = new DisbursementByDepartment();
                Type t = obj.GetType();
                PropertyInfo itemID = t.GetProperty("ItemID");
                PropertyInfo itemDesp = t.GetProperty("ItemDescription");
                PropertyInfo itemQuant = t.GetProperty("Quantity");
                PropertyInfo department = t.GetProperty("Department");

                d.ItemID = Convert.ToString(itemID.GetValue(obj, null));
                d.ItemDescription = Convert.ToString(itemDesp.GetValue(obj, null));
                d.ItemQuantity = Convert.ToString(itemQuant.GetValue(obj, null));
                d.DepartmentName = Convert.ToString(department.GetValue(obj, null));

                dis_Detail.SetValue(d, count);
                count++;

            }
            return dis_Detail;
        }
        public CollectionPoint[] getCollectionPoint()
        {
            DisbursementServie dss = new DisbursementServie();
            List<collectionPoint> col = dss.selectAllCollectionPoint();
            CollectionPoint[] colpoint = new CollectionPoint[col.Count];

            int count = 0;
            foreach (ADSMS.DataAccess.collectionPoint o in col)
            {
                CollectionPoint c = new CollectionPoint();
                c.CollectionPointID = Convert.ToString(o.CollectionPointID);
                c.CollectionPointName = o.CollectionPointName;
                c.CollectionPointDate = o.CollectionPointDate;
                c.CollectionPointTime = o.CollectionPointTime;
                c.CollectionPointAddress = o.CollectionPointAddress;

                colpoint.SetValue(c, count);
                count++;
            }

            return colpoint;
        }

          public Department[] getDepartment()
        {
            DisbursementServie dis = new DisbursementServie();
            var department = dis.selectDisbursementDepartment();
            Department[] dep = new Department[department.Count];


            int count = 0;
            foreach (object o in department)
            {
                Department d = new Department();
                 Type t = o.GetType();
                PropertyInfo departmentID = t.GetProperty("DisbDepID");
                PropertyInfo depName = t.GetProperty("DepName");
              
                d.DepartmentID =Convert.ToString(departmentID.GetValue(o,null));
                d.DepartmentName = Convert.ToString(depName.GetValue(o, null));
                dep.SetValue(d, count);
                count++;

               
            }
            return dep;
        }
        #endregion


        #region Insert Methods by Seint San Thandar Bo
        public bool CreateDisbursement(DisbursementM[] disbursement)
        {

            DepartmentService departmentService = new DepartmentService();
            try
            {
                for (int i = 0; i < disbursement.Count(); i++)
                {
                    DisbursementM d = disbursement[i];
                    Disbursement_M m = new Disbursement_M();
                    m.DepID = Convert.ToInt32( d.DepID);
                    m.ItemID = Convert.ToInt32(d.ItemID);
                    m.QuantinHand = Convert.ToInt32(d.QuantityInHand);
                    m.RequiredQuant =Convert.ToInt32( d.RequiredQuant);
                    departmentService.savedisb(m,Convert.ToInt32(d.UpdatedUserID));
                   
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            
        }

        #endregion

        #region Update Methods by Seint San Thandar Bo
        public bool UpdatePurchaseOrder(UpdateData data) {
            try
            {
                PurchaseOrderService poService = new PurchaseOrderService();
                return poService.updatePurchaseOrderForReceive(data.PoID, data.EmployeeID);
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public bool UpdateItem(MyData data)
        {
            ItemService itemService = new ItemService();
            return itemService.UpdateItem(data.ItemID, data.Quantity, data.UserID);

        }
        #endregion


      

        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

       

        public string GetAddress(string id)
        {
            string address = null;
            SqlConnection conn = new SqlConnection(connection);
            SqlDataAdapter adapter = new SqlDataAdapter
               ("SELECT CollectionPointAddress FROM [collectionPoint] WHERE [CollectionPointID] = '" + id + "'", conn);
            DataTable table = new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count > 0)
            {
                DataRow r = table.Rows[0];
                address = (string)r["CollectionPointAddress"];
            }
            conn.Close();
            return address;
        }

        public string GetDeptId(string id)
        {
            int deptId = 0;
            SqlConnection conn = new SqlConnection(connection);
            SqlDataAdapter adapter = new SqlDataAdapter
               ("SELECT EmployeeDepId FROM [employee] WHERE [EmployeeID] = " + id, conn);
            DataTable table = new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count > 0)
            {
                DataRow r = table.Rows[0];
                deptId = (int)r["EmployeeDepId"];
            }
            conn.Close();
            return deptId.ToString();
        }

        public string GetItemDescription(string id)
        {
            string description = null;
            SqlConnection conn = new SqlConnection(connection);
            SqlDataAdapter adapter = new SqlDataAdapter
               ("SELECT ItemDescription FROM [item] WHERE [ItemID] = " + id, conn);
            DataTable table = new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count > 0)
            {
                DataRow r = table.Rows[0];
                description = (string)r["ItemDescription"];
            }
            conn.Close();
            return description;
        }

        public CPModel GetCPDetails(string id)
        {
            CPModel c = null;
            string deptId = GetDeptId(id);
            int cpid = 0;
            SqlConnection conn = new SqlConnection(connection);
            SqlDataAdapter adapter = new SqlDataAdapter
               ("SELECT DepCollectionPointID FROM [department] WHERE [DepID] = " + deptId.ToString(), conn);
            DataTable table = new DataTable();
            adapter.Fill(table);
            if (table.Rows.Count > 0)
            {
                DataRow r = table.Rows[0];
                cpid = (int)r["DepCollectionPointID"];
            }
            adapter = new SqlDataAdapter
                ("SELECT * FROM [collectionPoint] WHERE [CollectionPointID] = " + cpid.ToString(), conn);
            table.Clear();
            adapter.Fill(table);
            if (table.Rows.Count > 0)
            {
                DataRow r = table.Rows[0];
                c = CPModel.Make((int)r["CollectionPointID"], (string)r["CollectionPointName"], (string)r["CollectionPointAddress"]);
            }
            conn.Close();
            return c;
        }

        public DisbModel[] GetDisbursement(string employeeId)
        {
            string deptId = GetDeptId(employeeId);
            List<DisbModel> list = new List<DisbModel>();
            SqlConnection conn = new SqlConnection(connection);
            SqlDataAdapter adapter = new SqlDataAdapter
               ("SELECT * FROM [disbursement] WHERE [DisbDepID] = '" + deptId + "' and [DisbStatus] = 'Ready'", conn);
            DataTable table = new DataTable();
            adapter.Fill(table);
            foreach (DataRow r in table.Rows)
            {
                DisbModel d = DisbModel.Make((int)r["DisbId"], (string)r["DisbStatus"]);
                list.Add(d);
            }
            conn.Close();
            return (list.ToArray<DisbModel>());
        }

        public DisbDetailsModel[] GetDisbursementDetails(string disbId)
        {
            List<DisbDetailsModel> list = new List<DisbDetailsModel>();
            SqlConnection conn = new SqlConnection(connection);
            SqlDataAdapter adapter = new SqlDataAdapter
               ("SELECT * FROM [disbursementdetails] WHERE [DisbID] = '" + disbId + "'", conn);
            DataTable table = new DataTable();
            adapter.Fill(table);
            foreach (DataRow r in table.Rows)
            {
                string description = GetItemDescription(r["DisbItemID"].ToString());
                DisbDetailsModel d = DisbDetailsModel.Make((int)r["DisbItemID"], description,
                    (int)r["DisbItemQuantReq"], (int)r["DisbItemQuantDelivered"]);
                list.Add(d);
            }
            conn.Close();
            return (list.ToArray<DisbDetailsModel>());
        }

        public bool ChangeStatus(string disbId)
        {

            int result = 0;
            try
            {
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();
                string time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                SqlCommand cmd = new SqlCommand(
                "UPDATE disbursement SET DisbStatus='Received', DisbReceiveDate='" + time + "' WHERE DisbID=" + disbId, conn);
                result = cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception e)
            {
                //   return e.ToString();
            }

            /* if (result > 0)
                 return "true";
             else
                 return "false";
             */
            return (result > 0);
        }

      

    }
}
