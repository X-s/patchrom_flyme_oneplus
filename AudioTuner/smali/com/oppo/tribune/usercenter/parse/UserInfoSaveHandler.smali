.class public Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;
.super Ljava/lang/Object;
.source "UserInfoSaveHandler.java"


# static fields
.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_FAILED:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field private static final URL:Ljava/lang/String; = "http://ddinterface2.oneplus.cn:8000/user/modify"


# instance fields
.field private mResult:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;->mResult:Z

    .line 35
    iput-boolean p1, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;->mResult:Z

    .line 36
    return-void
.end method

.method private static getNamePairs(Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;)Ljava/util/List;
    .locals 9
    .param p0, "saveEntity"    # Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget v4, p0, Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;->gender:I

    .line 61
    .local v4, "gender":I
    iget v2, p0, Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;->birthYear:I

    .line 62
    .local v2, "birthyear":I
    iget v1, p0, Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;->birthMonth:I

    .line 63
    .local v1, "birthmonth":I
    iget v0, p0, Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;->birthday:I

    .line 64
    .local v0, "birthday":I
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;->city:Ljava/lang/String;

    .line 66
    .local v3, "city":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v5, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "gender"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "birthyear"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "birthmonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "birthday"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "city"

    invoke-direct {v6, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v5
.end method

.method public static saveUserInfo(Landroid/content/Context;Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;)Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saveEntity"    # Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-static {p1}, Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;->getNamePairs(Lcom/oppo/tribune/usercenter/userinfo/UserInfoSaveEntity;)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://ddinterface2.oneplus.cn:8000/user/modify?sign="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/oppo/tribune/util/NearMeSignCheck;->getSignString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "url":Ljava/lang/String;
    new-instance v1, Lcom/oppo/tribune/util/connection/PostMethod;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 47
    .local v1, "mehtod":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-virtual {v1, v2}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 48
    invoke-virtual {v1}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 49
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v7

    if-nez v7, :cond_1

    .line 50
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/info/SubmitResult;->parse([B)Lcom/oppo/tribune/protobuf/info/SubmitResult;

    move-result-object v3

    .line 51
    .local v3, "result":Lcom/oppo/tribune/protobuf/info/SubmitResult;
    if-eqz v3, :cond_1

    .line 52
    new-instance v7, Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;

    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/info/SubmitResult;->getRet()I

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    invoke-direct {v7, v5}, Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;-><init>(Z)V

    move-object v5, v7

    .line 55
    .end local v3    # "result":Lcom/oppo/tribune/protobuf/info/SubmitResult;
    :goto_1
    return-object v5

    .restart local v3    # "result":Lcom/oppo/tribune/protobuf/info/SubmitResult;
    :cond_0
    move v5, v6

    .line 52
    goto :goto_0

    .line 55
    .end local v3    # "result":Lcom/oppo/tribune/protobuf/info/SubmitResult;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isSaveSucc()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/parse/UserInfoSaveHandler;->mResult:Z

    return v0
.end method
