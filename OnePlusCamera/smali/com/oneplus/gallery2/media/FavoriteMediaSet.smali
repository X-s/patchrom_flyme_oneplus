.class public final Lcom/oneplus/gallery2/media/FavoriteMediaSet;
.super Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;
.source "FavoriteMediaSet.java"


# static fields
.field private static final FLAG_HIDDEN:I = 0x1


# instance fields
.field private m_IsVisible:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;-><init>(Ljava/util/Collection;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->m_IsVisible:Z

    .line 35
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 39
    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "FavoriteMediaSet() - media set is hidden"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method private setIsVisibleProp(Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-boolean v2, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->m_IsVisible:Z

    .line 138
    if-eq v2, p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->verifyAccess()V

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->isVisibilityChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->m_IsVisible:Z

    .line 148
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 149
    iget-object v0, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 151
    if-nez p1, :cond_2

    const-wide/16 v0, 0x1

    .line 154
    or-long/2addr v0, v4

    .line 155
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 156
    iget-object v6, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    invoke-interface {v3, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    iget-object v3, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setIsVisibleProp() - pre flag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",cur flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 139
    :cond_0
    return v1

    .line 143
    :cond_1
    return v1

    :cond_2
    const-wide/16 v0, -0x2

    .line 152
    and-long/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->m_IsVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Favorite"

    .line 62
    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "media_set_name_favorite"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.oneplus.gallery"

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVisibilityChangeSupported()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->onMediaMovedToRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 98
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-interface {p1, v1}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0
.end method

.method protected onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 108
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isFavoriteSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->onMediaRestoringFromRecycleBin(Lcom/oneplus/gallery2/media/Media;I)V

    .line 113
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0
.end method

.method protected removeMediaFromSet(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    move-result v0

    return v0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 128
    sget-object v0, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/MultiSourcesVirtualMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 129
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->setIsVisibleProp(Z)Z

    move-result v0

    return v0
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->isFavorite()Z

    move-result v0

    return v0

    .line 170
    :cond_0
    return v1
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->getMedia()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 180
    invoke-interface {v0, v2}, Lcom/oneplus/gallery2/media/Media;->setFavorite(Z)Z

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/FavoriteMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 182
    return-void
.end method
