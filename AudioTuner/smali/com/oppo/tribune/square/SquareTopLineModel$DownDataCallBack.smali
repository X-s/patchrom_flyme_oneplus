.class public interface abstract Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
.super Ljava/lang/Object;
.source "SquareTopLineModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/SquareTopLineModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownDataCallBack"
.end annotation


# virtual methods
.method public abstract OnDownDataComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/square/RefreshType;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDownDataCompleteByAddList(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/square/RefreshType;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDownPostDataCompleteInThread(Lcom/oppo/tribune/square/RefreshType;)V
.end method

.method public abstract onInitByDBComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation
.end method
