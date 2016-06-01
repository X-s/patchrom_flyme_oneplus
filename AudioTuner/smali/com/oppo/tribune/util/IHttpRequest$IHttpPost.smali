.class public interface abstract Lcom/oppo/tribune/util/IHttpRequest$IHttpPost;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHttpPost"
.end annotation


# virtual methods
.method public abstract getHttpParam()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpResultWithParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
