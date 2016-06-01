.class public interface abstract Lcom/oppo/tribune/protobuf/SearchDownloadProto$DownloadRequestOrBuilder;
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
    name = "DownloadRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getKeyword()Ljava/lang/String;
.end method

.method public abstract getPositions(I)I
.end method

.method public abstract getPositionsCount()I
.end method

.method public abstract getPositionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProductIds(I)J
.end method

.method public abstract getProductIdsCount()I
.end method

.method public abstract getProductIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()I
.end method

.method public abstract getSourceCode()Ljava/lang/String;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserToken()Ljava/lang/String;
.end method

.method public abstract hasImei()Z
.end method

.method public abstract hasKeyword()Z
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasSourceCode()Z
.end method

.method public abstract hasUserAgent()Z
.end method

.method public abstract hasUserId()Z
.end method

.method public abstract hasUserToken()Z
.end method
