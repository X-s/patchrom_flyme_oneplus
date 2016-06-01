.class public interface abstract Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumlistOrBuilder;
.super Ljava/lang/Object;
.source "SquareForumListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SquareForumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_forumlistOrBuilder"
.end annotation


# virtual methods
.method public abstract getForumlist(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;
.end method

.method public abstract getForumlistCount()I
.end method

.method public abstract getForumlistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;
.end method

.method public abstract getForumlistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SquareForumListProto$pb_forumOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPage()I
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasPage()Z
.end method

.method public abstract hasPerpage()Z
.end method

.method public abstract hasTotal()Z
.end method
