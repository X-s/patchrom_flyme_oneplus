.class public interface abstract Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkListOrBuilder;
.super Ljava/lang/Object;
.source "ResAppNetProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResAppNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceApkListOrBuilder"
.end annotation


# virtual methods
.method public abstract getApks(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;
.end method

.method public abstract getApksCount()I
.end method

.method public abstract getApksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApk;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApksOrBuilder(I)Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;
.end method

.method public abstract getApksOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ResAppNetProto$ResourceApkOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurpage()I
.end method

.method public abstract getId()I
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasCurpage()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLabel()Z
.end method

.method public abstract hasPerpage()Z
.end method

.method public abstract hasTotal()Z
.end method
