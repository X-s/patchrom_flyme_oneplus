.class public interface abstract Lcom/oneplus/gallery/media/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;
    }
.end annotation


# virtual methods
.method public abstract addToAlbum(J)Z
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getHeight()I
.end method

.method public abstract getId()Lcom/oneplus/gallery/media/MediaId;
.end method

.method public abstract getLastModifiedTime()J
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getTakenTime()J
.end method

.method public abstract getType()Lcom/oneplus/gallery/media/MediaType;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isCapturedByFrontCamera()Z
.end method

.method public abstract isDocumentUri()Z
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract isFavoriteSupported()Z
.end method

.method public abstract removeFromAlbum(J)Z
.end method

.method public abstract setFavorite(Z)Z
.end method
