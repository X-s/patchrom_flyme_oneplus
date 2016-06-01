.class public interface abstract Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadListOrBuilder;
.super Ljava/lang/Object;
.source "SearchDownloadProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchDownloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListOrBuilder"
.end annotation


# virtual methods
.method public abstract getDownload(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;
.end method

.method public abstract getDownloadCount()I
.end method

.method public abstract getDownloadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadOrBuilder(I)Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;
.end method

.method public abstract getDownloadOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method
