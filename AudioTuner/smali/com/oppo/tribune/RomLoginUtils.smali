.class public Lcom/oppo/tribune/RomLoginUtils;
.super Ljava/lang/Object;
.source "RomLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;,
        Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;,
        Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;,
        Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RomLoginUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mILoginCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

.field private mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

.field private final mReAccountTask:Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;

.field private final mReSigninTask:Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;

.field private final mReTokenTask:Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;

.field private mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils$1;-><init>(Lcom/oppo/tribune/RomLoginUtils;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils$2;-><init>(Lcom/oppo/tribune/RomLoginUtils;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 193
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils$3;-><init>(Lcom/oppo/tribune/RomLoginUtils;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mILoginCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .line 222
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;-><init>(Lcom/oppo/tribune/RomLoginUtils;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReSigninTask:Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;

    .line 235
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;-><init>(Lcom/oppo/tribune/RomLoginUtils;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReTokenTask:Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;

    .line 248
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;-><init>(Lcom/oppo/tribune/RomLoginUtils;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReAccountTask:Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;

    .line 59
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->doGetTokenSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->cancleGetToken()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/tribune/RomLoginUtils;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->doGetTokenFail()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oppo/tribune/RomLoginUtils;Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;)Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;
    .param p1, "x1"    # Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->dismissLoginDlg()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->showLoginSuccessToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/RomLoginUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->showLoginFailToast()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/tribune/RomLoginUtils;)Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReSigninTask:Lcom/oppo/tribune/RomLoginUtils$ReSigninRunnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/tribune/RomLoginUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/RomLoginUtils;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancleGetToken()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "RomLoginUtils"

    const-string v1, "cancle to get token : token is empty and username is empty but not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/LoginUtils;->signOutAction(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method private dismissLoginDlg()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->dismiss()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 180
    :cond_0
    return-void
.end method

.method private doGetTokenFail()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "RomLoginUtils"

    const-string v1, "get usercenter token fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->showLoginFailToast()V

    .line 161
    return-void
.end method

.method private doGetTokenSuccess()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "RomLoginUtils"

    const-string v1, "get usercenter token success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/AccessCookies;->clear(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/oppo/tribune/RomLoginUtils;->doRomLogin()V

    .line 137
    return-void
.end method

.method private showLoginFailToast()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/tribune/util/ShowToastTask;

    iget-object v2, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f0c06f6

    invoke-direct {v1, v2, v3}, Lcom/oppo/tribune/util/ShowToastTask;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method private showLoginSuccessToast()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/tribune/util/ShowToastTask;

    iget-object v2, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f0c06f5

    invoke-direct {v1, v2, v3}, Lcom/oppo/tribune/util/ShowToastTask;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method private showQuickLoginDlg()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 165
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v1, 0x7f0c06f7

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setMessage(I)Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 166
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setCancelable(Z)V

    .line 167
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mQuickSignDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->show()V

    .line 173
    :cond_0
    return-void
.end method

.method private startReAccountTask()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReAccountTask:Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;

    iget-boolean v0, v0, Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;->isRunning:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReAccountTask:Lcom/oppo/tribune/RomLoginUtils$SwitchAccountRunnable;

    invoke-static {v0}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 116
    :cond_0
    return-void
.end method

.method private startReTokenTask()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReTokenTask:Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;

    iget-boolean v0, v0, Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;->isRunning:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mReTokenTask:Lcom/oppo/tribune/RomLoginUtils$ReTokenRunnable;

    invoke-static {v0}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 123
    :cond_0
    return-void
.end method

.method private startTokenSignInTask()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/tribune/RomLoginUtils;->mILoginCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;-><init>(Landroid/content/Context;Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;)V

    iput-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    .line 154
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mTokenSignInRunnable:Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;

    invoke-static {v0}, Lcom/oppo/tribune/util/ThreadUtils;->startThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public changeRomLoginState()V
    .locals 4

    .prologue
    .line 67
    const-string v0, "RomLoginUtils"

    const-string v1, "changeRomLoginState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06f0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 77
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "RomLoginUtils"

    const-string v1, "changeRomLoginState current_uid <= 0startTokenSignInTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->startTokenSignInTask()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->startReTokenTask()V

    .line 83
    const-string v0, "RomLoginUtils"

    const-string v1, "changeRomLoginState current_uid <= 0 startReTokenTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const-string v0, "RomLoginUtils"

    const-string v1, "changeRomLoginState startReAccountTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->startReAccountTask()V

    goto :goto_0

    .line 91
    :cond_3
    const-string v0, "RomLoginUtils"

    const-string v1, "changeRomLoginState startReTokenTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->startReTokenTask()V

    goto :goto_0
.end method

.method public doRomLogin()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->startTokenSignInTask()V

    .line 141
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->showQuickLoginDlg()V

    .line 142
    return-void
.end method

.method public setLoginSuccCallBack(Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/tribune/RomLoginUtils;->mLoginSuccCallBack:Lcom/oppo/tribune/usercenter/login/LoginController$LoginSuccCallBack;

    .line 64
    return-void
.end method

.method public tryToLogin()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/RomLoginUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "RomLoginUtils"

    const-string v1, "tryToLogin current_uid <= 0 startTokenSignInTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/oppo/tribune/RomLoginUtils;->startTokenSignInTask()V

    goto :goto_0
.end method
