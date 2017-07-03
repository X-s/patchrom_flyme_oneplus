.class final Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
.super Lcom/oneplus/base/component/BasicComponent;
.source "DirectoryMediaSetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;
    }
.end annotation


# instance fields
.field private m_DirectoryMediaSetHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IdsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/DirectoryMediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field private final m_MediaRenameCallback:Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;

.field private m_MediaRenameCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_PathsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/DirectoryMediaSet;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/GalleryApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/gallery/GalleryApplication;

    .prologue
    .line 92
    const-string v0, "Directory Media Set Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_DirectoryMediaSetHandles:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_IdsTable:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$1;-><init>(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    .line 57
    new-instance v0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$2;-><init>(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaRenameCallback:Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x3"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "x4"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x3"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "x4"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x3"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "x4"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x3"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "x4"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "x3"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "x4"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->onRenamed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->unregisterDirectoryMediaSet(Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;)V

    return-void
.end method

.method private getDirectoryMediaSets(Lcom/oneplus/gallery/media/Media;)Ljava/util/List;
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/media/Media;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/DirectoryMediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 105
    .local v0, "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "mediaPath":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 108
    invoke-static {v3}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "directoryPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    check-cast v0, Ljava/util/List;

    .line 110
    .restart local v0    # "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    goto :goto_0

    .line 111
    .end local v1    # "directoryPath":Ljava/lang/String;
    :cond_2
    instance-of v4, p1, Lcom/oneplus/gallery/media/GroupMedia;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 113
    check-cast v2, Lcom/oneplus/gallery/media/GroupMedia;

    .line 114
    .local v2, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    iget-object v4, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_IdsTable:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/GroupMedia;->getParentId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    goto :goto_0
.end method

.method private onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 151
    invoke-direct {p0, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getDirectoryMediaSets(Lcom/oneplus/gallery/media/Media;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 157
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 158
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_0
    return-void
.end method

.method private onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 167
    invoke-direct {p0, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getDirectoryMediaSets(Lcom/oneplus/gallery/media/Media;)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 173
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 174
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 173
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 176
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_0
    return-void
.end method

.method private onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 183
    invoke-direct {p0, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getDirectoryMediaSets(Lcom/oneplus/gallery/media/Media;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 189
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 190
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 192
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_0
    return-void
.end method

.method private onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 199
    invoke-direct {p0, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getDirectoryMediaSets(Lcom/oneplus/gallery/media/Media;)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 205
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 206
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_0
    return-void
.end method

.method private onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 215
    invoke-direct {p0, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getDirectoryMediaSets(Lcom/oneplus/gallery/media/Media;)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "directoryMediaSets":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 221
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 222
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 221
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 224
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_0
    return-void
.end method

.method private onRenamed(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "oldPath"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v3, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 231
    .local v1, "mediaSetsFromPath":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v1, :cond_0

    .line 234
    iget-object v3, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    invoke-virtual {v3, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 238
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->onDirectoryRenamed(JLjava/lang/String;Ljava/lang/String;)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method private unregisterDirectoryMediaSet(Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;)V
    .locals 7
    .param p1, "handle"    # Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;

    .prologue
    .line 285
    iget-object v5, p1, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->directoryMediaSet:Lcom/oneplus/gallery/media/DirectoryMediaSet;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v0

    .line 286
    .local v0, "id":J
    iget-object v5, p1, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->directoryMediaSet:Lcom/oneplus/gallery/media/DirectoryMediaSet;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryPath()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_IdsTable:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 290
    .local v2, "mediaSetsFromId":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    iget-object v5, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 291
    .local v3, "mediaSetsFromPath":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-eqz v2, :cond_0

    .line 293
    iget-object v5, p1, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->directoryMediaSet:Lcom/oneplus/gallery/media/DirectoryMediaSet;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 295
    iget-object v5, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_IdsTable:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    if-eqz v3, :cond_1

    .line 299
    iget-object v5, p1, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;->directoryMediaSet:Lcom/oneplus/gallery/media/DirectoryMediaSet;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 301
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 305
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_DirectoryMediaSetHandles:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 126
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaRenameCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaRenameCallbackHandle:Lcom/oneplus/base/Handle;

    .line 129
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 130
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 141
    const-class v0, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 142
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaChangeCallback:Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 143
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iget-object v1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaRenameCallback:Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager;->registerDirectoryRenameCallback(Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_MediaRenameCallbackHandle:Lcom/oneplus/base/Handle;

    .line 144
    return-void
.end method

.method public registerDirectoryMediaSet(Lcom/oneplus/gallery/media/DirectoryMediaSet;I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/DirectoryMediaSet;
    .param p2, "flags"    # I

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryId()J

    move-result-wide v2

    .line 254
    .local v2, "id":J
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/DirectoryMediaSet;->getDirectoryPath()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_IdsTable:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 258
    .local v1, "mediaSetsFromId":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    iget-object v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 259
    .local v4, "mediaSetsFromPath":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "mediaSetsFromId":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v1    # "mediaSetsFromId":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    iget-object v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_IdsTable:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    if-nez v4, :cond_1

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "mediaSetsFromPath":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v4    # "mediaSetsFromPath":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    iget-object v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_PathsTable:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;-><init>(Lcom/oneplus/gallery/media/DirectoryMediaSetManager;Lcom/oneplus/gallery/media/DirectoryMediaSet;)V

    .line 274
    .local v0, "handle":Lcom/oneplus/gallery/media/DirectoryMediaSetManager$DirectoryMediaSetHandle;
    iget-object v6, p0, Lcom/oneplus/gallery/media/DirectoryMediaSetManager;->m_DirectoryMediaSetHandles:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-object v0
.end method
