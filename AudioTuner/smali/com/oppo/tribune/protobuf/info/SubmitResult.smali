.class public Lcom/oppo/tribune/protobuf/info/SubmitResult;
.super Ljava/lang/Object;
.source "SubmitResult.java"


# instance fields
.field private config_id:I

.field private ret:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Lcom/oppo/tribune/protobuf/info/SubmitResult;
    .locals 5
    .param p0, "buf"    # [B

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 53
    :goto_0
    return-object v2

    .line 45
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 46
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/oppo/tribune/protobuf/info/SubmitResult;

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/protobuf/info/SubmitResult;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 47
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    move-object v2, v3

    .line 53
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getConfigId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SubmitResult;->config_id:I

    return v0
.end method

.method public getRet()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SubmitResult;->ret:I

    return v0
.end method
