.class public Lcom/oppo/tribune/usercenter/login/LoginModel;
.super Ljava/lang/Object;
.source "LoginModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;,
        Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

.field private mContext:Landroid/content/Context;

.field private mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/usercenter/login/LoginModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginModel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/usercenter/login/LoginModel;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginModel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/usercenter/login/LoginModel;->getUserMsg(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/usercenter/login/LoginModel;)Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginModel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    return-object v0
.end method

.method private getUserMsg(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isNeedSavePswd"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/tribune/LoginUtils;->updateLocalUserInfo(Landroid/content/Context;)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    move-result-object v0

    .line 95
    .local v0, "result":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUid()J

    move-result-wide v2

    sput-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/LoginUtils;->writeCurrentUid(Landroid/content/Context;J)V

    .line 103
    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/usercenter/login/LoginModel;->updateSignInRecord(Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;Ljava/lang/String;Z)V

    .line 104
    return-void

    .line 98
    :cond_0
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    goto :goto_0
.end method

.method private final updateSignInRecord(Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "r"    # Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    .param p2, "passord"    # Ljava/lang/String;
    .param p3, "isNeedSavePswd"    # Z

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUid()J

    move-result-wide v2

    .line 113
    .local v2, "uid":J
    invoke-virtual {p1}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "username":Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object v1, p2

    .line 115
    .local v1, "password":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    invoke-static {v4, v1}, Lcom/oppo/tribune/util/MD5Sign;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_2
    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 120
    new-instance v0, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    invoke-direct {v0}, Lcom/oppo/tribune/usercenter/login/SignInRecord;-><init>()V

    .line 121
    .local v0, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUid(J)V

    .line 122
    invoke-virtual {v0, v4}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setUsername(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setPassword(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setRememberPassword(Z)V

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->setTokenSignIn(Z)V

    .line 128
    iget-object v5, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-virtual {v5, v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->insert(Lcom/oppo/tribune/usercenter/login/SignInRecord;)Z

    goto :goto_0

    .line 114
    .end local v0    # "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .end local v1    # "password":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isNeedsavePswd"    # Z

    .prologue
    .line 47
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;-><init>(Lcom/oppo/tribune/usercenter/login/LoginModel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .local v0, "task":Lcom/oppo/tribune/usercenter/login/LoginModel$LoginTask;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method

.method public readFromDataBase()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setLoginCallBack(Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginModel;->mCallBack:Lcom/oppo/tribune/usercenter/login/LoginModel$LoginCallBack;

    .line 35
    return-void
.end method
