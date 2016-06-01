.class public interface abstract Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetOrBuilder;
.super Ljava/lang/Object;
.source "ServiceNetProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ServiceNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceNetOrBuilder"
.end annotation


# virtual methods
.method public abstract getArea(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;
.end method

.method public abstract getAreaCount()I
.end method

.method public abstract getAreaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetArea;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAreaOrBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;
.end method

.method public abstract getAreaOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;",
            ">;"
        }
    .end annotation
.end method
