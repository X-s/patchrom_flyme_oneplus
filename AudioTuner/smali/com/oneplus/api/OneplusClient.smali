.class public interface abstract Lcom/oneplus/api/OneplusClient;
.super Ljava/lang/Object;
.source "OneplusClient.java"


# virtual methods
.method public abstract execute(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/api/OneplusResponse;",
            ">(",
            "Lcom/oneplus/api/OneplusRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation
.end method
