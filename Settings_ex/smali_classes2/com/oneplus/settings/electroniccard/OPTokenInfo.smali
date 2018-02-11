.class public Lcom/oneplus/settings/electroniccard/OPTokenInfo;
.super Ljava/lang/Object;
.source "OPTokenInfo.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expiresIn:Ljava/lang/Long;

.field private scope:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/oneplus/settings/electroniccard/OPTokenInfo;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const/4 v7, 0x0

    return-object v7

    .line 66
    :cond_0
    new-instance v5, Lcom/oneplus/settings/electroniccard/OPTokenInfo;

    invoke-direct {v5}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;-><init>()V

    .line 69
    .local v5, "tokenInfo":Lcom/oneplus/settings/electroniccard/OPTokenInfo;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "access_token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "accessToken":Ljava/lang/String;
    const-string/jumbo v7, "token_type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "tokenType":Ljava/lang/String;
    const-string/jumbo v7, "expires_in"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 74
    .local v2, "expiresIn":Ljava/lang/Long;
    const-string/jumbo v7, "scope"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "scope":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->setAccessToken(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v6}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->setTokenType(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v2}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->setExpiresIn(Ljava/lang/Long;)V

    .line 78
    invoke-virtual {v5, v4}, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->setScope(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v2    # "expiresIn":Ljava/lang/Long;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "scope":Ljava/lang/String;
    .end local v6    # "tokenType":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->expiresIn:Ljava/lang/Long;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->accessToken:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setExpiresIn(Ljava/lang/Long;)V
    .locals 0
    .param p1, "expiresIn"    # Ljava/lang/Long;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->expiresIn:Ljava/lang/Long;

    .line 48
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->scope:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenType"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oneplus/settings/electroniccard/OPTokenInfo;->tokenType:Ljava/lang/String;

    .line 40
    return-void
.end method
