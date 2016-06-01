.class Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 352
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mAccountSelectpw:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$100(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 353
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->access$600(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    iget-object v3, v3, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    iget-object v3, v3, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxAccount:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$200(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView;->mEdtxPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->access$300(Lcom/oppo/tribune/usercenter/login/LoginView;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    iget-object v2, v2, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->access$500(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    new-instance v2, Lcom/oppo/tribune/provider/Condition;

    const-string v3, "uid"

    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;->this$2:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mUserId:J
    invoke-static {v4}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->access$700(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    return-void
.end method
