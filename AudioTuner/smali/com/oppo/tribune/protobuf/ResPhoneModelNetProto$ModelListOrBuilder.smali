.class public interface abstract Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ModelListOrBuilder;
.super Ljava/lang/Object;
.source "ResPhoneModelNetProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModelListOrBuilder"
.end annotation


# virtual methods
.method public abstract getModellist(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;
.end method

.method public abstract getModellistCount()I
.end method

.method public abstract getModellistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModellistOrBuilder(I)Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;
.end method

.method public abstract getModellistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResPhoneModelNetProto$ResourceModelOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasTotal()Z
.end method
