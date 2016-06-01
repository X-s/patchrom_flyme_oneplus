.class public interface abstract Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceAlbumListOrBuilder;
.super Ljava/lang/Object;
.source "MusicAlbumListProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/MusicAlbumListProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceAlbumListOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlbumlist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;
.end method

.method public abstract getAlbumlistCount()I
.end method

.method public abstract getAlbumlistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlbumlistOrBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;
.end method

.method public abstract getAlbumlistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurpage()I
.end method

.method public abstract getId()I
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getPerpage()I
.end method

.method public abstract getTotal()I
.end method

.method public abstract hasCurpage()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLabel()Z
.end method

.method public abstract hasPerpage()Z
.end method

.method public abstract hasTotal()Z
.end method
