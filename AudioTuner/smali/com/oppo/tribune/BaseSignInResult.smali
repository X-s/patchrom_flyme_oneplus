.class public Lcom/oppo/tribune/BaseSignInResult;
.super Ljava/lang/Object;
.source "BaseSignInResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/BaseSignInResult$BaseResult;
    }
.end annotation


# instance fields
.field private final mBaseResult:Lcom/oppo/tribune/BaseSignInResult$BaseResult;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/BaseSignInResult$BaseResult;)V
    .locals 1
    .param p1, "result"    # Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    iput-object v0, p0, Lcom/oppo/tribune/BaseSignInResult;->mBaseResult:Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    .line 38
    return-void
.end method

.method private static createSignInEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "login_user_acc"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "login_user_pass"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "back"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method private static getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "http://testaccount.oppo.com/sysadmin/htm/index.php?q=user/ajaxlogin"

    return-object v0
.end method

.method private static parse(Ljava/lang/String;)Lcom/oppo/tribune/BaseSignInResult;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    .line 80
    .local v1, "result":Lcom/oppo/tribune/BaseSignInResult$BaseResult;
    if-eqz v1, :cond_0

    .line 81
    new-instance v2, Lcom/oppo/tribune/BaseSignInResult;

    invoke-direct {v2, v1}, Lcom/oppo/tribune/BaseSignInResult;-><init>(Lcom/oppo/tribune/BaseSignInResult$BaseResult;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "result":Lcom/oppo/tribune/BaseSignInResult$BaseResult;
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static signIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/BaseSignInResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Lcom/oppo/tribune/BaseSignInResult;->getServerUrl()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "url":Ljava/lang/String;
    new-instance v2, Lcom/oppo/tribune/util/connection/PostMethod;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v2, p0, v5, v6, v7}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 62
    .local v2, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-static {p1, p2}, Lcom/oppo/tribune/BaseSignInResult;->createSignInEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 64
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 65
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 68
    .local v3, "resultStr":Ljava/lang/String;
    new-instance v1, Lcom/oppo/tribune/util/HandlerMobileException;

    invoke-direct {v1, v3}, Lcom/oppo/tribune/util/HandlerMobileException;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "handlerMobileString":Lcom/oppo/tribune/util/HandlerMobileException;
    invoke-virtual {v1}, Lcom/oppo/tribune/util/HandlerMobileException;->getHandlerResult()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/tribune/BaseSignInResult;->parse(Ljava/lang/String;)Lcom/oppo/tribune/BaseSignInResult;

    move-result-object v6

    .line 73
    .end local v1    # "handlerMobileString":Lcom/oppo/tribune/util/HandlerMobileException;
    .end local v3    # "resultStr":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getResultId()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/BaseSignInResult;->mBaseResult:Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    iget v0, v0, Lcom/oppo/tribune/BaseSignInResult$BaseResult;->resultId:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/tribune/BaseSignInResult;->mBaseResult:Lcom/oppo/tribune/BaseSignInResult$BaseResult;

    iget-wide v0, v0, Lcom/oppo/tribune/BaseSignInResult$BaseResult;->userid:J

    return-wide v0
.end method
