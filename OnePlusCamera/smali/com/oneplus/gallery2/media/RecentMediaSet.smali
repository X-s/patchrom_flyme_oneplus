.class public Lcom/oneplus/gallery2/media/RecentMediaSet;
.super Lcom/oneplus/gallery2/media/BaseMediaSet;
.source "RecentMediaSet.java"


# static fields
.field private static final DAY_IN_MILLISEC:J = 0x5265c00L

.field private static final PREF_RECENT_MEDIA_SET_BASE_TIME:Ljava/lang/String; = "RecentMediaSetBaseTime"

.field private static final TAG:Ljava/lang/String; = "RecentMediaSet"


# instance fields
.field private m_BaseTimeInMillis:J

.field private final m_ExcludeTodayTakenMedia:Z

.field private m_MediaStoreDirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 25
    iput-wide v6, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_BaseTimeInMillis:J

    .line 38
    iput-boolean p3, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_ExcludeTodayTakenMedia:Z

    .line 40
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    .line 44
    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    const-string/jumbo v1, "RecentMediaSetBaseTime"

    .line 46
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 47
    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 48
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_BaseTimeInMillis:J

    .line 53
    :goto_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_MediaStoreDirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    const-string/jumbo v0, "RecentMediaSet"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecentMediaSet() - created, m_BaseTimeInMillis:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_BaseTimeInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_BaseTimeInMillis:J

    goto :goto_1
.end method

.method public static resetBaseTime()V
    .locals 7

    .prologue
    .line 104
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "RecentMediaSetBaseTime"

    const-wide/16 v2, 0x0

    .line 105
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "RecentMediaSetBaseTime"

    .line 108
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v0, "RecentMediaSet"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resetBaseTime() - save current time to preference. last:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 61
    if-eqz p1, :cond_0

    .line 67
    sget v1, Lcom/oneplus/gallery2/media/RecentMediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v1, p3

    if-nez v1, :cond_1

    .line 69
    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/oneplus/gallery2/media/Media;->delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "RecentMediaSet"

    const-string/jumbo v1, "deleteMedia() - No media to delete"

    .line 63
    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v2

    .line 68
    :cond_1
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_MOVE_TO_RECYCE_BIN:I

    or-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "Recent"

    .line 75
    return-object v0
.end method

.method protected getNameResourceId()I
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "media_set_name_recent"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "com.oneplus.gallery"

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery2/media/MediaSet$Type;

    return-object v0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldContainsMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_SUB_MEDIA:I

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 122
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v0, :cond_3

    .line 128
    :cond_0
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v0, :cond_4

    .line 143
    :cond_1
    return v2

    .line 119
    :cond_2
    return v2

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_MediaStoreDirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_MediaStoreDirectoryManager:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->isPathInSystemDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    return v2

    :cond_4
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getAddedTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_BaseTimeInMillis:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 132
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/RecentMediaSet;->m_ExcludeTodayTakenMedia:Z

    if-nez v0, :cond_6

    .line 140
    return v1

    :cond_5
    move v0, v2

    .line 130
    goto :goto_0

    .line 134
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    .line 135
    rem-long v6, v4, v6

    sub-long/2addr v4, v6

    .line 136
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_7

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    .line 137
    return v1

    :cond_7
    move v0, v2

    .line 136
    goto :goto_1
.end method

.method protected startDeletion(Lcom/oneplus/base/Handle;I)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/RecentMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 151
    return-void
.end method
