.class public interface abstract Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topiclistOrBuilder;
.super Ljava/lang/Object;
.source "PackshowTopicsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PackshowTopicsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_topiclistOrBuilder"
.end annotation


# virtual methods
.method public abstract getPage()I
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getTopiclist(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;
.end method

.method public abstract getTopiclistCount()I
.end method

.method public abstract getTopiclistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topic;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopiclistOrBuilder(I)Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;
.end method

.method public abstract getTopiclistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/PackshowTopicsProto$pb_topicOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasPage()Z
.end method

.method public abstract hasPerpage()Z
.end method

.method public abstract hasTotal()Z
.end method
