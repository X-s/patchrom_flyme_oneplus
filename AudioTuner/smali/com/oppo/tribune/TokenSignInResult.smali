.class public Lcom/oppo/tribune/TokenSignInResult;
.super Ljava/lang/Object;
.source "TokenSignInResult.java"


# static fields
.field private static final SIGNIN_TOKEN_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/plugin.php?id=sso:auth&token="


# instance fields
.field private final mUid:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    iput-wide p1, p0, Lcom/oppo/tribune/TokenSignInResult;->mUid:J

    .line 43
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://bbs2.wanyol.com/plugin.php?id=sso:auth&token="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 74
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getSignInUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-static {p0}, Lcom/oppo/tribune/TokenSignInResult;->getServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    const-string v6, ""

    .line 118
    :goto_0
    return-object v6

    .line 100
    :cond_0
    new-instance v3, Lcom/oppo/tribune/util/connection/GetMethod;

    invoke-direct {v3, p0, v5, v7, v7}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 101
    .local v3, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 102
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    const-string v6, ""

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/GetMethod;->getCookie()Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-static {v2}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const-string v6, ""

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getInstant()Lcom/oppo/tribune/usercenter/login/RomAccountUtils;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/oppo/tribune/usercenter/login/RomAccountUtils;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "token":Ljava/lang/String;
    invoke-static {p0, v4, v7}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->parse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;

    move-result-object v1

    .line 114
    .local v1, "handler":Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;
    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/parse/UserInfoResultHandler;->getUserName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 118
    :cond_3
    const-string v6, ""

    goto :goto_0
.end method

.method public static hasTokenUser(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/oppo/tribune/TokenSignInResult;->getServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static signIn(Landroid/content/Context;)Lcom/oppo/tribune/TokenSignInResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 50
    invoke-static {p0}, Lcom/oppo/tribune/TokenSignInResult;->getServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v5

    .line 54
    :cond_1
    const/4 v6, 0x1

    invoke-static {p0, v4, v7, v6}, Lcom/oppo/tribune/util/HttpUtils;->parseConnection(Landroid/content/Context;Ljava/lang/String;ZZ)[B

    move-result-object v0

    .line 55
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 57
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/oppo/tribune/util/Utils;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 58
    .local v2, "uid":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 60
    new-instance v5, Lcom/oppo/tribune/TokenSignInResult;

    invoke-direct {v5, v2, v3}, Lcom/oppo/tribune/TokenSignInResult;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public getUid()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/oppo/tribune/TokenSignInResult;->mUid:J

    return-wide v0
.end method
