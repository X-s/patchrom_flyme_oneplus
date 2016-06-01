.class public Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;
.super Ljava/lang/Object;
.source "TokenSignInRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

.field private mContext:Landroid/content/Context;

.field private mIsCancle:Z

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    .line 21
    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsRunning:Z

    .line 28
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mContext:Landroid/content/Context;

    .line 29
    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    .line 21
    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsRunning:Z

    .line 33
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .line 35
    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    .line 36
    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    .line 25
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsRunning:Z

    .line 45
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 46
    const-wide/16 v2, -0x1

    .line 47
    .local v2, "uid":J
    new-instance v0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;

    invoke-direct {v0}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;-><init>()V

    .line 48
    .local v0, "method":Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->signIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v0}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->getSignInUserId()J

    move-result-wide v2

    .line 50
    iget-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    if-nez v1, :cond_1

    .line 51
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    invoke-interface {v1}, Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;->onLoginSuccess()V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/util/SpecialStatistics;->loginAccountSuccess(Landroid/content/Context;J)V

    .line 57
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/LoginUtils;->whenSignInSuccess(Landroid/content/Context;J)V

    .line 70
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsRunning:Z

    .line 71
    return-void

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/tribune/LoginUtils;->signOutAction(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    invoke-interface {v1}, Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;->onTokenTimeOut()V

    goto :goto_0

    .line 66
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mIsCancle:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/TokenSignInRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    invoke-interface {v1}, Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;->onLoginFail()V

    goto :goto_0
.end method
