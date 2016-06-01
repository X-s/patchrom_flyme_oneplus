.class public Lcom/oppo/tribune/packshow/parse/SubmitReportModel;
.super Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;
.source "SubmitReportModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ID:Ljava/lang/String; = "type_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;-><init>()V

    .line 31
    return-void
.end method

.method private getHttpEntity(J)Ljava/util/List;
    .locals 5
    .param p1, "typeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    .local v0, "pairList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getRet([B)I
    .locals 5
    .param p1, "bs"    # [B

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 65
    :goto_0
    return v2

    .line 56
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 57
    .local v3, "s":Ljava/lang/String;
    const/4 v2, 0x1

    .line 59
    .local v2, "ret":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "jo":Lorg/json/JSONObject;
    const-string v4, "ret"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 61
    .end local v1    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://ddinterface2.oneplus.cn:8000/report/RequestConfig"

    .line 35
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method protected submitInfo(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeId"    # Ljava/lang/Long;

    .prologue
    .line 40
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->getHttpEntity(J)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const/4 v3, 0x0

    .line 48
    :goto_0
    return-object v3

    .line 45
    :cond_0
    new-instance v1, Lcom/oppo/tribune/util/connection/PostMethod;

    invoke-virtual {p0}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 46
    .local v1, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 47
    invoke-virtual {v1}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v2

    .line 48
    .local v2, "response":[B
    invoke-direct {p0, v2}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->getRet([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic submitInfo(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->submitInfo(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
