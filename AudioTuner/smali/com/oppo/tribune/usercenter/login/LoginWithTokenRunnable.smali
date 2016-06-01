.class public Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;
.super Ljava/lang/Object;
.source "LoginWithTokenRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BASE_URL_HTTPS:Ljava/lang/String; = "http://183.57.47.59:9999/user/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

.field private mContext:Landroid/content/Context;

.field private mIsRunning:Z

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mIsRunning:Z

    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mIsRunning:Z

    .line 42
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mIsRunning:Z

    .line 47
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mToken:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    .line 50
    return-void
.end method


# virtual methods
.method public isLogin(Ljava/lang/String;)Z
    .locals 9
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 81
    :try_start_0
    const-string v0, "http://183.57.47.59:9999/user//passport/token/auth"

    .line 82
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Lcom/oneplus/api/DefaultClient;

    invoke-direct {v1, v0}, Lcom/oneplus/api/DefaultClient;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "client":Lcom/oneplus/api/OneplusClient;
    invoke-static {}, Lcom/oneplus/api/passport/request/AuthTokenRequest;->newRequest()Lcom/oneplus/api/OneplusRequest;

    move-result-object v3

    .line 84
    .local v3, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<Lcom/oneplus/api/passport/response/AuthTokenResponse;>;"
    const-string v6, "token"

    invoke-virtual {v3, v6, p1}, Lcom/oneplus/api/OneplusRequest;->addheader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {v1, v3}, Lcom/oneplus/api/OneplusClient;->execute(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;

    move-result-object v4

    check-cast v4, Lcom/oneplus/api/passport/response/AuthTokenResponse;

    .line 86
    .local v4, "response":Lcom/oneplus/api/passport/response/AuthTokenResponse;
    if-eqz v4, :cond_0

    const-string v6, "1"

    invoke-virtual {v4}, Lcom/oneplus/api/passport/response/AuthTokenResponse;->getRet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    sget-object v6, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/oneplus/api/passport/response/AuthTokenResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v5, 0x1

    .line 97
    .end local v0    # "URL":Ljava/lang/String;
    .end local v1    # "client":Lcom/oneplus/api/OneplusClient;
    .end local v3    # "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<Lcom/oneplus/api/passport/response/AuthTokenResponse;>;"
    .end local v4    # "response":Lcom/oneplus/api/passport/response/AuthTokenResponse;
    :goto_0
    return v5

    .line 90
    .restart local v0    # "URL":Ljava/lang/String;
    .restart local v1    # "client":Lcom/oneplus/api/OneplusClient;
    .restart local v3    # "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<Lcom/oneplus/api/passport/response/AuthTokenResponse;>;"
    .restart local v4    # "response":Lcom/oneplus/api/passport/response/AuthTokenResponse;
    :cond_0
    sget-object v6, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failure\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/oneplus/api/passport/response/AuthTokenResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/oneplus/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "URL":Ljava/lang/String;
    .end local v1    # "client":Lcom/oneplus/api/OneplusClient;
    .end local v3    # "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<Lcom/oneplus/api/passport/response/AuthTokenResponse;>;"
    .end local v4    # "response":Lcom/oneplus/api/passport/response/AuthTokenResponse;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lcom/oneplus/api/exception/ApiException;
    invoke-virtual {v2}, Lcom/oneplus/api/exception/ApiException;->printStackTrace()V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mIsRunning:Z

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mToken:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->isLogin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    invoke-interface {v1}, Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;->onLoginSuccess()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mIsRunning:Z

    .line 72
    return-void

    .line 64
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginWithTokenRunnable;->mCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    invoke-interface {v1}, Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;->onLoginFail()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method
