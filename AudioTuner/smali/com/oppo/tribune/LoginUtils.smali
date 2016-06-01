.class public Lcom/oppo/tribune/LoginUtils;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;,
        Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;,
        Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;,
        Lcom/oppo/tribune/LoginUtils$SignInMethod;,
        Lcom/oppo/tribune/LoginUtils$AutoSignUser;
    }
.end annotation


# static fields
.field private static final KEY_CURRENTUID:Ljava/lang/String; = "CurrentUid"

.field private static final ON_USER_LOGIN:Ljava/lang/String; = "on_user_login"

.field private static final ON_USER_LOGOUT:Ljava/lang/String; = "on_user_logout"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "CurrentLoginUserUid"

.field public static final RESULT_ACCOUNT_ERROR:I = 0x0

.field public static final RESULT_ACCOUNT_NOT_ACTIVATED:I = 0x2

.field public static final RESULT_OK:I = 0x1

.field public static final RESULT_TIME_ERROR:I = -0x1

.field public static final RESULT_UNKNOW_ERROR:I = -0x2

.field private static final SIGNIN_CHECK_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/plugin.php?id=sso:auth"

.field private static final SSOID:Ljava/lang/String; = "ssoid_tribune"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/oppo/tribune/LoginUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/LoginUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->signInWithCookie(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static canUseNearMeUserManager(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v3, "oppo.service.intent.action.signin"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "signIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static final commonForumSuffix(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    invoke-static {p0}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/oppo/tribune/util/PhoneInfo;->getSinCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "sin":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "/imei/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v4, "/mobile/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v4, "/sin/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAutoLoginUser(Landroid/content/Context;)Lcom/oppo/tribune/LoginUtils$AutoSignUser;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->queryLastSignInRecord()Lcom/oppo/tribune/usercenter/login/SignInRecord;

    move-result-object v1

    .line 69
    .local v1, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v2

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    new-instance v2, Lcom/oppo/tribune/LoginUtils$AutoSignUser;

    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oppo/tribune/LoginUtils$AutoSignUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAutoSignInUserId(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    .line 441
    const-wide/16 v6, -0x1

    .line 442
    .local v6, "userId":J
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/dao/UserSignInRecordDao;->queryLastSignInRecord()Lcom/oppo/tribune/usercenter/login/SignInRecord;

    move-result-object v3

    .line 444
    .local v3, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    if-nez v3, :cond_1

    move-wide v8, v6

    .line 474
    :cond_0
    :goto_0
    return-wide v8

    .line 448
    :cond_1
    invoke-virtual {v3}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->isTokenLogin()Z

    move-result v2

    .line 449
    .local v2, "isTokenSignIn":Z
    invoke-virtual {v3}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->isRememberPassword()Z

    move-result v1

    .line 451
    .local v1, "isRemPassWord":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 454
    :cond_2
    new-instance v4, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;

    invoke-direct {v4}, Lcom/oppo/tribune/LoginUtils$CookieSignInMethod;-><init>()V

    .line 455
    .local v4, "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    invoke-interface {v4, p0}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->signIn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 456
    invoke-interface {v4}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->getSignInUserId()J

    move-result-wide v6

    .line 460
    :cond_3
    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 461
    if-eqz v2, :cond_5

    .line 462
    new-instance v4, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;

    .end local v4    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    invoke-direct {v4}, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;-><init>()V

    .line 463
    .restart local v4    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    invoke-interface {v4, p0}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->signIn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 464
    invoke-interface {v4}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->getSignInUserId()J

    move-result-wide v6

    :cond_4
    :goto_1
    move-wide v8, v6

    .line 474
    goto :goto_0

    .line 466
    :cond_5
    if-eqz v1, :cond_4

    .line 467
    new-instance v4, Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;

    .end local v4    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    invoke-direct {v4}, Lcom/oppo/tribune/LoginUtils$BaseSignInMethod;-><init>()V

    .line 468
    .restart local v4    # "method":Lcom/oppo/tribune/LoginUtils$SignInMethod;
    invoke-interface {v4, p0}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->signIn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 469
    invoke-interface {v4}, Lcom/oppo/tribune/LoginUtils$SignInMethod;->getSignInUserId()J

    move-result-wide v6

    goto :goto_1
.end method

.method private static getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    const-string v0, "CurrentLoginUserUid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasSignedNearMeUser(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->canUseNearMeUserManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oppo/tribune/TokenSignInResult;->hasTokenUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoginStatus(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 420
    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 422
    const v2, 0x7f0c00ba

    invoke-static {p0, v2, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "loginIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->hasSignedNearMeUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "loginIntent":Landroid/content/Intent;
    const-class v2, Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .restart local v0    # "loginIntent":Landroid/content/Intent;
    :goto_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    .end local v0    # "loginIntent":Landroid/content/Intent;
    :goto_1
    return v1

    .line 429
    .restart local v0    # "loginIntent":Landroid/content/Intent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "loginIntent":Landroid/content/Intent;
    const-class v2, Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "loginIntent":Landroid/content/Intent;
    goto :goto_0

    .line 434
    .end local v0    # "loginIntent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final readCookie(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    invoke-static {p0}, Lcom/oppo/tribune/util/AccessCookies;->readCookie(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-static {v0}, Lcom/oppo/tribune/util/connection/HttpMethod;->formatCookieList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readCurrentUid(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 486
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentUid"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static signInWithBaseMethod(Landroid/content/Context;Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Lcom/oppo/tribune/BaseSignInResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoSignUser"    # Lcom/oppo/tribune/LoginUtils$AutoSignUser;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    # getter for: Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mUsername:Ljava/lang/String;
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->access$000(Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mPassword:Ljava/lang/String;
    invoke-static {p1}, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->access$100(Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/oppo/tribune/BaseSignInResult;->signIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/BaseSignInResult;

    move-result-object v0

    .line 146
    .local v0, "r":Lcom/oppo/tribune/BaseSignInResult;
    return-object v0
.end method

.method private static signInWithCookie(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string v1, "http://bbs2.wanyol.com/plugin.php?id=sso:auth"

    .line 163
    .local v1, "url":Ljava/lang/String;
    const-string v4, "http://bbs2.wanyol.com/plugin.php?id=sso:auth"

    invoke-static {p0, v4}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/oppo/tribune/util/Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 166
    .local v2, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 170
    .end local v2    # "uid":J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static signOutAction(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x1

    .line 353
    sput-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    .line 354
    invoke-static {p0, v0, v1}, Lcom/oppo/tribune/LoginUtils;->writeCurrentUid(Landroid/content/Context;J)V

    .line 356
    invoke-static {p0}, Lcom/oppo/tribune/util/AccessCookies;->clear(Landroid/content/Context;)V

    .line 358
    invoke-static {p0}, Lcom/oppo/statistics/NearMeStatistics;->removeSsoID(Landroid/content/Context;)V

    .line 359
    const-string v0, "on_user_logout"

    invoke-static {p0, v0}, Lcom/oppo/statistics/NearMeStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public static startLoginActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->hasSignedNearMeUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/oppo/tribune/SignInPrepareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void

    .line 132
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/oppo/tribune/usercenter/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static startTokenSignInActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.service.intent.action.signin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public static updateLocalUserFromServer(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-static {p0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->parse(Landroid/content/Context;)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    move-result-object v0

    .line 188
    .local v0, "handler":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->writeToDatabase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUid()J

    move-result-wide v2

    .line 191
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static updateLocalUserFromServer(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->parse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    move-result-object v0

    .line 198
    .local v0, "handler":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->writeToDatabase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUid()J

    move-result-wide v2

    .line 201
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static updateLocalUserInfo(Landroid/content/Context;)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->parse(Landroid/content/Context;)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    move-result-object v0

    .line 210
    .local v0, "handler":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->writeToDatabase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    .end local v0    # "handler":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    :goto_0
    return-object v0

    .restart local v0    # "handler":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static whenSignInSuccess(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 375
    sput-wide p1, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    .line 377
    invoke-static {p0, p1, p2}, Lcom/oppo/tribune/LoginUtils;->writeCurrentUid(Landroid/content/Context;J)V

    .line 379
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oppo/statistics/NearMeStatistics;->setSsoID(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v0, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ssoid_tribune"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "on_user_login"

    invoke-static {p0, v2, v0}, Lcom/oppo/statistics/NearMeStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.tunerACTION_LOGIN_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "loginAction":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void
.end method

.method public static final writeCookie(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-static {p0, p1}, Lcom/oppo/tribune/util/AccessCookies;->writeCookie(Landroid/content/Context;Ljava/util/List;)V

    .line 391
    return-void
.end method

.method public static writeCurrentUid(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J

    .prologue
    .line 490
    invoke-static {p0}, Lcom/oppo/tribune/LoginUtils;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "CurrentUid"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    return-void
.end method
