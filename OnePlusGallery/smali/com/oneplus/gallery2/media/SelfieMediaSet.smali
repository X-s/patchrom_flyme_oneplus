.class public Lcom/oneplus/gallery2/media/SelfieMediaSet;
.super Lcom/oneplus/gallery2/media/CameraRollMediaSet;
.source "SelfieMediaSet.java"


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "media_set_name_selfie"

    const-string v2, "string"

    const-string v3, "com.oneplus.gallery"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;->shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isCapturedByFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 12
    .param p1, "deletionHandle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    const/4 v11, 0x0

    .line 52
    sget-object v8, Lcom/oneplus/gallery2/media/SelfieMediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 53
    .local v5, "mediaCount":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2

    .line 55
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8, p2}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 81
    :cond_1
    return-void

    .line 58
    :cond_2
    new-instance v1, Lcom/oneplus/base/SimpleRef;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 59
    .local v1, "completedMediaCountRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v6, "mediaToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->getMedia()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    .line 61
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 63
    .local v7, "numOfMediaToDelete":I
    iget-object v8, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startDeletion() - Delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " media"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;

    invoke-direct {v0, p0, v1, v7, p1}, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;-><init>(Lcom/oneplus/gallery2/media/SelfieMediaSet;Lcom/oneplus/base/Ref;ILcom/oneplus/base/Handle;)V

    .line 76
    .local v0, "callback":Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 78
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    sget v9, Lcom/oneplus/gallery2/media/Media;->FLAG_INCLUDE_RAW_PHOTO:I

    invoke-interface {v8, v0, v9}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 79
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, v8, v11, v11}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V

    .line 76
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method
