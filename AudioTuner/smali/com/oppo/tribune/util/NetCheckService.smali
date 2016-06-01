.class public Lcom/oppo/tribune/util/NetCheckService;
.super Landroid/app/Service;
.source "NetCheckService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;,
        Lcom/oppo/tribune/util/NetCheckService$LoginListener;,
        Lcom/oppo/tribune/util/NetCheckService$MyBinder;
    }
.end annotation


# static fields
.field public static final ACTION_USERCENTER_MODIFY_NAME:Ljava/lang/String; = "com.oppo.usercenter.modify.name"

.field private static final DEFAULT_RELOGIN_DELAY:J = 0xa4cb80L

.field public static final TAG:Ljava/lang/String;

.field private static mIsNeedToRomReSignIn:Z

.field private static mLoginListenerVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/tribune/util/NetCheckService$LoginListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoginState:Z


# instance fields
.field private mCheckWapNet:Ljava/lang/Boolean;

.field private final mColorSignInTask:Ljava/lang/Runnable;

.field private final mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

.field private final mFristInSignInTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsFristIn:Z

.field private mMyBinder:Lcom/oppo/tribune/util/NetCheckService$MyBinder;

.field private mSaveTip:Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;

.field private final mSignInTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const-class v0, Lcom/oppo/tribune/util/NetCheckService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/NetCheckService;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/oppo/tribune/util/NetCheckService;->mLoginListenerVector:Ljava/util/Vector;

    .line 65
    sput-boolean v1, Lcom/oppo/tribune/util/NetCheckService;->mLoginState:Z

    .line 74
    sput-boolean v1, Lcom/oppo/tribune/util/NetCheckService;->mIsNeedToRomReSignIn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Lcom/oppo/tribune/util/NetCheckService$MyBinder;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/util/NetCheckService$MyBinder;-><init>(Lcom/oppo/tribune/util/NetCheckService;)V

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mMyBinder:Lcom/oppo/tribune/util/NetCheckService$MyBinder;

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mCheckWapNet:Ljava/lang/Boolean;

    .line 69
    iput-boolean v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mIsFristIn:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/oppo/tribune/util/NetCheckService$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/util/NetCheckService$1;-><init>(Lcom/oppo/tribune/util/NetCheckService;)V

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    new-instance v0, Lcom/oppo/tribune/util/NetCheckService$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/util/NetCheckService$2;-><init>(Lcom/oppo/tribune/util/NetCheckService;)V

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mColorSignInTask:Ljava/lang/Runnable;

    .line 281
    new-instance v0, Lcom/oppo/tribune/util/NetCheckService$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/util/NetCheckService$3;-><init>(Lcom/oppo/tribune/util/NetCheckService;)V

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;

    .line 331
    new-instance v0, Lcom/oppo/tribune/util/NetCheckService$4;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/util/NetCheckService$4;-><init>(Lcom/oppo/tribune/util/NetCheckService;)V

    iput-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mFristInSignInTask:Ljava/lang/Runnable;

    .line 383
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/util/NetCheckService;Lcom/oppo/tribune/util/NetWorkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;
    .param p1, "x1"    # Lcom/oppo/tribune/util/NetWorkService;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/NetCheckService;->warnWapNet(Lcom/oppo/tribune/util/NetWorkService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/util/NetCheckService;)Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/util/NetCheckService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mIsFristIn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/tribune/util/NetCheckService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/oppo/tribune/util/NetCheckService;->mIsFristIn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/tribune/util/NetCheckService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/tribune/util/NetCheckService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/tribune/util/NetCheckService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/NetCheckService;->trackType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/tribune/util/NetCheckService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/tribune/util/NetCheckService;->checkIsCurrentUserModified()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/util/NetCheckService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/util/NetCheckService;->doCurrentUserModify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/tribune/util/NetCheckService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/tribune/util/NetCheckService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/util/NetCheckService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/NetCheckService;->changeLoginState(Z)V

    return-void
.end method

.method public static addLoginListener(Lcom/oppo/tribune/util/NetCheckService$LoginListener;Z)V
    .locals 1
    .param p0, "loginListener"    # Lcom/oppo/tribune/util/NetCheckService$LoginListener;
    .param p1, "call"    # Z

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 370
    sget-boolean v0, Lcom/oppo/tribune/util/NetCheckService;->mLoginState:Z

    invoke-interface {p0, v0}, Lcom/oppo/tribune/util/NetCheckService$LoginListener;->login(Z)V

    .line 372
    :cond_0
    sget-object v0, Lcom/oppo/tribune/util/NetCheckService;->mLoginListenerVector:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method private changeLoginState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 359
    sput-boolean p1, Lcom/oppo/tribune/util/NetCheckService;->mLoginState:Z

    .line 360
    sget-object v2, Lcom/oppo/tribune/util/NetCheckService;->mLoginListenerVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 361
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oppo/tribune/util/NetCheckService$LoginListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    .line 363
    .local v1, "ll":Lcom/oppo/tribune/util/NetCheckService$LoginListener;
    invoke-interface {v1, p1}, Lcom/oppo/tribune/util/NetCheckService$LoginListener;->login(Z)V

    goto :goto_0

    .line 365
    .end local v1    # "ll":Lcom/oppo/tribune/util/NetCheckService$LoginListener;
    :cond_0
    return-void
.end method

.method private checkIsCurrentUserModified()Z
    .locals 6

    .prologue
    .line 252
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    .line 253
    .local v0, "accountUtils":Lcom/oppo/tribune/usercenter/login/RomAccountUtils;
    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xef

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCurrentUserModify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "modifiedName"    # Ljava/lang/String;
    .param p2, "OldUserName"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v2, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;

    iget-object v3, p0, Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;-><init>(Landroid/content/Context;)V

    .line 225
    .local v2, "dao":Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;
    sget-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-virtual {v2, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->query(J)Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v0

    .line 226
    .local v0, "curUser":Lcom/oppo/tribune/protobuf/info/UserInfo;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 228
    .local v1, "curUserName":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v3, 0x1

    sput-boolean v3, Lcom/oppo/tribune/util/NetCheckService;->mIsNeedToRomReSignIn:Z

    .line 232
    :cond_0
    return-void

    .line 226
    .end local v1    # "curUserName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static doRomReSignInTask(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    sget-boolean v1, Lcom/oppo/tribune/util/NetCheckService;->mIsNeedToRomReSignIn:Z

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/oppo/tribune/util/NetCheckService;->mIsNeedToRomReSignIn:Z

    .line 239
    const v1, 0x7f0c041a

    invoke-static {p0, v1}, Lcom/oppo/tribune/ui/CustomToast;->showToast(Landroid/content/Context;I)V

    .line 240
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->signOutAction(Landroid/content/Context;)V

    .line 241
    new-instance v0, Lcom/oppo/tribune/RomLoginUtils;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/RomLoginUtils;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "romLoginUtils":Lcom/oppo/tribune/RomLoginUtils;
    invoke-virtual {v0}, Lcom/oppo/tribune/RomLoginUtils;->doRomLogin()V

    goto :goto_0
.end method

.method private onInitService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Lcom/oppo/tribune/util/NetWorkService;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/util/NetWorkService;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "networkService":Lcom/oppo/tribune/util/NetWorkService;
    invoke-virtual {v0}, Lcom/oppo/tribune/util/NetWorkService;->isMobileActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lcom/oppo/tribune/util/NetCheckService;->warnWapNet(Lcom/oppo/tribune/util/NetWorkService;)V

    .line 159
    :cond_0
    return-void
.end method

.method private registerConnectionReceiver()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oppo.usercenter.modify.name"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oppo/tribune/util/NetCheckService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method public static removeLoginListener(Lcom/oppo/tribune/util/NetCheckService$LoginListener;)V
    .locals 1
    .param p0, "loginListener"    # Lcom/oppo/tribune/util/NetCheckService$LoginListener;

    .prologue
    .line 376
    sget-object v0, Lcom/oppo/tribune/util/NetCheckService;->mLoginListenerVector:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method private trackType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 260
    move-object v0, p0

    .line 261
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mSaveTip:Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;

    invoke-direct {v1, v0}, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mSaveTip:Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mSaveTip:Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;

    invoke-virtual {v1, p1}, Lcom/oppo/tribune/util/NetCheckService$NetworkTrafficSaveTip;->trackType(I)V

    .line 265
    return-void
.end method

.method private unregisterConnectionReceiver()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/util/NetCheckService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    return-void
.end method

.method private warnWapNet(Lcom/oppo/tribune/util/NetWorkService;)V
    .locals 4
    .param p1, "service"    # Lcom/oppo/tribune/util/NetWorkService;

    .prologue
    .line 162
    move-object v0, p0

    .line 163
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isApplicationForeground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService;->mCheckWapNet:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/oppo/tribune/util/NetWorkService;->getNetworkType()I

    move-result v1

    .line 168
    .local v1, "networkType":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 172
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/util/NetCheckService;->mCheckWapNet:Ljava/lang/Boolean;

    .line 173
    const v2, 0x7f0c039d

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    .end local v1    # "networkType":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mMyBinder:Lcom/oppo/tribune/util/NetCheckService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    iput-object p0, p0, Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    .line 97
    invoke-direct {p0, p0}, Lcom/oppo/tribune/util/NetCheckService;->onInitService(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    .line 103
    .local v0, "colorAccountUtils":Lcom/oppo/tribune/usercenter/login/RomAccountUtils;
    invoke-direct {p0}, Lcom/oppo/tribune/util/NetCheckService;->registerConnectionReceiver()V

    .line 104
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mDao:Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-virtual {v1}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xa4cb80

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService;->mFristInSignInTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/tribune/util/NetCheckService;->mColorSignInTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/tribune/util/NetCheckService;->mSignInTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    invoke-direct {p0}, Lcom/oppo/tribune/util/NetCheckService;->unregisterConnectionReceiver()V

    .line 118
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/oppo/tribune/util/NetCheckService;->stopSelf()V

    .line 127
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
