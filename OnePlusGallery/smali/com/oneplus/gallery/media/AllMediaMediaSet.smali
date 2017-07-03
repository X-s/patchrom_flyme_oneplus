.class public Lcom/oneplus/gallery/media/AllMediaMediaSet;
.super Lcom/oneplus/gallery/media/MediaStoreMediaSet;
.source "AllMediaMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/AllMediaMediaSet$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaType;)V
    .locals 6
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 24
    sget-object v4, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    invoke-direct {p0, v4, p1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/MediaType;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "hiddenPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "condBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->getHiddenDirectoryPaths(Ljava/util/List;)V

    .line 30
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 32
    if-lez v3, :cond_0

    .line 33
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    const-string v4, "_data NOT LIKE ?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->updateName()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->setQueryCondition(Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private updateName()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    .line 74
    .local v0, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    if-nez v0, :cond_0

    .line 75
    const v1, 0x7f090075

    .line 91
    .local v1, "resId":I
    :goto_0
    sget-object v2, Lcom/oneplus/gallery/media/AllMediaMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 92
    return-void

    .line 78
    .end local v1    # "resId":I
    :cond_0
    sget-object v2, Lcom/oneplus/gallery/media/AllMediaMediaSet$1;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 87
    const v1, 0x7f090075

    .restart local v1    # "resId":I
    goto :goto_0

    .line 81
    .end local v1    # "resId":I
    :pswitch_0
    const v1, 0x7f090076

    .line 82
    .restart local v1    # "resId":I
    goto :goto_0

    .line 84
    .end local v1    # "resId":I
    :pswitch_1
    const v1, 0x7f090077

    .line 85
    .restart local v1    # "resId":I
    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "ALL"

    return-object v0
.end method

.method protected isOwnedByMediaSet(Lcom/oneplus/gallery/media/Media;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/OPMediaManager;->isHiddenPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 56
    :goto_1
    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 0
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery/media/AllMediaMediaSet;->updateName()V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 66
    return-void
.end method
