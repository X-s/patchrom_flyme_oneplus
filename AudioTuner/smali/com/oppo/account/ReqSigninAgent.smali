.class public Lcom/oppo/account/ReqSigninAgent;
.super Ljava/lang/Object;
.source "ReqSigninAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/account/ReqSigninAgent$MyReqThread;,
        Lcom/oppo/account/ReqSigninAgent$ReqThread;
    }
.end annotation


# static fields
.field private static askSignin:Lcom/nearme/aidl/IAskSignin;

.field private static askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;


# instance fields
.field private isLocked:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mTokenHandler:Landroid/os/Handler;

.field private myConnection:Landroid/content/ServiceConnection;

.field private myNewConnection:Landroid/content/ServiceConnection;

.field private myReqThread:Lcom/oppo/account/ReqSigninAgent$MyReqThread;

.field private reqThread:Lcom/oppo/account/ReqSigninAgent$ReqThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/oppo/account/ReqSigninAgent;->askSignin:Lcom/nearme/aidl/IAskSignin;

    .line 257
    sput-object v0, Lcom/oppo/account/ReqSigninAgent;->askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    .line 29
    const v0, 0x1869f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;

    .line 238
    new-instance v0, Lcom/oppo/account/ReqSigninAgent$1;

    invoke-direct {v0, p0}, Lcom/oppo/account/ReqSigninAgent$1;-><init>(Lcom/oppo/account/ReqSigninAgent;)V

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    .line 403
    new-instance v0, Lcom/oppo/account/ReqSigninAgent$2;

    invoke-direct {v0, p0}, Lcom/oppo/account/ReqSigninAgent$2;-><init>(Lcom/oppo/account/ReqSigninAgent;)V

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    .line 35
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/oppo/account/ReqSigninAgent;->initHandler()V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/nearme/aidl/IAskSignin;)V
    .locals 0

    .prologue
    .line 93
    sput-object p0, Lcom/oppo/account/ReqSigninAgent;->askSignin:Lcom/nearme/aidl/IAskSignin;

    return-void
.end method

.method static synthetic access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nearme/aidl/IAskSigninByAppCode;)V
    .locals 0

    .prologue
    .line 257
    sput-object p0, Lcom/oppo/account/ReqSigninAgent;->askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;

    return-void
.end method

.method static synthetic access$3()Lcom/nearme/aidl/IAskSignin;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/oppo/account/ReqSigninAgent;->askSignin:Lcom/nearme/aidl/IAskSignin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/oppo/account/ReqSigninAgent;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/oppo/account/ReqSigninAgent;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$6()Lcom/nearme/aidl/IAskSigninByAppCode;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/oppo/account/ReqSigninAgent;->askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;

    return-object v0
.end method

.method private bindNearMeService()V
    .locals 6

    .prologue
    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nearme.server.nearmeservice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 188
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/account/ReqSigninAgent;->unbindNearMeService()V

    .line 193
    iget-object v2, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nearme.server.nearmeservice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 193
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 195
    :catch_1
    move-exception v1

    .line 196
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/oppo/account/ReqSigninAgent;->unbindNearMeService()V

    .line 197
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendExceptionStatus()V

    goto :goto_0
.end method

.method private hasServicePackage(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v1, "com.oppo.service.account"

    .line 82
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 83
    const/16 v4, 0x2000

    .line 82
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    const/4 v2, 0x1

    .line 88
    :goto_0
    return v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 87
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private myBindNearMeService()V
    .locals 6

    .prologue
    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nearme.server.nearmeservicebyappcode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 351
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/account/ReqSigninAgent;->myUnbindNearMeService()V

    .line 356
    iget-object v2, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nearme.server.nearmeservicebyappcode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/oppo/account/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 356
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 358
    :catch_1
    move-exception v1

    .line 360
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/oppo/account/ReqSigninAgent;->myUnbindNearMeService()V

    .line 361
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendExceptionStatus()V

    goto :goto_0
.end method

.method private reqToken(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/service/account/AccountAgent;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v6, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v6}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 109
    .local v6, "entity":Lcom/nearme/aidl/UserEntity;
    const v0, 0x1c9c76e

    invoke-virtual {v6, v0}, Lcom/nearme/aidl/UserEntity;->setResult(I)V

    .line 110
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 111
    .local v7, "message":Landroid/os/Message;
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    invoke-virtual {p1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    .end local v6    # "entity":Lcom/nearme/aidl/UserEntity;
    .end local v7    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oppo/account/ReqSigninAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendNoAPKStatus()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 122
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 124
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->bindNearMeService()V

    .line 125
    new-instance v0, Lcom/oppo/account/ReqSigninAgent$ReqThread;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oppo/account/ReqSigninAgent$ReqThread;-><init>(Lcom/oppo/account/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->reqThread:Lcom/oppo/account/ReqSigninAgent$ReqThread;

    .line 126
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->reqThread:Lcom/oppo/account/ReqSigninAgent$ReqThread;

    invoke-virtual {v0}, Lcom/oppo/account/ReqSigninAgent$ReqThread;->start()V

    goto :goto_0

    .line 128
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/account/ReqSigninAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private sendCancelStatus()V
    .locals 6

    .prologue
    .line 48
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 49
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76d

    const-string v3, "Already canceled!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private sendExceptionStatus()V
    .locals 6

    .prologue
    .line 64
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 65
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76e

    const-string v3, "Exception error!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method private sendNoAPKStatus()V
    .locals 6

    .prologue
    .line 72
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76f

    const-string v3, "No service APK!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method private sendOccupyStatus(Landroid/os/Handler;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 58
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76d

    const-string v3, "Occupied error!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method protected callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "sign"    # Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    sget-object v0, Lcom/oppo/account/ReqSigninAgent;->askSignin:Lcom/nearme/aidl/IAskSignin;

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/account/ApkInfoHelper;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/nearme/aidl/IAskSignin;->reqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v6

    .line 230
    .local v6, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendExceptionStatus()V

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "sign"    # Ljava/lang/String;
    .param p5, "appCode"    # Ljava/lang/String;

    .prologue
    .line 391
    :try_start_0
    sget-object v0, Lcom/oppo/account/ReqSigninAgent;->askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/account/ApkInfoHelper;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/nearme/aidl/IAskSigninByAppCode;->reqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v7

    .line 395
    .local v7, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendExceptionStatus()V

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initHandler()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendCancelStatus()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method protected myUnbindNearMeService()V
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/oppo/account/ReqSigninAgent;->askSigninByAppCode:Lcom/nearme/aidl/IAskSigninByAppCode;

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 375
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->myReqThread:Lcom/oppo/account/ReqSigninAgent$MyReqThread;

    invoke-virtual {v0}, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->interrupt()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->myReqThread:Lcom/oppo/account/ReqSigninAgent$MyReqThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reqToken(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;
    .param p6, "appCode"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oppo/account/ReqSigninAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->sendNoAPKStatus()V

    .line 293
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 280
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent;->mTokenHandler:Landroid/os/Handler;

    .line 282
    invoke-direct {p0}, Lcom/oppo/account/ReqSigninAgent;->myBindNearMeService()V

    .line 283
    new-instance v0, Lcom/oppo/account/ReqSigninAgent$MyReqThread;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 284
    invoke-direct/range {v0 .. v6}, Lcom/oppo/account/ReqSigninAgent$MyReqThread;-><init>(Lcom/oppo/account/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->myReqThread:Lcom/oppo/account/ReqSigninAgent$MyReqThread;

    .line 285
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->myReqThread:Lcom/oppo/account/ReqSigninAgent$MyReqThread;

    invoke-virtual {v0}, Lcom/oppo/account/ReqSigninAgent$MyReqThread;->start()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/account/ReqSigninAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/oppo/account/ReqSigninAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unbindNearMeService()V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/oppo/account/ReqSigninAgent;->askSignin:Lcom/nearme/aidl/IAskSignin;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/account/ReqSigninAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 212
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->reqThread:Lcom/oppo/account/ReqSigninAgent$ReqThread;

    invoke-virtual {v0}, Lcom/oppo/account/ReqSigninAgent$ReqThread;->interrupt()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/account/ReqSigninAgent;->reqThread:Lcom/oppo/account/ReqSigninAgent$ReqThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method
