.class public Lcom/oneplus/api/util/json/JsonTester;
.super Ljava/lang/Object;
.source "JsonTester.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 21
    const-string v2, "{\"data\":{\"currentPage\":1,\"mobile\":\"13728952690\",\"pageSize\":15,\"userId\":384623864,\"userName\":\"jaingaohk\"},\"errCode\":\"0001\",\"errMsg\":\"\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a\",\"ret\":\"1\"}"

    .line 22
    .local v2, "responseBody":Ljava/lang/String;
    new-instance v1, Lcom/oneplus/api/util/json/JSONValidatingReader;

    new-instance v5, Lcom/oneplus/api/util/json/ExceptionErrorListener;

    invoke-direct {v5}, Lcom/oneplus/api/util/json/ExceptionErrorListener;-><init>()V

    invoke-direct {v1, v5}, Lcom/oneplus/api/util/json/JSONValidatingReader;-><init>(Lcom/oneplus/api/util/json/JSONErrorListener;)V

    .line 23
    .local v1, "reader":Lcom/oneplus/api/util/json/JSONReader;
    invoke-virtual {v1, v2}, Lcom/oneplus/api/util/json/JSONReader;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "rootObj":Ljava/lang/Object;
    move-object v3, v4

    .line 24
    check-cast v3, Ljava/util/Map;

    .line 25
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v5, "data"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "data":Ljava/lang/Object;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    return-void
.end method
