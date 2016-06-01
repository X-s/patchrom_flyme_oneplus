.class public Lcom/oppo/tribune/usercenter/login/QuickLoginView;
.super Landroid/widget/ScrollView;
.source "QuickLoginView.java"


# instance fields
.field private mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03005e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public dismissQuickLoginDlg()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->dismiss()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 72
    :cond_0
    return-void
.end method

.method public getSignInUserView()Lcom/oppo/tribune/SignInUserView;
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0b01b0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/SignInUserView;

    return-object v0
.end method

.method public isLoginTaskIsRunning()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalLoginBtnClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 49
    const v0, 0x7f0b01b4

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public setQuickLoginBtnClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    const v0, 0x7f0b01b2

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public setRegisterBtnClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 53
    const v0, 0x7f0b01b5

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public showQuickLoginDlg(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 60
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setMessage(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 61
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setCancelable(Z)V

    .line 63
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v1, p1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 64
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->show()V

    .line 65
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .param p1, "strResId"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    return-void
.end method
