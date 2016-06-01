.class public Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;
.super Ljava/lang/Object;
.source "HandlePackPraiseResult.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/CommonReturnValue;


# static fields
.field public static final CONfIG_ID:Ljava/lang/String; = "config_id"

.field public static final MSG_CODE_ALREADY_PRAISE:I = 0x2

.field public static final MSG_CODE_CANNOT_PRAISE_SELF:I = 0x4

.field public static final MSG_CODE_SUCCESS:I = 0x0

.field public static final MSG_DESCRIPTION_PRAISE_ERROR:Ljava/lang/String; = "HandlePraiseResult.praise.error"


# instance fields
.field private ret:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRequestEntity(Landroid/content/Context;J)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "config_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method private static getUrl(J)Ljava/lang/String;
    .locals 4
    .param p0, "config_id"    # J

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ddinterface2.oneplus.cn:8000/like/add?config_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public static parse(Landroid/content/Context;J)Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config_id"    # J

    .prologue
    .line 56
    new-instance v2, Lcom/oppo/tribune/util/connection/PostMethod;

    invoke-static {p1, p2}, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;->getUrl(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 58
    .local v2, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-static {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;->getRequestEntity(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 59
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 60
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 63
    .local v3, "response":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    .end local v3    # "response":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 71
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public getMsgcode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oppo/tribune/packshow/parse/HandlePackPraiseResult;->ret:I

    return v0
.end method
