.class public interface abstract Lcom/oppo/tribune/protobuf/ProductCenterPhoneList$pb_phonelistOrBuilder;
.super Ljava/lang/Object;
.source "ProductCenterPhoneList.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ProductCenterPhoneList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_phonelistOrBuilder"
.end annotation


# virtual methods
.method public abstract getPage()I
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getPhonelist(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;
.end method

.method public abstract getPhonelistCount()I
.end method

.method public abstract getPhonelistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhonelistOrBuilder(I)Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;
.end method

.method public abstract getPhonelistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/ProductCenterPhoneDetail$pb_phonedetailOrBuilder;",
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
