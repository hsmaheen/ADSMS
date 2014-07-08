﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ADSMS.DataAccess;
using System.Net.Mail;
namespace ADSMS.BizLogic
{
    public class AdjustmentService
    {
        AdjustmentRepository rep;
        public AdjustmentService()
        {
            rep = new AdjustmentRepository();
        }
        public object getAdjustmentVoucherByID(int id)
        {
            return rep.selectAdjustmentVoucherByAdjustmentVoucherID(id);

        }
        public List<object> getAdjustmentVoucherDetail(int adjID)
        {
            return rep.selectAdjustmentVoucherDetails(adjID);
        }
        public double getAdjustmentVoucherTotal(int adjID)
        {
            return rep.selectAdjustmentVoucheTotal(adjID);
        }
        public List<object> getAdjustmentVoucher()
        {
            return rep.selectAdjustmentVoucher();

        }
        public List<object> getAllAdjustmentVoucher()
        {
            return rep.selectAllAdjustmentVoucher();

        }
        public List<object> getTransactionForAdjVoucher(String userID)
        {
            return rep.selectAdjustmentVoucherToApprove(userID);

        }
        public bool saveAdjustmentVoucher(adjustmentvoucher a ,List<adjustmentvoucherdetail> d ,double totalprice)
        {
            try
            {
                rep.InsertAdjustmentVoucher(a, d);

                if (totalprice < 250)
                {
                    List<storeemp> supervisors = selectStoreSupervisor();
                    foreach (storeemp emp in supervisors)
                    {
                        MailMessage mail = new MailMessage();
                        mail.From = new MailAddress("sa37adt3@gmail.com");
                        //mail.To.Add(new MailAddress(emailID));
                        mail.To.Add(new MailAddress(emp.StoreEmpEmail));
                        mail.Subject = "Adjustment Voucher :";
                        String Header = "<head>"
                                + "<title>Adjustment voucher to approve</title>"
                                + "<meta charset=\"UTF-8\">"
                                + " <meta name=\"viewport\" content=\"width=device-width\">"
                                + " <link rel=\"stylesheet\" href=\"http://bootswatch.com/flatly/bootstrap.css\">"
                                + " <link rel=\"stylesheet\" href=\"http://bootswatch.com/assets/css/bootswatch.min.css\">"
                                + " </head>";
                        String BodyStart = "<body>";
                        String BodyContent = "There is new adjustment voucher to approve.";
                        String BodyEnd = "</body>";


                        mail.Body = Header + BodyStart + BodyContent + BodyEnd;

                        mail.IsBodyHtml = true;

                        SmtpClient sc = new SmtpClient();
                        sc.Host = "smtp.gmail.com";
                        sc.Port = 25;
                        sc.Credentials = new System.Net.NetworkCredential("sa37adt3@gmail.com", "12345678!");
                        sc.EnableSsl = true;
                        sc.Send(mail);
                    }
                }
                else if (totalprice >= 250)
                {
                    storeemp manager = selectManager();
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("sa37adt3@gmail.com");
                    //mail.To.Add(new MailAddress(emailID));
                    mail.To.Add(new MailAddress(manager.StoreEmpEmail));
                    mail.Subject = "Adjustment Voucher:";
                    String Header = "<head>"
                            + "<title>Adjustment voucher to approve</title>"
                            + "<meta charset=\"UTF-8\">"
                            + " <meta name=\"viewport\" content=\"width=device-width\">"
                            + " <link rel=\"stylesheet\" href=\"http://bootswatch.com/flatly/bootstrap.css\">"
                            + " <link rel=\"stylesheet\" href=\"http://bootswatch.com/assets/css/bootswatch.min.css\">"
                            + " </head>";
                    String BodyStart = "<body>";
                    String BodyContent = "There is new adjustment voucher to approve.";
                    String BodyEnd = "</body>";


                    mail.Body = Header + BodyStart + BodyContent + BodyEnd;

                    mail.IsBodyHtml = true;

                    SmtpClient sc = new SmtpClient();
                    sc.Host = "smtp.gmail.com";
                    sc.Port = 25;
                    sc.Credentials = new System.Net.NetworkCredential("sa37adt3@gmail.com", "12345678!");
                    sc.EnableSsl = true;
                    sc.Send(mail);

                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public void updateAdjustmentVoucher(int adjustmentvoucherID, string status ,int userID)
        {
            rep.UpdateAdjustmentVoucher(adjustmentvoucherID, status, userID);

            //Update TransactionTable
        }
        public List<storeemp> selectStoreSupervisor()
        {
            return rep.SelectSupervisor();
        }
        public storeemp selectManager()
        {
            return rep.SelectManager();
        }

    }
  
}
