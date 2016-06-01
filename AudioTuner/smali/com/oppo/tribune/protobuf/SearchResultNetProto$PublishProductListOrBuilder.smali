.class public interface abstract Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductListOrBuilder;
.super Ljava/lang/Object;
.source "SearchResultNetProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/SearchResultNetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PublishProductListOrBuilder"
.end annotation


# virtual methods
.method public abstract getEnd()I
.end method

.method public abstract getFsUrl()Ljava/lang/String;
.end method

.method public abstract getPublishProduct(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;
.end method

.method public abstract getPublishProductCount()I
.end method

.method public abstract getPublishProductList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublishProductOrBuilder(I)Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;
.end method

.method public abstract getPublishProductOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/SearchResultNetProto$PublishProductItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStart()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasEnd()Z
.end method

.method public abstract hasFsUrl()Z
.end method

.method public abstract hasStart()Z
.end method

.method public abstract hasTotal()Z
.end method
