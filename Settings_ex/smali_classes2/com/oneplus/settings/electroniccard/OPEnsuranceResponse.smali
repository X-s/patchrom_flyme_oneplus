.class public Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;
.super Ljava/lang/Object;
.source "OPEnsuranceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnsuranceResponse"


# instance fields
.field errMsg:Ljava/lang/String;

.field imeiData:Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;

.field ret:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;
    .locals 20
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 73
    const/4 v15, 0x0

    return-object v15

    .line 76
    :cond_0
    new-instance v13, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;

    invoke-direct {v13}, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;-><init>()V

    .line 79
    .local v13, "response":Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v15, "ret"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 82
    .local v14, "ret":I
    const-string/jumbo v15, "errMsg"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "errMsg":Ljava/lang/String;
    iput v14, v13, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->ret:I

    .line 84
    iput-object v7, v13, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->errMsg:Ljava/lang/String;

    .line 86
    new-instance v3, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;

    invoke-direct {v3}, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;-><init>()V

    .line 87
    .local v3, "data":Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;
    const-string/jumbo v15, "data"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 88
    .local v4, "dataJsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 89
    .local v10, "imeiJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v15, "imei1"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "imei1":Ljava/lang/String;
    const-string/jumbo v15, "imei2"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "imei2":Ljava/lang/String;
    const-string/jumbo v15, "orderNo"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "orderNo":Ljava/lang/String;
    const-string/jumbo v15, "countryCode"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 93
    .local v2, "countryCode":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 95
    .local v16, "warrantyStartTime":J
    :try_start_1
    const-string/jumbo v15, "warrantyStartTime"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 99
    :goto_0
    :try_start_2
    iput-object v8, v3, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;->imei1:Ljava/lang/String;

    .line 100
    iput-object v9, v3, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;->imei2:Ljava/lang/String;

    .line 101
    iput-object v12, v3, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;->orderNo:Ljava/lang/String;

    .line 102
    iput-object v2, v3, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;->countryCode:Ljava/lang/String;

    .line 103
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;->warrantyStartTime:J

    .line 104
    iput-object v3, v13, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->imeiData:Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "data":Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;
    .end local v4    # "dataJsonObject":Lorg/json/JSONObject;
    .end local v7    # "errMsg":Ljava/lang/String;
    .end local v8    # "imei1":Ljava/lang/String;
    .end local v9    # "imei2":Ljava/lang/String;
    .end local v10    # "imeiJsonObject":Lorg/json/JSONObject;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "orderNo":Ljava/lang/String;
    .end local v14    # "ret":I
    .end local v16    # "warrantyStartTime":J
    :goto_1
    const-string/jumbo v15, "EnsuranceResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parse result : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v13

    .line 96
    .restart local v2    # "countryCode":Ljava/lang/String;
    .restart local v3    # "data":Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;
    .restart local v4    # "dataJsonObject":Lorg/json/JSONObject;
    .restart local v7    # "errMsg":Ljava/lang/String;
    .restart local v8    # "imei1":Ljava/lang/String;
    .restart local v9    # "imei2":Ljava/lang/String;
    .restart local v10    # "imeiJsonObject":Lorg/json/JSONObject;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "orderNo":Ljava/lang/String;
    .restart local v14    # "ret":I
    .restart local v16    # "warrantyStartTime":J
    :catch_0
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 106
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "data":Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;
    .end local v4    # "dataJsonObject":Lorg/json/JSONObject;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "errMsg":Ljava/lang/String;
    .end local v8    # "imei1":Ljava/lang/String;
    .end local v9    # "imei2":Ljava/lang/String;
    .end local v10    # "imeiJsonObject":Lorg/json/JSONObject;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "orderNo":Ljava/lang/String;
    .end local v14    # "ret":I
    .end local v16    # "warrantyStartTime":J
    :catch_1
    move-exception v6

    .line 107
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getWarrantyStart()J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->imeiData:Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;

    if-nez v0, :cond_0

    .line 119
    const-wide/16 v0, 0x0

    return-wide v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->imeiData:Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;

    iget-wide v0, v0, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;->warrantyStartTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EnsuranceResponse{ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->ret:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    const-string/jumbo v1, ", errMsg=\'"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->errMsg:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    const/16 v1, 0x27

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string/jumbo v1, ", imeiData="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse;->imeiData:Lcom/oneplus/settings/electroniccard/OPEnsuranceResponse$DataBean;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    const/16 v1, 0x7d

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
