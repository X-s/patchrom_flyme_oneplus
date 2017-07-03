.class public final Lcom/oneplus/gallery2/media/AllMediaSetList;
.super Lcom/oneplus/gallery2/media/CompoundMediaSetList;
.source "AllMediaSetList.java"


# static fields
.field public static final FLAG_INCLUDE_ALL_MEDIA:I = 0x1

.field public static final FLAG_NO_EMPTY_ALBUMS:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static volatile m_InstanceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oneplus/gallery2/media/AllMediaSetList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;[Lcom/oneplus/gallery2/media/MediaSetList;)V
    .locals 1
    .param p1, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;
    .param p2, "mediaSetLists"    # [Lcom/oneplus/gallery2/media/MediaSetList;

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z[Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 33
    return-void
.end method

.method public static open(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;
    .locals 9
    .param p0, "comparator"    # Lcom/oneplus/gallery2/media/MediaSetComparator;
    .param p1, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "flags"    # I

    .prologue
    .line 66
    new-instance v3, Lcom/oneplus/gallery2/media/AllMediaSetList;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-direct {v3, p0, v6}, Lcom/oneplus/gallery2/media/AllMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;[Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 69
    .local v3, "list":Lcom/oneplus/gallery2/media/AllMediaSetList;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    .line 70
    .local v1, "app":Lcom/oneplus/base/BaseApplication;
    const-class v6, Lcom/oneplus/gallery2/media/SystemMediaSetManager;

    invoke-virtual {v1, v6}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/SystemMediaSetManager;

    .line 71
    .local v5, "sysMediaSetManager":Lcom/oneplus/gallery2/media/SystemMediaSetManager;
    if-eqz v5, :cond_2

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "managerFlags":I
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    .line 75
    or-int/lit8 v4, v4, 0x1

    .line 76
    :cond_0
    invoke-virtual {v5, p1, v4}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->openSystemMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    .line 82
    .end local v4    # "managerFlags":I
    :goto_0
    const-class v6, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    invoke-virtual {v1, v6}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    .line 83
    .local v2, "dirManager":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {v2, p1}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->openDirectoryMediaSetList(Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    .line 89
    :goto_1
    const-class v6, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v1, v6}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 90
    .local v0, "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    if-eqz v0, :cond_4

    .line 92
    const/4 v4, 0x0

    .line 93
    .restart local v4    # "managerFlags":I
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    .line 94
    or-int/lit8 v4, v4, 0x1

    .line 95
    :cond_1
    invoke-virtual {v0, p1, v4}, Lcom/oneplus/gallery2/media/AlbumManager;->openAlbumMediaSetList(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/oneplus/gallery2/media/AllMediaSetList;->addMediaSetList(Lcom/oneplus/gallery2/media/MediaSetList;)Z

    .line 101
    .end local v4    # "managerFlags":I
    :goto_2
    sget v6, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    .line 102
    sget-object v6, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open() - Instance count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v3

    .line 79
    .end local v0    # "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    .end local v2    # "dirManager":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    :cond_2
    sget-object v6, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    const-string v7, "open() - No SystemMediaSetManager"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .restart local v2    # "dirManager":Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
    :cond_3
    sget-object v6, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    const-string v7, "open() - No MediaStoreDirectoryManager"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .restart local v0    # "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    :cond_4
    sget-object v6, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    const-string v7, "open() - No AlbumManager"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static open(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;
    .locals 1
    .param p0, "targetMediaType"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p1, "flags"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSetComparator;->DEFAULT:Lcom/oneplus/gallery2/media/MediaSetComparator;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/AllMediaSetList;->open(Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/oneplus/gallery2/media/CompoundMediaSetList;->release()V

    .line 117
    sget v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    .line 118
    sget-object v0, Lcom/oneplus/gallery2/media/AllMediaSetList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() - Instance count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oneplus/gallery2/media/AllMediaSetList;->m_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
