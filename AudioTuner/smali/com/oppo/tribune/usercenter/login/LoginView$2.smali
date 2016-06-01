.class Lcom/oppo/tribune/usercenter/login/LoginView$2;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/LoginView;->getAcntListItemClkLsn(Ljava/util/List;)Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

.field final synthetic val$recordList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->val$recordList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$100(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 164
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->val$recordList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->val$recordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->val$recordList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .line 170
    .local v0, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "password":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/oppo/tribune/util/MD5Sign;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$200(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$200(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 176
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_3

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/usercenter/login/LoginView;->setImgSavePsswordChecked(Z)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$300(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$300(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$2;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/usercenter/login/LoginView;->setImgSavePsswordChecked(Z)V

    goto :goto_0
.end method
