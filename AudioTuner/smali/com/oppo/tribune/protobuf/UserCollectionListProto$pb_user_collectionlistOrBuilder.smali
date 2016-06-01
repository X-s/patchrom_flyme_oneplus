.class public interface abstract Lcom/oppo/tribune/protobuf/UserCollectionListProto$pb_user_collectionlistOrBuilder;
.super Ljava/lang/Object;
.source "UserCollectionListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserCollectionListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_user_collectionlistOrBuilder"
.end annotation


# virtual methods
.method public abstract getFid()J
.end method

.method public abstract getForumThreadcount()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPage()I
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getPicurl()Ljava/lang/String;
.end method

.method public abstract getTotal()I
.end method

.method public abstract getTpp()J
.end method

.method public abstract getUserCollectionList(I)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;
.end method

.method public abstract getUserCollectionListCount()I
.end method

.method public abstract getUserCollectionListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserCollectionListOrBuilder(I)Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collectionOrBuilder;
.end method

.method public abstract getUserCollectionListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserCollectionProto$pb_user_collectionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFid()Z
.end method

.method public abstract hasForumThreadcount()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasPage()Z
.end method

.method public abstract hasPerpage()Z
.end method

.method public abstract hasPicurl()Z
.end method

.method public abstract hasTotal()Z
.end method

.method public abstract hasTpp()Z
.end method
