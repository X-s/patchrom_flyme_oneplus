.class public Lcom/oneplus/gallery/media/CameraRollMediaSet;
.super Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;
.source "CameraRollMediaSet.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaType;)V
    .locals 3
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->CAMERA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Lcom/oneplus/gallery/media/MediaType;)V

    .line 32
    sget-object v0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 33
    return-void
.end method


# virtual methods
.method protected delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;I)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "client"    # Landroid/content/ContentProviderClient;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    or-int/lit8 v5, p5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->delete(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaSetDeletionHandle;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;I)V

    .line 51
    return-void
.end method

.method public deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaDeletionCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->verifyAccess()V

    .line 87
    sget-object v1, Lcom/oneplus/gallery/media/CameraRollMediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Media set is released"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 119
    :goto_0
    return-object v1

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/oneplus/gallery/media/MediaStoreMedia;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/oneplus/gallery/media/GroupMedia;

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Invalid media"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 95
    goto :goto_0

    .line 99
    :cond_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    .line 101
    invoke-static {p2, p1, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionStarted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;Landroid/os/Handler;)V

    .line 102
    invoke-virtual {p0, p1, v3}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->recycleMedia(Lcom/oneplus/gallery/media/Media;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 103
    .local v0, "recyclingHandle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {p2, p1, v3, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V

    .line 106
    new-instance v1, Lcom/oneplus/gallery/media/CameraRollMediaSet$1;

    const-string v2, "MoveMediaToRecycleBin"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery/media/CameraRollMediaSet$1;-><init>(Lcom/oneplus/gallery/media/CameraRollMediaSet;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->TAG:Ljava/lang/String;

    const-string v3, "deleteMedia() - Fail to recycle media"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    invoke-static {p2, p1, v1, p3}, Lcom/oneplus/gallery/media/MediaDeletionCallbackUtils;->callOnDeletionCompleted(Lcom/oneplus/gallery/media/MediaDeletionCallback;Lcom/oneplus/gallery/media/Media;ZLandroid/os/Handler;)V

    move-object v1, v2

    .line 115
    goto :goto_0

    .line 119
    .end local v0    # "recyclingHandle":Lcom/oneplus/base/Handle;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "CameraRoll"

    return-object v0
.end method

.method protected onDeleted()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/gallery/media/OPMediaManager;->notifyMediaSetDeleted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 69
    sget-object v0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/CameraRollMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 78
    sget-object v0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/media/CameraRollMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cannot change name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
