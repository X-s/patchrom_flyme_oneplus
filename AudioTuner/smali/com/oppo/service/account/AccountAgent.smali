.class public Lcom/oppo/service/account/AccountAgent;
.super Ljava/lang/Object;
.source "AccountAgent.java"


# static fields
.field private static volatile callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/service/account/AccountAgent;->callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forcReqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 454
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 455
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/service/account/CallInfoAgent;->reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendLowVersionSDK(Landroid/os/Handler;)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static forceReqCheckPwd(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 251
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 253
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/service/account/CallInfoAgent;->reqCheckPwd(Landroid/os/Handler;)V

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 243
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 245
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/service/account/CallInfoAgent;->reqReSignin(Landroid/os/Handler;)V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 442
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 443
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/service/account/CallInfoAgent;->reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/service/account/AccountAgent;->forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static forceReqToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 235
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 237
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/service/account/CallInfoAgent;->reqToken(Landroid/os/Handler;)V

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static forceReqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 430
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/service/account/CallInfoAgent;->initHandler()V

    .line 431
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/service/account/CallInfoAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/service/account/AccountAgent;->forceReqToken(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lcom/oppo/service/account/AccountAgent;->callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/oppo/service/account/AccountAgent;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/oppo/service/account/AccountAgent;->callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/oppo/service/account/CallInfoAgent;

    invoke-direct {v0, p0}, Lcom/oppo/service/account/CallInfoAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/service/account/AccountAgent;->callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/oppo/service/account/AccountAgent;->callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getKekeNameByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v2, ""

    .line 313
    .local v2, "kekeName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 315
    .local v0, "c":Landroid/content/Context;
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xe6

    if-lt v4, v5, :cond_0

    .line 318
    :try_start_0
    const-string v4, "com.oppo.service.account"

    .line 319
    const/4 v5, 0x2

    .line 318
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 323
    const-string v4, "KEKE_NAME_RECORD_INFO"

    const/4 v5, 0x4

    .line 322
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 325
    .local v3, "prefence":Landroid/content/SharedPreferences;
    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 333
    .end local v3    # "prefence":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v2

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getNameByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->getOVName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 302
    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->getName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getNameByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTokenByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 285
    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUCServiceVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 46
    const-string v2, "com.oppo.service.account"

    .line 48
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 49
    const/16 v5, 0x2000

    .line 48
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 52
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getUserCenterVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 28
    const-string v2, "com.oppo.usercenter"

    .line 30
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 31
    const/16 v5, 0x2000

    .line 30
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static hasOldCenterPackage(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 100
    const-string v2, "com.oppo.usercenter"

    .line 102
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 103
    const/16 v5, 0x2000

    .line 102
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 105
    const/4 v5, 0x0

    .line 104
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 106
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v5, 0x82

    if-ge v4, v5, :cond_0

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x6e

    if-lt v4, v5, :cond_0

    .line 107
    const/4 v3, 0x1

    .line 113
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 112
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static hasServiceAPK(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static hasServicePackage(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v1, "com.oppo.service.account"

    .line 89
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 90
    const/16 v4, 0x2000

    .line 89
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static initAgent()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/service/account/AccountAgent;->callInfoAgent:Lcom/oppo/service/account/CallInfoAgent;

    .line 84
    return-void
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isLogin(Landroid/content/Context;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {p0}, Lcom/oppo/service/account/AuthTokenProvider;->isBefLogin(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 268
    invoke-static {p0, p1}, Lcom/oppo/service/account/AuthTokenProvider;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->isLogin(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static jumpToFuc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x20000000

    const/high16 v4, 0x10000000

    const/16 v3, 0xe6

    .line 469
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 470
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 471
    invoke-static {p0, p1}, Lcom/oppo/service/account/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.select.account"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/oppo/service/account/AccountAgent;->getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "name":Ljava/lang/String;
    const-string v2, "AccountName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 479
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 499
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 486
    :cond_2
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->isLogin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.functionnavigation"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 493
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 495
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static reqCheckPwd(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/service/account/CallInfoAgent;->reqCheckPwd(Landroid/os/Handler;)V

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/service/account/CallInfoAgent;->reqReSignin(Landroid/os/Handler;)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 399
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/service/account/CallInfoAgent;->reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/service/account/AccountAgent;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static reqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 417
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/service/account/CallInfoAgent;->reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendLowVersionSDK(Landroid/os/Handler;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static reqToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/service/account/CallInfoAgent;->reqToken(Landroid/os/Handler;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 349
    invoke-static {p0}, Lcom/oppo/service/account/AccountAgent;->getInstance(Landroid/content/Context;)Lcom/oppo/service/account/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/service/account/CallInfoAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/service/account/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-static {p1}, Lcom/oppo/service/account/AccountAgent;->sendNoPackageMessage(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static sendLowVersionSDK(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 125
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9cf61

    const-string v3, "UCService Version Too Low!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method private static sendNoPackageMessage(Landroid/os/Handler;)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method

.method private static sendNoneAccount(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 131
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/nearme/aidl/UserEntity;

    const v2, 0x1c9cf62

    const-string v3, "Account number is zero!"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
