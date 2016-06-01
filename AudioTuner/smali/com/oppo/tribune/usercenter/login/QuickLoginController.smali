.class public Lcom/oppo/tribune/usercenter/login/QuickLoginController;
.super Ljava/lang/Object;
.source "QuickLoginController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;,
        Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;
    }
.end annotation


# instance fields
.field private mActivityFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

.field private mContext:Landroid/app/Activity;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastUserName:Ljava/lang/String;

.field private final mLoadFailure:Ljava/lang/Runnable;

.field private final mLoadSuccess:Ljava/lang/Runnable;

.field private mLoadingUserName:Z

.field private mLocalRegisterListener:Landroid/view/View$OnClickListener;

.field private mLocalSignInListener:Landroid/view/View$OnClickListener;

.field private mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

.field private mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

.field private mQuickSignListener:Landroid/view/View$OnClickListener;

.field private final mQuickSignResult:Ljava/lang/Runnable;

.field private mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

.field private mUserId:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/tribune/usercenter/login/QuickLoginView;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "quickLoginView"    # Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadingUserName:Z

    .line 112
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$2;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignListener:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$3;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 143
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$4;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLocalSignInListener:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$5;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$5;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLocalRegisterListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$6;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$6;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadSuccess:Ljava/lang/Runnable;

    .line 177
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$7;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadFailure:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$8;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignResult:Ljava/lang/Runnable;

    .line 64
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->initialize()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadFailure:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oppo/tribune/usercenter/login/QuickLoginController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mUserId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignResult:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->updateSignInRecord()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLastUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLastUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadSuccess:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;
    .param p1, "x1"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignTask:Lcom/oppo/tribune/usercenter/login/QuickLoginController$QuickSignInTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mActivityFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oppo/tribune/usercenter/login/QuickLoginController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadingUserName:Z

    return p1
.end method

.method public static hasTokenUser(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 85
    .local v0, "code":I
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->checkServiceApkExist(Landroid/content/Context;)Z

    move-result v1

    .line 87
    .local v1, "isServiceExist":Z
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0x82

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcom/oppo/tribune/TokenSignInResult;->hasTokenUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->getSignInUserView()Lcom/oppo/tribune/SignInUserView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/SignInUserView;->startLoadUser()V

    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickSignListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->setQuickLoginBtnClkLsn(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLocalSignInListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->setLocalLoginBtnClkLsn(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mQuickLoginView:Lcom/oppo/tribune/usercenter/login/QuickLoginView;

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLocalRegisterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/QuickLoginView;->setRegisterBtnClkLsn(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private final updateSignInRecord()V
    .locals 6

    .prologue
    .line 250
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLastUserName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mUserId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 251
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    new-instance v1, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    invoke-direct {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;-><init>()V

    .line 254
    .local v1, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    iget-wide v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mUserId:J

    invoke-virtual {v1, v2, v3}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUid(J)V

    .line 255
    iget-object v2, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLastUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUsername(Ljava/lang/String;)V

    .line 256
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setPassword(Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setRememberPassword(Z)V

    .line 259
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setTokenSignIn(Z)V

    .line 261
    invoke-virtual {v0, v1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->insert(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Z

    .line 263
    .end local v0    # "dao":Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    .end local v1    # "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public loadSignedUserName()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadingUserName:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoadingUserName:Z

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;

    invoke-direct {v1, p0}, Lcom/oppo/tribune/usercenter/login/QuickLoginController$1;-><init>(Lcom/oppo/tribune/usercenter/login/QuickLoginController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    :cond_0
    return-void
.end method

.method public setActivityFinishListener(Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mActivityFinishListener:Lcom/oppo/tribune/usercenter/login/QuickLoginController$ActivityFinishListener;

    .line 61
    return-void
.end method

.method public setLoginSuccessCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V
    .locals 0
    .param p1, "loginSuccCallback"    # Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/QuickLoginController;->mLoginCompleteCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .line 80
    return-void
.end method
