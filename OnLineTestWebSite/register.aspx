<%@ Page Title="" Language="C#" MasterPageFile="~/master/MasterPage-unlogined.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/register.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/Ajax.js" type="text/javascript"></script>
    <script src="Scripts/register.js" type="text/javascript"></script>
    <script type="text/javascript">
        //��checkcode()�����Ǹ�����֤��ͼƬ��Ҫ��
        function checkcode() {
            document.getElementById("ValidCode").src = "ashx/HandlerValidCode.ashx?wordnum=6&height=40&id=" + Math.random();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlace" runat="Server">
    <form id="form1" runat="server" action="#" method="post">
        <div id="reglogo"><span>
            <img src="Images/logo.png" alt="" /></span><span id="regist">&nbsp�˺�ע��</span></div>
        <center>
            <div id="regmaincontent">
                <div id="navigator"><span class="navmsg" id="regnow">1����д�˻���Ϣ</span><span class="navlab" id="regnowlab">��</span><span class="navmsg">2����֤�˻���Ϣ</span><span class="navlab">��</span><span class="navmsg">3��ע��ɹ�</span></div>
                <div id="regcontent">
                    <div>
                        <div class="txtLab">��Ա����</div>
                        <div class="txt">
                            <input type="text" name="UserName" id="txtusername" /></div>
                        <div class="descrip">*&nbsp5-20���ַ�</div>
                    </div>
                    <div>
                        <div class="txtLab">���룺</div>
                        <div class="txt">
                            <input type="password" name="PassWord" id="txtpassword" /></div>
                        <div class="descrip">*&nbsp��ĸ��ͷ��6-18���ַ�</div>
                    </div>
                    <%--<div id="KeyStrong"><div class="txtLab"></div><div class="txt"><span class="Stronger">��</span><span class="Stronger">��</span><span class="Stronger">ǿ</span></div><div class="descrip"></div></div>--%>
                    <div id="KeyStrong">
                        <div id="txtLabspecial"></div>
                        <div id="txtspecial">
                            <div id="Stronger1">��</div>
                            <div id="Stronger2">��</div>
                            <div id="Stronger3">ǿ</div>
                        </div>
                        <div id="descripspecial"></div>
                    </div>
                    <div>
                        <div class="txtLab">�ظ����룺</div>
                        <div class="txt">
                            <input type="password" id="password" /></div>
                        <div class="descrip">*</div>
                    </div>
                    <div>
                        <div class="txtLab">�����ʼ���</div>
                        <div class="txt">
                            <input type="text" name="Email" id="UserEmail" /></div>
                        <div class="descrip">*&nbsp�����ʼ�������֤</div>
                    </div>
                    <div>
                        <div class="txtLab">��������</div>
                        <div class="txt">
                            <input type="text" name="ChineseName" id="UserChineseName" /></div>
                        <div class="descrip">��ʹ��һ�����������ְ�</div>
                    </div>
                    <div>
                        <div class="txtLab">�绰��</div>
                        <div class="txt">
                            <input type="text" name="Tel" id="Tel" /></div>
                        <div class="descrip">���ձ�վ��֪ͨŶ</div>
                    </div>
                    <div>
                        <div class="txtLab">��֤�룺</div>
                        <div class="txt">
                            <input type="text" name="Code" id="Codes" /></div>
                        <div class="descrip" id="Code">
                            <img id="ValidCode" alt="��֤��" src="ashx/HandlerValidCode.ashx?wordnum=6&height=40" onclick="checkcode()" /></div>
                    </div>
                </div>
                <div id="picture">
                    <img src="Images/С��.jpg" alt="" /></div>
            </div>
            <div id="btnsubmit">
                <input type="submit" value="ͬ��Э�鲢ע��" id="sub" /></div>
            <div id="agreement"><a href="agreement.htm" target="_blank">�����߿���ϵͳ����Э�顷</a></div>
        </center>
    </form>
</asp:Content>

