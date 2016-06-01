.class public interface abstract Lcom/oppo/tribune/protobuf/UserListProto$pb_userlistOrBuilder;
.super Ljava/lang/Object;
.source "UserListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/UserListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pb_userlistOrBuilder"
.end annotation


# virtual methods
.method public abstract getPage()I
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract getUserlist(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;
.end method

.method public abstract getUserlistCount()I
.end method

.method public abstract getUserlistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_user;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserlistOrBuilder(I)Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;
.end method

.method public abstract getUserlistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/UserInfoProto$pb_userOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPage()Z
.end method

.method public abstract hasPerpage()Z
.end method

.method public abstract hasTotal()Z
.end method
