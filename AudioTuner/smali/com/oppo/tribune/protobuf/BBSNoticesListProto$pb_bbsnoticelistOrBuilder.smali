.class public interface abstract Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticelistOrBuilder;
.super Ljava/lang/Object;
.source "BBSNoticesListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/BBSNoticesListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_bbsnoticelistOrBuilder"
.end annotation


# virtual methods
.method public abstract getNewnotices()I
.end method

.method public abstract getNoticelist(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;
.end method

.method public abstract getNoticelistCount()I
.end method

.method public abstract getNoticelistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnotice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoticelistOrBuilder(I)Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;
.end method

.method public abstract getNoticelistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/BBSNoticesListProto$pb_bbsnoticeOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasNewnotices()Z
.end method

.method public abstract hasTotal()Z
.end method
