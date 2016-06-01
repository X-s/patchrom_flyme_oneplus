.class public interface abstract Lcom/oppo/tribune/protobuf/UserConfigListProto$pb_user_config_listOrBuilder;
.super Ljava/lang/Object;
.source "UserConfigListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserConfigListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_user_config_listOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfiglist(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;
.end method

.method public abstract getConfiglistCount()I
.end method

.method public abstract getConfiglistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_config;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfiglistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;
.end method

.method public abstract getConfiglistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserConfigProto$pb_user_configOrBuilder;",
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
