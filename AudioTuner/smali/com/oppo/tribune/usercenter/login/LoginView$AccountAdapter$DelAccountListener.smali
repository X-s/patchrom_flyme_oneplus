.class Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelAccountListener"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mUserId:J

.field final synthetic this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;Ljava/lang/String;J)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mName:Ljava/lang/String;

    .line 331
    iput-wide p3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mUserId:J

    .line 332
    return-void
.end method

.method static synthetic access$600(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mUserId:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mUserId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    new-instance v0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->access$500(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "builder":Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;
    const v2, 0x7f0c007f

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setTitle(I)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .line 343
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->this$1:Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    # getter for: Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->access$500(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0080

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .line 346
    const v2, 0x104000a

    new-instance v3, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;

    invoke-direct {v3, p0}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$1;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)V

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .line 366
    const v2, 0x1040009

    new-instance v3, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$2;

    invoke-direct {v3, p0}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener$2;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;)V

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    .line 374
    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->show()Lcom/oppo/tribune/ui/CustomAlertDialog;

    goto :goto_0
.end method
