.class public Lcom/oppo/tribune/square/parse/SquareTopLineResult;
.super Lcom/oppo/tribune/square/parse/AbsTopLineResult;
.source "SquareTopLineResult.java"


# static fields
.field private static final clientKey:Ljava/lang/String; = "*&wa@lle?^sa!e%v5e(]"


# instance fields
.field private mCategoryId:Ljava/lang/String;

.field private mOrder:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "pbResult"    # Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    .prologue
    .line 54
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;-><init>(JILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V

    .line 55
    return-void
.end method

.method private constructor <init>(ILcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "pbResult"    # Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    .prologue
    .line 59
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/tribune/square/parse/AbsTopLineResult;-><init>(JILcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;)V

    .line 60
    return-void
.end method

.method private static getCategoryToplineUrl(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    .line 78
    .local v2, "type_id":J
    const-wide/16 v4, -0x1

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 79
    const-wide/16 v2, 0x1

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://ddinterface2.oneplus.cn:8000/topic/getConfigList"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?page="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&type_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&perpage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "8"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    const-string v1, "&category_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    const-string v1, "&order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/util/NearMeSignCheck;->getAppendSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPostConfigDownloadNumIncreaseByOneUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://ddinterface2.oneplus.cn:8000/feed/download"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?config_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/util/NearMeSignCheck;->getAppendSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRet([B)I
    .locals 5
    .param p0, "bs"    # [B

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v2, 0x1

    .line 210
    :goto_0
    return v2

    .line 201
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    .line 202
    .local v3, "s":Ljava/lang/String;
    const/4 v2, 0x1

    .line 204
    .local v2, "ret":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "jo":Lorg/json/JSONObject;
    const-string v4, "ret"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 206
    .end local v1    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSearchUrl(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 95
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v6

    .line 96
    .local v6, "type_id":J
    const-wide/16 v8, -0x1

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    .line 97
    const-wide/16 v6, 0x1

    .line 99
    :cond_0
    const-string v1, "urlencode"

    .line 101
    .local v1, "encodeKeyword":Ljava/lang/String;
    :try_start_0
    const-string v5, "utf-8"

    invoke-static {p2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "http://ddinterface2.oneplus.cn:8000/search/SearchConfig"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?page="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&keyword="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&perpage="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "8"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&type_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&category_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oppo/tribune/util/NearMeSignCheck;->getAppendSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "sign":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "http://ddinterface2.oneplus.cn:8000/search/SearchConfig"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?page="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&keyword="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&perpage="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "8"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&type_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&category_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    .local v3, "sb1":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 102
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "sign":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getSpecificConfig(Landroid/content/Context;ILjava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "configIds"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    .line 244
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 269
    :goto_0
    return-object v5

    .line 248
    :cond_1
    new-instance v3, Lcom/oppo/tribune/util/connection/PostMethod;

    const-string v5, "http://ddinterface2.oneplus.cn:8000/topic/getSpecificConfigList"

    invoke-direct {v3, p0, v5}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    .local v3, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 252
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "config_ids"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "perpage"

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "accountType"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "token"

    invoke-direct {v5, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*&wa@lle?^sa!e%v5e(]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v3, v2}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 260
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 261
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 263
    :try_start_0
    new-instance v5, Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;-><init>(ILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_2
    move-object v5, v6

    .line 269
    goto/16 :goto_0
.end method

.method private static getToplineUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I

    .prologue
    .line 63
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    .line 64
    .local v2, "type_id":J
    const-wide/16 v4, -0x1

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 65
    const-wide/16 v2, 0x1

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://ddinterface2.oneplus.cn:8000/topic/getConfigList"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?page="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&type_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&perpage="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "7"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/util/NearMeSignCheck;->getAppendSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseCategoryTopline(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;
    .param p4, "order"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "url":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 150
    invoke-static {p0, p1, p3, p4}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getCategoryToplineUrl(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    :goto_0
    const-string v4, "Test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 157
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 158
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    :try_start_0
    new-instance v4, Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;-><init>(ILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    return-object v4

    .line 152
    .end local v0    # "buf":[B
    .end local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getSearchUrl(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 162
    .restart local v0    # "buf":[B
    .restart local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 166
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static parseTopline(Landroid/content/Context;ILjava/lang/String;)Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "url":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 126
    invoke-static {p0, p1}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getToplineUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 131
    :goto_0
    new-instance v2, Lcom/oppo/tribune/util/connection/GetMethod;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/oppo/tribune/util/connection/GetMethod;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 132
    .local v2, "method":Lcom/oppo/tribune/util/connection/GetMethod;
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/GetMethod;->execute()[B

    move-result-object v0

    .line 133
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    :try_start_0
    new-instance v4, Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;-><init>(ILcom/oppo/tribune/protobuf/ConfigThreadListProto$pb_type_configlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-object v4

    .line 128
    .end local v0    # "buf":[B
    .end local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getSearchUrl(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 137
    .restart local v0    # "buf":[B
    .restart local v2    # "method":Lcom/oppo/tribune/util/connection/GetMethod;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 141
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static postCheckUserCollectionUpdate(Landroid/content/Context;IJ)Lcom/oppo/tribune/square/parse/SquareTopLineResult;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "updateTime"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 275
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v5

    .line 279
    :cond_1
    new-instance v3, Lcom/oppo/tribune/util/connection/PostMethod;

    const-string v6, "http://ddinterface2.oneplus.cn:8000/sync/getUserCollection"

    invoke-direct {v3, p0, v6}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    .local v3, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 283
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "update_time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "perpage"

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "accountType"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "token"

    invoke-direct {v6, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*&wa@lle?^sa!e%v5e(]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v3, v2}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 291
    invoke-virtual {v3}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 292
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 294
    :try_start_0
    new-instance v6, Lcom/oppo/tribune/square/parse/SquareTopLineResult;

    invoke-static {v0}, Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;->parseFrom([B)Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;-><init>(ILcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlist;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v6

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto/16 :goto_0

    .line 298
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static postConfigDownloadNumIncreaseByOne(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "ret":I
    invoke-static {p0, p1}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getPostConfigDownloadNumIncreaseByOneUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/oppo/tribune/util/connection/PostMethod;

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    .local v1, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-virtual {v1}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 181
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    invoke-static {v0}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getRet([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    :cond_0
    return v2
.end method

.method public static postUserCollectionToServer(Landroid/content/Context;II)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configId"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v8, 0x2

    .line 222
    const/4 v3, 0x0

    .line 223
    .local v3, "ret":I
    new-instance v2, Lcom/oppo/tribune/util/connection/PostMethod;

    const-string v5, "http://ddinterface2.oneplus.cn:8000/sync/saveUserCollection"

    invoke-direct {v2, p0, v5}, Lcom/oppo/tribune/util/connection/PostMethod;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    .local v2, "method":Lcom/oppo/tribune/util/connection/PostMethod;
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "token":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 228
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "config_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "status"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "accountType"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "token"

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sign"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*&wa@lle?^sa!e%v5e(]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v2, v1}, Lcom/oppo/tribune/util/connection/PostMethod;->setEntity(Ljava/util/List;)V

    .line 235
    invoke-virtual {v2}, Lcom/oppo/tribune/util/connection/PostMethod;->execute()[B

    move-result-object v0

    .line 236
    .local v0, "buf":[B
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    invoke-static {v0}, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->getRet([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 239
    :cond_0
    return v3
.end method

.method public static sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getSoureType()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public getmCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getmOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->mOrder:Ljava/lang/String;

    return-object v0
.end method

.method public setmCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCategoryId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->mCategoryId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setmOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOrder"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oppo/tribune/square/parse/SquareTopLineResult;->mOrder:Ljava/lang/String;

    .line 50
    return-void
.end method
