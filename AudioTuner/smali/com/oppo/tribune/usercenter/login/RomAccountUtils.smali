.class public Lcom/oppo/tribune/usercenter/login/RomAccountUtils;
.super Ljava/lang/Object;
.source "RomAccountUtils.java"


# static fields
.field private static final ACTION_USERCENTER_REGISTER:Ljava/lang/String; = "oppo.intent.action.regcheckmobile"

.field private static final ACTION_USERCENTER_SIGNIN:Ljava/lang/String; = "oppo.service.intent.action.signin"

.field private static final APPCODE_COMMUNITY:Ljava/lang/String; = "20062"

.field private static final APPCODE_TRIBUNE:Ljava/lang/String; = "20062"

.field public static final LOGIN_TYPE_COLOR:I = 0x1

.field public static final LOGIN_TYPE_NORMAL:I = 0x0

.field private static final PACKAGETNAME_COMMUNITY:Ljava/lang/String; = "com.oppo.community"

.field private static final PACKAGETNAME_TRIBUNE:Ljava/lang/String; = "com.oppo.tribune"

.field private static final TAG:Ljava/lang/String;

.field private static final USERCENTER_APKNAME:Ljava/lang/String; = "com.oppo.usercenter"

.field private static mColorAccountUtils:Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

.field private static mCurrentAppCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "20062"

    sput-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    invoke-direct {v0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;-><init>()V

    sput-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mColorAccountUtils:Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mColorAccountUtils:Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    invoke-direct {v0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;-><init>()V

    sput-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mColorAccountUtils:Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    .line 41
    :cond_0
    sget-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mColorAccountUtils:Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    return-object v0
.end method


# virtual methods
.method public checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 165
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public checkServiceApkExist(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->hasServiceAPK(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public checkUserCenterExist(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v0, "com.oppo.usercenter"

    invoke-virtual {p0, p1, v0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public forcReqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 118
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/oppo/service/account/AccountAgent;->forcReqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 127
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/oppo/service/account/AccountAgent;->forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public getCurAppCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNameByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppo/service/account/AccountAgent;->getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppo/service/account/AccountAgent;->getTokenByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUCServiceVersionCode(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->checkUserCenterExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUserCenterVersionCode(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->checkUserCenterExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initAppCode(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const-string v1, "com.oppo.community"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "20062"

    sput-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public isLogin(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkOnMainThread()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oppo/service/account/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRomLoginType(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->checkServiceApkExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->checkUserCenterExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToFuc(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    sget-object v0, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppo/service/account/AccountAgent;->jumpToFuc(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public reToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/oppo/service/account/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 100
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/oppo/service/account/AccountAgent;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public reqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 109
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->mCurrentAppCode:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/oppo/service/account/AccountAgent;->reqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 112
    return-void
.end method
