.class public interface abstract Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post_listOrBuilder;
.super Ljava/lang/Object;
.source "PackTopicPostListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackTopicPostListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_topic_post_listOrBuilder"
.end annotation


# virtual methods
.method public abstract getTopicPostList(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;
.end method

.method public abstract getTopicPostListCount()I
.end method

.method public abstract getTopicPostListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_post;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopicPostListOrBuilder(I)Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;
.end method

.method public abstract getTopicPostListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackTopicPostListProto$pb_topic_postOrBuilder;",
            ">;"
        }
    .end annotation
.end method
