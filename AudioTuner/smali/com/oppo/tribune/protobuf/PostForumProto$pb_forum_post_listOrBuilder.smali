.class public interface abstract Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post_listOrBuilder;
.super Ljava/lang/Object;
.source "PostForumProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PostForumProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_forum_post_listOrBuilder"
.end annotation


# virtual methods
.method public abstract getForumPostList(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;
.end method

.method public abstract getForumPostListCount()I
.end method

.method public abstract getForumPostListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_post;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForumPostListOrBuilder(I)Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;
.end method

.method public abstract getForumPostListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PostForumProto$pb_forum_postOrBuilder;",
            ">;"
        }
    .end annotation
.end method
