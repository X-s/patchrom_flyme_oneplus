.class public interface abstract Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetAreaOrBuilder;
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
    name = "ServiceNetAreaOrBuilder"
.end annotation


# virtual methods
.method public abstract getAreaName()Ljava/lang/String;
.end method

.method public abstract getStreet(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;
.end method

.method public abstract getStreetCount()I
.end method

.method public abstract getStreetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreetOrBuilder(I)Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;
.end method

.method public abstract getStreetOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ServiceNetProto$ServiceNetStreetOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAreaName()Z
.end method
