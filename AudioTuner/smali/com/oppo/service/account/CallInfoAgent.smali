.class Lcom/oppo/service/account/CallInfoAgent;
.super Ljava/lang/Object;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;,
        Lcom/oppo/service/account/CallInfoAgent$TokenThread;
    }
.end annotation


# static fields
.field protected static final REQ_CHECK_PWD:I = 0x3

.field protected static final REQ_DEFAULT:I = 0x0

.field protected static final REQ_SINGNIN:I = 0x2

.field protected static final REQ_SWITCH_ACCOUNT:I = 0x3

.field protected static final REQ_TOKEN:I = 0x1

.field private static currentHandler:Landroid/os/Handler;

.field private static myToken:Lcom/nearme/aidl/IAskToken;

.field private static myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;


# instance fields
.field private isLocked:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

.field private myConnection:Landroid/content/ServiceConnection;

.field private myNewConnection:Landroid/content/ServiceConnection;

.field private myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

.field private tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 135
    sput-object v0, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    .line 343
    sput-object v0, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    .line 39
    const v0, 0x1869f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->isLocked:Ljava/lang/Integer;

    .line 74
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$1;

    invoke-direct {v0, p0}, Lcom/oppo/service/account/CallInfoAgent$1;-><init>(Lcom/oppo/service/account/CallInfoAgent;)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    .line 325
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$2;

    invoke-direct {v0, p0}, Lcom/oppo/service/account/CallInfoAgent$2;-><init>(Lcom/oppo/service/account/CallInfoAgent;)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    .line 566
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$3;

    invoke-direct {v0, p0}, Lcom/oppo/service/account/CallInfoAgent$3;-><init>(Lcom/oppo/service/account/CallInfoAgent;)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    .line 55
    iput-object p1, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/oppo/service/account/CallInfoAgent;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oppo/service/account/CallInfoAgent;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->isLocked:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nearme/aidl/IAskToken;)V
    .locals 0

    .prologue
    .line 135
    sput-object p0, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    return-void
.end method

.method static synthetic access$3(Lcom/nearme/aidl/IAskTokenByAppCode;)V
    .locals 0

    .prologue
    .line 343
    sput-object p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-void
.end method

.method static synthetic access$4()Lcom/nearme/aidl/IAskToken;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    return-object v0
.end method

.method static synthetic access$5()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$7()Lcom/nearme/aidl/IAskTokenByAppCode;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    return-object v0
.end method

.method private bindNearMeService()V
    .locals 6

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nearme.server.opposervice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/oppo/service/account/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 251
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/service/account/CallInfoAgent;->unbindNearMeService()V

    .line 257
    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    .line 258
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.nearme.server.opposervice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/oppo/service/account/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 257
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v1

    .line 261
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/oppo/service/account/CallInfoAgent;->unbindNearMeService()V

    .line 262
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v1, ""

    .line 98
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private myBindNearMeService()V
    .locals 6

    .prologue
    .line 472
    :try_start_0
    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    .line 473
    const-string v4, "com.nearme.server.opposervicebyappcode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oppo/service/account/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    .line 474
    const/4 v5, 0x1

    .line 472
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/service/account/CallInfoAgent;->myUnbindNearMeService()V

    .line 480
    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    .line 481
    const-string v4, "com.nearme.server.opposervicebyappcode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object v4, p0, Lcom/oppo/service/account/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 480
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 484
    :catch_1
    move-exception v1

    .line 485
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/oppo/service/account/CallInfoAgent;->myUnbindNearMeService()V

    .line 486
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    goto :goto_0
.end method

.method private sendCancelStatus()V
    .locals 6

    .prologue
    .line 108
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 109
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76c

    const-string v3, "Already canceled!"

    .line 110
    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method private sendExceptionStatus()V
    .locals 6

    .prologue
    .line 126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 127
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76e

    .line 128
    const-string v3, "Exception error!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method private sendOccupyStatus(Landroid/os/Handler;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9c76d

    const-string v3, "Occupied error!"

    .line 120
    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected callReqCheckPwd()Lcom/nearme/aidl/UserEntity;
    .locals 3

    .prologue
    .line 314
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 315
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/oppo/service/account/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->reqCheckPwd(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    .line 318
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected callReqSignin()Lcom/nearme/aidl/UserEntity;
    .locals 3

    .prologue
    .line 304
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 305
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/oppo/service/account/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->reqReSignin(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    :goto_0
    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    .line 308
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected callReqSignin(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 3
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 542
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskTokenByAppCode;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 543
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/oppo/service/account/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/nearme/aidl/IAskTokenByAppCode;->reqReSignin(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 547
    :goto_0
    return-object v1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    .line 547
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected callReqSwitchAccount(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 3
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 554
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskTokenByAppCode;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 555
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/oppo/service/account/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/nearme/aidl/IAskTokenByAppCode;->reqSwitchAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 559
    :goto_0
    return-object v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    .line 559
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected callReqToken()Lcom/nearme/aidl/UserEntity;
    .locals 3

    .prologue
    .line 294
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->registerCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 295
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/oppo/service/account/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->reqToken(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    .line 298
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected callReqToken(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .locals 3
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 523
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskTokenByAppCode;->registerCallback(Lcom/nearme/aidl/ICallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    :try_start_1
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/oppo/service/account/CallInfoAgent;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/nearme/aidl/IAskTokenByAppCode;->reqToken(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v1

    .line 536
    :goto_1
    return-object v1

    .line 525
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    .line 536
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public initHandler()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendCancelStatus()V

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method protected myUnbindNearMeService()V
    .locals 3

    .prologue
    .line 498
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    if-eqz v1, :cond_0

    .line 500
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myTokenByAppCode:Lcom/nearme/aidl/IAskTokenByAppCode;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskTokenByAppCode;->unregisterCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 501
    iget-object v1, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myNewConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 502
    iget-object v1, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    invoke-virtual {v1}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;->interrupt()V

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    goto :goto_0
.end method

.method protected reqCheckPwd(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 181
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 182
    sput-object p1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 183
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->bindNearMeService()V

    .line 184
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;-><init>(Lcom/oppo/service/account/CallInfoAgent;I)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    .line 185
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->start()V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/service/account/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected reqReSignin(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 165
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 166
    sput-object p1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 167
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->bindNearMeService()V

    .line 168
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;-><init>(Lcom/oppo/service/account/CallInfoAgent;I)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    .line 169
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->start()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/service/account/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 373
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 374
    sput-object p1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 375
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->myBindNearMeService()V

    .line 376
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p2}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;-><init>(Lcom/oppo/service/account/CallInfoAgent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    .line 377
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;->start()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/service/account/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 390
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 391
    sput-object p1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 392
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->myBindNearMeService()V

    .line 393
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p2}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;-><init>(Lcom/oppo/service/account/CallInfoAgent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    .line 394
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;->start()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/service/account/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected reqToken(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 149
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 150
    sput-object p1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 151
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->bindNearMeService()V

    .line 152
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;-><init>(Lcom/oppo/service/account/CallInfoAgent;I)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    .line 153
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->start()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/service/account/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected reqToken(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v0, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 357
    sput-object p1, Lcom/oppo/service/account/CallInfoAgent;->currentHandler:Landroid/os/Handler;

    .line 358
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->myBindNearMeService()V

    .line 359
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;-><init>(Lcom/oppo/service/account/CallInfoAgent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    .line 360
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent;->myTokenThread:Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent$MyTokenThread;->start()V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/service/account/CallInfoAgent;->sendOccupyStatus(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected unbindNearMeService()V
    .locals 3

    .prologue
    .line 273
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    sget-object v1, Lcom/oppo/service/account/CallInfoAgent;->myToken:Lcom/nearme/aidl/IAskToken;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myCallBack:Lcom/nearme/aidl/ICallBack$Stub;

    invoke-interface {v1, v2}, Lcom/nearme/aidl/IAskToken;->unregisterCallback(Lcom/nearme/aidl/ICallBack;)V

    .line 276
    iget-object v1, p0, Lcom/oppo/service/account/CallInfoAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/service/account/CallInfoAgent;->myConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    iget-object v1, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;

    invoke-virtual {v1}, Lcom/oppo/service/account/CallInfoAgent$TokenThread;->interrupt()V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/service/account/CallInfoAgent;->tokenThread:Lcom/oppo/service/account/CallInfoAgent$TokenThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/oppo/service/account/CallInfoAgent;->sendExceptionStatus()V

    goto :goto_0
.end method
