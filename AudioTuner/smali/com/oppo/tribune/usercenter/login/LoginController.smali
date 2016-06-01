.class public Lcom/oppo/tribune/usercenter/login/LoginController;
.super Ljava/lang/Object;
.source "LoginController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    }
.end annotation


# instance fields
.field IS_INTERRUPT:Ljava/lang/Boolean;

.field private final mAccountSelectBtnClkLsn:Landroid/view/View$OnClickListener;

.field private mAccountTextWatcher:Landroid/text/TextWatcher;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsLastAutoFillPassword:Z

.field private final mLoginBtnClkLsn:Landroid/view/View$OnClickListener;

.field private mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

.field private mLoginDlgDismissLsn:Landroid/content/DialogInterface$OnDismissListener;

.field private mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;

.field private mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

.field private mModelLoginCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

.field private final mRegisterBtnClkLsn:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/usercenter/login/LoginView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginview"    # Lcom/oppo/tribune/usercenter/login/LoginView;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mIsLastAutoFillPassword:Z

    .line 69
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginController$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginController$1;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mAccountTextWatcher:Landroid/text/TextWatcher;

    .line 128
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginController$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginController$2;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mAccountSelectBtnClkLsn:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginController$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginController$3;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginBtnClkLsn:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginController$4;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginController$4;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mRegisterBtnClkLsn:Landroid/view/View$OnClickListener;

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->IS_INTERRUPT:Ljava/lang/Boolean;

    .line 178
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginController$5;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginController$5;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginDlgDismissLsn:Landroid/content/DialogInterface$OnDismissListener;

    .line 213
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginController$6;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/LoginController$6;-><init>(Lcom/oppo/tribune/usercenter/login/LoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mModelLoginCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    .line 51
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    .line 54
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginModel;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/usercenter/login/LoginModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;

    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mModelLoginCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginModel;->setLoginCallBack(Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;)V

    .line 57
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mAccountSelectBtnClkLsn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setBtnAcountSelectClkLsn(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginBtnClkLsn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setBtnLoginClkLsn(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mRegisterBtnClkLsn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setBtnRegisterClkLsn(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mAccountTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->addAccountChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/usercenter/login/LoginController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginController;->getPasswordFromDb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/usercenter/login/LoginController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mIsLastAutoFillPassword:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/tribune/usercenter/login/LoginController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mIsLastAutoFillPassword:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/tribune/usercenter/login/LoginController;)Lcom/oppo/tribune/usercenter/login/LoginModel;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/tribune/usercenter/login/LoginController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginController;->login()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/tribune/usercenter/login/LoginController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginController;->loginSucceed()V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/tribune/usercenter/login/LoginController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginController;->loginFail(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/tribune/usercenter/login/LoginController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPasswordFromDb(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "strInputAccount"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-static {p1}, Lcom/oppo/tribune/util/CommonMethods;->isVisibilityStr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v3

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;

    invoke-virtual {v4}, Lcom/oppo/tribune/usercenter/login/LoginModel;->readFromDataBase()Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    invoke-static {v2}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "strPassword":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .line 116
    .local v1, "record":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {p1, v3}, Lcom/oppo/tribune/util/MD5Sign;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    goto :goto_0
.end method

.method private login()V
    .locals 5

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginController;->preCheckResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oppo/tribune/util/AccessCookies;->clear(Landroid/content/Context;)V

    .line 167
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->IS_INTERRUPT:Ljava/lang/Boolean;

    .line 168
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    iget-object v4, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginDlgDismissLsn:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/usercenter/login/LoginView;->showLoginPrcsDlg(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 170
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "account":Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->isImgSavePswdChecked()Z

    move-result v2

    .line 174
    .local v2, "savePassword":Z
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginModel:Lcom/oppo/tribune/usercenter/login/LoginModel;

    invoke-virtual {v3, v0, v1, v2}, Lcom/oppo/tribune/usercenter/login/LoginModel;->login(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "savePassword":Z
    :cond_0
    return-void
.end method

.method private loginFail(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 249
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->hideLoginPrcsDlg()V

    .line 250
    new-instance v1, Lcom/oppo/tribune/util/NetWorkService;

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oppo/tribune/util/NetWorkService;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "netWorkService":Lcom/oppo/tribune/util/NetWorkService;
    invoke-virtual {v1}, Lcom/oppo/tribune/util/NetWorkService;->getNetworkType()I

    move-result v0

    .line 252
    .local v0, "netType":I
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    .line 259
    :goto_0
    invoke-virtual {v1}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 260
    const/4 v1, 0x0

    .line 261
    return-void

    .line 257
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/tribune/usercenter/login/LoginController;->showPrompt(I)V

    goto :goto_0
.end method

.method private loginSucceed()V
    .locals 4

    .prologue
    .line 232
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-static {v0, v2, v3}, Lcom/oppo/tribune/LoginUtils;->whenSignInSuccess(Landroid/content/Context;J)V

    .line 235
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->hideLoginPrcsDlg()V

    .line 236
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    const v1, 0x7f0c06f5

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    .line 237
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    invoke-interface {v0}, Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;->onLoginSuccessed()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->hideLoginPrcsDlg()V

    .line 244
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    goto :goto_0
.end method

.method private preCheckResult()Z
    .locals 4

    .prologue
    .line 190
    new-instance v1, Lcom/oppo/tribune/util/NetWorkService;

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oppo/tribune/util/NetWorkService;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, "netWorkService":Lcom/oppo/tribune/util/NetWorkService;
    invoke-virtual {v1}, Lcom/oppo/tribune/util/NetWorkService;->isMobileActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    const v3, 0x7f0c06f0

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    .line 193
    invoke-virtual {v1}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x0

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {v1}, Lcom/oppo/tribune/util/NetWorkService;->recycle()V

    .line 198
    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x1

    .line 201
    .local v0, "loginViaConnect":Z
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    const/4 v0, 0x0

    .line 204
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    const v3, 0x7f0c006e

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v2}, Lcom/oppo/tribune/usercenter/login/LoginView;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 208
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    const v3, 0x7f0c006f

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    goto :goto_0
.end method

.method private showPrompt(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "strId":I
    packed-switch p1, :pswitch_data_0

    .line 277
    :pswitch_0
    const v0, 0x7f0c0073

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->showToast(I)V

    .line 280
    return-void

    .line 267
    :pswitch_1
    const v0, 0x7f0c0070

    .line 268
    goto :goto_0

    .line 270
    :pswitch_2
    const v0, 0x7f0c0071

    .line 271
    goto :goto_0

    .line 273
    :pswitch_3
    const v0, 0x7f0c0072

    .line 274
    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dismissAccountPw()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->dismissAccountPw()V

    .line 284
    return-void
.end method

.method public hideLoginPrcsDlg()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->hideLoginPrcsDlg()V

    .line 288
    return-void
.end method

.method public isLoginTaskRunning()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/LoginView;->isLoginTaskRunning()Z

    move-result v0

    return v0
.end method

.method public loginAfterRegisterSucc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/usercenter/login/LoginView;->setAccount(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginView:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-virtual {v0, p2}, Lcom/oppo/tribune/usercenter/login/LoginView;->setPassword(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/LoginController;->login()V

    .line 301
    :cond_0
    return-void
.end method

.method public setLoginSuccessCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V
    .locals 0
    .param p1, "loginSuccCallback"    # Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .line 67
    return-void
.end method
