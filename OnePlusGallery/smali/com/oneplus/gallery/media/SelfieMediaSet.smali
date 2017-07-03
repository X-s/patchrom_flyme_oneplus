.class public Lcom/oneplus/gallery/media/SelfieMediaSet;
.super Lcom/oneplus/gallery/media/BaseMediaSet;
.source "SelfieMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/SelfieMediaSet$8;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaType;)V
    .locals 3
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 43
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V

    .line 44
    sget-object v0, Lcom/oneplus/gallery/media/SelfieMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/SelfieMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->checkMediaCount()V

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->updateCoverHashCode()V

    .line 47
    return-void
.end method

.method private checkMediaCount()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/media/SelfieMediaSet$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/media/SelfieMediaSet$1;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method


# virtual methods
.method protected delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
    .locals 20
    .param p1, "handle"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    .prologue
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaIdTable()[J

    move-result-object v18

    .line 92
    .local v18, "mediaIds":[J
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v6, v0

    if-nez v6, :cond_1

    .line 143
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionStarted()V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 98
    .local v9, "handler":Landroid/os/Handler;
    const/4 v6, 0x1

    new-array v0, v6, [Z

    move-object/from16 v19, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v19, v6

    .line 99
    .local v19, "result":[Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v5

    .line 100
    .local v5, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    new-instance v8, Lcom/oneplus/gallery/media/SelfieMediaSet$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/oneplus/gallery/media/SelfieMediaSet$2;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;[Z)V

    .line 113
    .local v8, "callback":Lcom/oneplus/gallery/media/MediaDeletionCallback;
    new-instance v14, Lcom/oneplus/gallery/media/SelfieMediaSet$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/oneplus/gallery/media/SelfieMediaSet$3;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;[Z)V

    .line 125
    .local v14, "lastCallback":Lcom/oneplus/gallery/media/MediaDeletionCallback;
    move-object/from16 v0, v18

    array-length v6, v0

    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 127
    aget-wide v6, v18, v4

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(J)Lcom/oneplus/gallery/media/Media;

    move-result-object v17

    .line 128
    .local v17, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v17, :cond_3

    .line 130
    if-lez v4, :cond_2

    .line 131
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v5, v0, v8, v9, v6}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 125
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v5, v0, v14, v9, v6}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 137
    :cond_3
    if-lez v4, :cond_4

    .line 138
    aget-wide v6, v18, v4

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(JLcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 140
    :cond_4
    aget-wide v12, v18, v4

    const/16 v16, 0x0

    move-object v11, v5

    move-object v15, v9

    invoke-interface/range {v11 .. v16}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(JLcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    goto :goto_1
.end method

.method protected deleteMedia(Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    iget-object v1, p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->media:Lcom/oneplus/gallery/media/Media;

    iget-object v2, p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaDeletionCallback;

    iget-object v3, p1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaDeletionHandle;->callbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/media/OPMediaManager;->deleteMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaDeletionCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 151
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "Selfie"

    return-object v0
.end method

.method final onCameraRollRemoved()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->checkMediaCount()V

    .line 168
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/BaseMediaSet;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 176
    sget-object v0, Lcom/oneplus/gallery/media/SelfieMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method protected onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 185
    new-instance v5, Lcom/oneplus/gallery/media/SelfieMediaSet$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/oneplus/gallery/media/SelfieMediaSet$4;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;J)V

    .line 212
    .local v5, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz p4, :cond_1

    .line 214
    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->isCapturedByFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addToMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->updateCoverHashCodeDelayed()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v6

    new-instance v0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/SelfieMediaSet$5;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)V

    const-wide/16 v2, 0x0

    invoke-interface {v6, v0, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->postToContentThread(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    .line 244
    return-void
.end method

.method protected onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->verifyAccess()V

    .line 252
    if-nez p4, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    .line 255
    .local v0, "added":Z
    const/4 v3, 0x0

    .line 256
    .local v3, "removed":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaIdTable()[J

    move-result-object v2

    .line 257
    .local v2, "mediaIdTables":[J
    const/4 v1, 0x0

    .line 258
    .local v1, "exist":Z
    invoke-static {v2, p1, p2}, Lcom/oneplus/util/ArrayUtils;->contains([JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    const/4 v1, 0x1

    .line 261
    :cond_2
    invoke-interface {p4}, Lcom/oneplus/gallery/media/Media;->isCapturedByFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 262
    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 266
    :goto_1
    if-eqz v0, :cond_5

    .line 267
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 262
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 264
    :cond_4
    move v3, v1

    goto :goto_1

    .line 268
    :cond_5
    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method

.method protected onUpdateCoverHashCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v0}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 278
    .local v0, "coverHashCodeRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/media/SelfieMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v3, Lcom/oneplus/gallery/media/SelfieMediaSet$6;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/gallery/media/SelfieMediaSet$6;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;Lcom/oneplus/base/Ref;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 320
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method protected openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
    .locals 3
    .param p1, "comparator"    # Lcom/oneplus/gallery/media/MediaComparator;
    .param p2, "maxMediaCount"    # I
    .param p3, "flags"    # I
    .param p4, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/media/SelfieMediaSet;->CONTENT_URI_FILE:Landroid/net/Uri;

    new-instance v2, Lcom/oneplus/gallery/media/SelfieMediaSet$7;

    invoke-direct {v2, p0, p2, p1, p4}, Lcom/oneplus/gallery/media/SelfieMediaSet$7;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet;ILcom/oneplus/gallery/media/MediaComparator;Lcom/oneplus/gallery/media/MediaList;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->accessContentProvider(Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;)Lcom/oneplus/base/Handle;

    .line 418
    const/4 v0, 0x1

    return v0
.end method
