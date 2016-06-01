.class public interface abstract Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
.super Ljava/lang/Object;
.source "SubmitInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubmitInfoListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancelSumbit()V
.end method

.method public abstract onFinishSumbit(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onPreSumbit()V
.end method
