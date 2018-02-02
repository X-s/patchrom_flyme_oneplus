.class public final Lcom/oneplus/gallery2/media/AllMediaSetList;
.super Lcom/oneplus/gallery2/media/CompoundMediaSetList;
.source "AllMediaSetList.java"


# static fields
.field public static final FLAG_INCLUDE_ALL_MEDIA:I = 0x1

.field public static final FLAG_INCLUDE_RECENT:I = 0x4

.field public static final FLAG_NO_EMPTY_ALBUMS:I = 0x2

.field public static final FLAG_NO_WEB_MEDIA:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field private static volatile m_InstanceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery2/media/AllMediaSetList;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private varargs constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;[Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z[Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 42
    return-void
.end method

.method public static open(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 77
    new-instance v4, Lcom/oneplus/gallery2/media/AllMediaSetList;

    new-array v0, v2, [Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/gallery2/media/AllMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;[Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 80
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    const-class v0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;

    .line 81
    invoke-virtual {v5, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/SystemMediaSetManager;

    .line 82
    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "open() - No SystemMediaSetManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 95
    invoke-virtual {v5, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 96
    if-nez v0, :cond_4

    .line 99
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "open() - No MediaStoreDirectoryManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-class v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 102
    invoke-virtual {v5, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 103
    if-nez v0, :cond_5

    .line 111
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "open() - No AlbumManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-class v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    .line 114
    invoke-virtual {v5, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    .line 115
    if-nez v0, :cond_7

    .line 119
    :goto_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_8

    .line 130
    :cond_0
    sget v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    .line 131
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open() - Instance count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v4

    .line 85
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    .line 87
    :goto_4
    and-int/lit8 v6, p2, 0x4

    if-nez v6, :cond_3

    .line 89
    :goto_5
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 86
    goto :goto_4

    .line 88
    :cond_3
    or-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 97
    :cond_4
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->openDirectoryMediaSetList(Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    goto :goto_1

    .line 106
    :cond_5
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_6

    move v1, v2

    .line 108
    :goto_6
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/gallery2/media/AlbumManager;->openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    goto :goto_2

    :cond_6
    move v1, v3

    .line 107
    goto :goto_6

    .line 116
    :cond_7
    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->openMtpMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    goto :goto_3

    :cond_8
    const-class v0, Lcom/oneplus/gallery2/web/WebMediaSetManager;

    .line 121
    invoke-virtual {v5, v0}, Lcom/oneplus/base/BaseApplication;->findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/web/WebMediaSetManager;

    .line 122
    if-eqz v0, :cond_0

    move v1, v2

    .line 124
    :goto_7
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 125
    aget-object v3, v0, v1

    invoke-interface {v3, v7, p1, v2}, Lcom/oneplus/gallery2/web/WebMediaSetManager;->openMediaSetList(Lcom/oneplus/gallery2/web/Account;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static open(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/AllMediaSetList;->open(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->release()V

    .line 146
    sget v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    .line 147
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "release() - Instance count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
