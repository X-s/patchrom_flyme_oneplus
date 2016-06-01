.class public interface abstract Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicAlbumOrBuilder;
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
    name = "ResourceMusicAlbumOrBuilder"
.end annotation


# virtual methods
.method public abstract getCoverUrl()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract getMusiclist(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;
.end method

.method public abstract getMusiclistCount()I
.end method

.method public abstract getMusiclistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusic;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMusiclistOrBuilder(I)Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;
.end method

.method public abstract getMusiclistOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oppo/tribune/protobuf/MusicAlbumListProto$ResourceMusicOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReleaseTime()Ljava/lang/String;
.end method

.method public abstract getSharer()Ljava/lang/String;
.end method

.method public abstract hasCoverUrl()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasReleaseTime()Z
.end method

.method public abstract hasSharer()Z
.end method
