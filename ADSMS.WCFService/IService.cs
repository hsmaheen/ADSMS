using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using ADSMS;

namespace ADSMS.WCFService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService
    {

        [OperationContract]
        [WebGet(UriTemplate = "/Requisition", ResponseFormat = WebMessageFormat.Json)]
        RequisitionItems[] GetData();

        [OperationContract]
        [WebGet(UriTemplate = "/RequisitionDetail", ResponseFormat = WebMessageFormat.Json)]
        RequisitionItemDetails[] GetDetailItem();

        [OperationContract]
        [WebGet(UriTemplate = "/Item", ResponseFormat = WebMessageFormat.Json)]
        Item[] GetAllItem();

        [OperationContract]
        [WebGet(UriTemplate = "/DisbursementList/{id}", ResponseFormat = WebMessageFormat.Json)]
        RequisitionItemByDepartment[] GetDataItemByDepartment(String id);

        [OperationContract]
        [WebGet(UriTemplate = "/PurchaseOrderList", ResponseFormat = WebMessageFormat.Json)]
        PurchaseOrder[] selectPurchaseOrderList();

        [OperationContract]
        [WebGet(UriTemplate = "/PurchaseOrderDetail/{id}", ResponseFormat = WebMessageFormat.Json)]
        PurchaseOrderDetail[] selectPurchaseOrderDetails(String id);


        [OperationContract]
        [WebInvoke(UriTemplate = "/CreateDisbursement", Method = "POST",
            RequestFormat = WebMessageFormat.Json,
            ResponseFormat = WebMessageFormat.Json)]
        bool CreateDisbursement(DisbursementM[] disbursement);

        [OperationContract]
        [WebInvoke(UriTemplate = "/Something", Method = "POST",
            RequestFormat = WebMessageFormat.Json,
            ResponseFormat = WebMessageFormat.Json)]
        loginData Something(loginauthnization aa);

        [OperationContract]
        [WebInvoke(UriTemplate = "/UpdatePurchaseOrder", Method = "POST",
         RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]
        bool UpdatePurchaseOrder(UpdateData data);

        [OperationContract]
        [WebInvoke(UriTemplate = "/UpdateItem", Method = "POST",
         RequestFormat = WebMessageFormat.Json,
        ResponseFormat = WebMessageFormat.Json)]
        bool UpdateItem(MyData data);

        [OperationContract]
        [WebGet(UriTemplate = "/cp/{id}", ResponseFormat = WebMessageFormat.Json)]
        string GetAddress(string id);

        [OperationContract]
        [WebGet(UriTemplate = "/employee/{employeeId}", ResponseFormat = WebMessageFormat.Json)]
        string GetDeptId(string employeeId);

        [OperationContract]
        [WebGet(UriTemplate = "/item/{itemId}", ResponseFormat = WebMessageFormat.Json)]
        string GetItemDescription(string itemId);

        [OperationContract]
        [WebGet(UriTemplate = "/collectionpoint/{employeeId}", ResponseFormat = WebMessageFormat.Json)]
        CPModel GetCPDetails(string employeeId);

        [OperationContract]
        [WebGet(UriTemplate = "/disbursement/{employeeId}", ResponseFormat = WebMessageFormat.Json)]
        DisbModel[] GetDisbursement(string employeeId);

        [OperationContract]
        [WebGet(UriTemplate = "/disbursementdetails/{disbId}", ResponseFormat = WebMessageFormat.Json)]
        DisbDetailsModel[] GetDisbursementDetails(string disbId);

        [OperationContract]
        [WebGet(UriTemplate = "/changeStatus/{disbId}", ResponseFormat = WebMessageFormat.Json)]
        bool ChangeStatus(string disbId);

        [OperationContract]
        [WebGet(UriTemplate = "/disbursementToCheck/{depID}", ResponseFormat = WebMessageFormat.Json)]
        DisbursementByDepartment[] getDisbursement(String depID);


        [OperationContract]
        [WebGet(UriTemplate = "/departmentToDeliver", ResponseFormat = WebMessageFormat.Json)]
        Department[] getDepartment();

        [OperationContract]
        [WebGet(UriTemplate = "/collectionPoint", ResponseFormat = WebMessageFormat.Json)]
        CollectionPoint[] getCollectionPoint();
    }

    [DataContract]
    public class Department
    {
        string departmentID;
         string departmentName;
            [DataMember]
            public string DepartmentID
            {
              get { return departmentID; }
              set { departmentID = value; }
            }

             [DataMember]
            public string DepartmentName
            {
              get { return departmentName; }
              set { departmentName = value; }
            }

       
        
        
    }

    [DataContract]
    public class Item
    {
        int itemID;
        int itemCatID;
        String categoryDescription;


        string itemDescription;
        int itemReOrderLvl;
        int itemReOrderQuant;
        string itemUOM;
        String itemBinID;
        int itemQuant;

        [DataMember]
        public int ItemID
        {
            get { return itemID; }
            set { itemID = value; }
        }
        [DataMember]
        public int ItemCatID
        {
            get { return itemCatID; }
            set { itemCatID = value; }
        }
        [DataMember]
        public String CategoryDescription
        {
            get { return categoryDescription; }
            set { categoryDescription = value; }
        }
        [DataMember]
        public string ItemDescription
        {
            get { return itemDescription; }
            set { itemDescription = value; }
        }
        [DataMember]
        public int ItemReOrderLvl
        {
            get { return itemReOrderLvl; }
            set { itemReOrderLvl = value; }
        }
        [DataMember]
        public int ItemReOrderQuant
        {
            get { return itemReOrderQuant; }
            set { itemReOrderQuant = value; }
        }
        [DataMember]
        public string ItemUOM
        {
            get { return itemUOM; }
            set { itemUOM = value; }
        }
        [DataMember]
        public String ItemBinID
        {
            get { return itemBinID; }
            set { itemBinID = value; }
        }
        [DataMember]
        public int ItemQuant
        {
            get { return itemQuant; }
            set { itemQuant = value; }
        }

    }

    [DataContract]
    public class RequisitionItems
    {
        string categoryid;
        string categoryname;
        string quantity;
        [DataMember]
        public string CategoryID
        {
            get { return categoryid; }
            set { categoryid = value; }
        }
        [DataMember]
        public string CategoryName
        {
            get { return categoryname; }
            set { categoryname = value; }
        }
        [DataMember]
        public string Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
    }

    [DataContract]
    public class RequisitionItemDetails
    {
        string itemID;
        String itemDescription;
        String itemQuant;
        String requestedQuantity;

        [DataMember]
        public string ItemID
        {
            get { return itemID; }
            set { itemID = value; }
        }
        [DataMember]
        public String ItemDescription
        {
            get { return itemDescription; }
            set { itemDescription = value; }
        }
        [DataMember]
        public String ItemQuant
        {
            get { return itemQuant; }
            set { itemQuant = value; }
        }
        [DataMember]
        public String RequestedQuantity
        {
            get { return requestedQuantity; }
            set { requestedQuantity = value; }
        }



    }

    [DataContract]
    public class RequisitionItemByDepartment
    {
        string depID;
        string itemDescription;
        string depName;
        string requiredQuantity;
        [DataMember]
        public string DepID
        {
            get { return depID; }
            set { depID = value; }
        }

        [DataMember]
        public string ItemDescription
        {
            get { return itemDescription; }
            set { itemDescription = value; }
        }

        [DataMember]
        public string DepName
        {
            get { return depName; }
            set { depName = value; }
        }

        [DataMember]
        public string Required_Quantity
        {
            get { return requiredQuantity; }
            set { requiredQuantity = value; }
        }
    }

    [DataContract]
    public class Disbursement
    {
        int itemID;
        int itemBalance;
        int reqQuant;
        int depID;
        int requiredQuant;
        int updatedUserID;
        [DataMember]
        public int ItemBalance
        {
            get { return itemBalance; }
            set { itemBalance = value; }
        }
        [DataMember]
        public int ReqQuant
        {
            get { return reqQuant; }
            set { reqQuant = value; }
        }
        [DataMember]
        public int DepID
        {
            get { return depID; }
            set { depID = value; }
        }

        [DataMember]
        public int RequiredQuant
        {
            get { return requiredQuant; }
            set { requiredQuant = value; }
        }
        [DataMember]
        public int UpdatedUserID
        {
            get { return updatedUserID; }
            set { updatedUserID = value; }
        }
        [DataMember]
        public int ItemID
        {
            get { return itemID; }
            set { itemID = value; }
        }

    }

    [DataContract]
    public class DisbursementM
    {
        String itemID;
        String quantityInHand;
        String depID;
        String requiredQuant;
        String updatedUserID;

        [DataMember]
        public String ItemID
        {
            get { return itemID; }
            set { itemID = value; }
        }

        [DataMember]
        public String QuantityInHand
        {
            get { return quantityInHand; }
            set { quantityInHand = value; }
        }

        [DataMember]
        public String DepID
        {
            get { return depID; }
            set { depID = value; }
        }

        [DataMember]
        public String RequiredQuant
        {
            get { return requiredQuant; }
            set { requiredQuant = value; }
        }
        [DataMember]
        public String UpdatedUserID
        {
            get { return updatedUserID; }
            set { updatedUserID = value; }
        }

    }
    [DataContract]
    public class PurchaseOrder
    {

        int purchaseOrderID;
        DateTime purchaseOrderDate;
        string purchaseOrderSupplierName;
        [DataMember]
        public int PurchaseOrderID
        {
            get { return purchaseOrderID; }
            set { purchaseOrderID = value; }
        }

        [DataMember]
        public DateTime PurchaseOrderDate
        {
            get { return purchaseOrderDate; }
            set { purchaseOrderDate = value; }
        }



        [DataMember]
        public string PurchaseOrderSupplierName
        {
            get { return purchaseOrderSupplierName; }
            set { purchaseOrderSupplierName = value; }
        }
    }


    [DataContract]
    public class UpdateData
    {
        string poID;

        string employeeID;
        [DataMember]
        public string PoID
        {
            get { return poID; }
            set { poID = value; }
        }

        [DataMember]
        public string EmployeeID
        {
            get { return employeeID; }
            set { employeeID = value; }
        }


    }

    [DataContract]
    public class MyData
    {
        string itemID;

        string quantity;
        string userID;


        [DataMember]
        public string ItemID
        {
            get { return itemID; }
            set { itemID = value; }
        }

        [DataMember]
        public string Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
        [DataMember]
        public string UserID
        {
            get { return userID; }
            set { userID = value; }
        }

    }

    [DataContract]
    public class PurchaseOrderDetail
    {
        int poID;
        int poItemID;
        String itemDescription;
        int pOItemQuantity;

        [DataMember]
        public int PoID
        {
            get { return poID; }
            set { poID = value; }
        }

        [DataMember]
        public int PoItemID
        {
            get { return poItemID; }
            set { poItemID = value; }
        }

        [DataMember]
        public String ItemDescription
        {
            get { return itemDescription; }
            set { itemDescription = value; }
        }

        [DataMember]
        public int POItemQuantity
        {
            get { return pOItemQuantity; }
            set { pOItemQuantity = value; }
        }

    }

    [DataContract]
    public class loginauthnization
    {
        string userID;
        string password;

        [DataMember]
        public string UserID
        {
            get { return userID; }
            set { userID = value; }
        }

        [DataMember]
        public string Password
        {
            get { return password; }
            set { password = value; }
        }

    }

    [DataContract]
    public class loginData
    {
        string roleID;
        string employeeID;

        [DataMember]
        public string RoleID
        {
            get { return roleID; }
            set { roleID = value; }
        }

        [DataMember]
        public string EmployeeID
        {
            get { return employeeID; }
            set { employeeID = value; }
        }
    }

    [DataContract]
    public class DisbModel
    {
        int disbId;
        string disbStatus;

        public static DisbModel Make(int id, string status)
        {
            DisbModel d = new DisbModel();
            d.disbId = id;
            d.disbStatus = status;
            return d;
        }

        [DataMember]
        public int DisbId
        {
            get { return disbId; }
            set { disbId = value; }
        }
        [DataMember]
        public string DisbStatus
        {
            get { return disbStatus; }
            set { disbStatus = value; }
        }

    }
    [DataContract]
    public class CPModel
    {
        int id;
        string name;
        string address;

        public static CPModel Make(int id, string name, string address)
        {
            CPModel c = new CPModel();
            c.id = id;
            c.name = name;
            c.address = address;
            return c;
        }
        [DataMember]
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        [DataMember]
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        [DataMember]
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
    }
    [DataContract]
    public class DisbDetailsModel
    {
        int disbItemId;
        string disbItemDescription;
        int disbItemQuantReq;
        int disbItemQuantDelivered;
        public static DisbDetailsModel Make(int id, string description, int needQty, int actualQty)
        {
            DisbDetailsModel c = new DisbDetailsModel();
            c.disbItemId = id;
            c.disbItemDescription = description;
            c.disbItemQuantReq = needQty;
            c.disbItemQuantDelivered = actualQty;
            return c;
        }
        [DataMember]
        public int DisbItemId
        {
            get { return disbItemId; }
            set { disbItemId = value; }
        }
        [DataMember]
        public string DisbItemDescription
        {
            get { return disbItemDescription; }
            set { disbItemDescription = value; }
        }
        [DataMember]
        public int DisbItemQuantReq
        {
            get { return disbItemQuantReq; }
            set { disbItemQuantReq = value; }
        }
        [DataMember]
        public int DisbItemQuantDelivered
        {
            get { return disbItemQuantDelivered; }
            set { disbItemQuantDelivered = value; }
        }
    }
    [DataContract]
    public class DisbursementByDepartment
    {
         string itemID;
             string departmentName;



          string itemQuantity;
          string itemDescription;

            [DataMember]
             public string ItemID
            {
              get { return itemID; }
              set { itemID = value; }
            }
           [DataMember]
            public string ItemDescription
            {
              get { return itemDescription; }
              set { itemDescription = value; }
            }
      
           [DataMember]
            public string ItemQuantity
            {
              get { return itemQuantity; }
              set { itemQuantity = value; }
            }
       
        [DataMember]
        public string DepartmentName
{
  get { return departmentName; }
  set { departmentName = value; }
}


    }
     [DataContract]
    public class CollectionPoint
    {
        string collectionPointID;
        String collectionPointName;
        String collectionPointAddress;
        String collectionPointTime;
        String collectionPointDate;
         [DataMember]
        public String CollectionPointDate
        {
            get { return collectionPointDate; }
            set { collectionPointDate = value; }
        }
         [DataMember]
        public String CollectionPointTime
        {
            get { return collectionPointTime; }
            set { collectionPointTime = value; }
        }
         [DataMember]
        public String CollectionPointAddress
        {
            get { return collectionPointAddress; }
            set { collectionPointAddress = value; }
        }
         [DataMember]
        public String CollectionPointName
        {
            get { return collectionPointName; }
            set { collectionPointName = value; }
        }
         [DataMember]
        public string CollectionPointID
        {
            get { return collectionPointID; }
            set { collectionPointID = value; }
        }
    }
}
    