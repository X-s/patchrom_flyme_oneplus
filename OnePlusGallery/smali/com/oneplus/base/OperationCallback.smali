.class public interface abstract Lcom/oneplus/base/OperationCallback;
.super Ljava/lang/Object;
.source "OperationCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCanceled:",
        "Ljava/lang/Object;",
        "TCompleted:",
        "Ljava/lang/Object;",
        "TStarted:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCanceled(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTCanceled;)V"
        }
    .end annotation
.end method

.method public abstract onCompleted(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTCompleted;)V"
        }
    .end annotation
.end method

.method public abstract onStarted(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTStarted;)V"
        }
    .end annotation
.end method
