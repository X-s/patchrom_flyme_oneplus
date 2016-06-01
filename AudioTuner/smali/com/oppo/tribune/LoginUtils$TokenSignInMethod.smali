.class public Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/oppo/tribune/LoginUtils$SignInMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/LoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenSignInMethod"
.end annotation


# instance fields
.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    .line 287
    return-void
.end method


# virtual methods
.method public checkExist(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J

    .prologue
    const/4 v6, 0x0

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "username":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->isRomLoginType(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    invoke-static {p1}, Lcom/oppo/tribune/TokenSignInResult;->getSignInUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 328
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_2

    .line 342
    :cond_0
    :goto_1
    return-void

    .line 324
    :cond_1
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getNameByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 332
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "sin":Ljava/lang/String;
    invoke-static {v1}, Lcom/oppo/tribune/util/MD5Sign;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://www.oppo.com/index.php?q=interface/user/add/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "user/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v3, "/uid/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, "/sin/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v6, v6}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    goto :goto_1
.end method

.method public getSignInUserId()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    return-wide v0
.end method

.method public signIn(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 291
    invoke-static {}, Lcom/oppo/tribune/util/CommonMethods;->checkNotOnMainThread()V

    .line 292
    iput-wide v4, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    .line 296
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "token":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/oppo/tribune/LoginUtils;->updateLocalUserFromServer(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    .line 308
    iget-wide v2, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 309
    iput-wide v4, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    .line 311
    :cond_0
    iget-wide v2, p0, Lcom/oppo/tribune/LoginUtils$TokenSignInMethod;->mUserId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
