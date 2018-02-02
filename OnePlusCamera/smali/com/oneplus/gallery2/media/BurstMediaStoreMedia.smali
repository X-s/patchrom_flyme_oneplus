.class final Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;
.super Lcom/oneplus/gallery2/media/BaseGroupedMedia;
.source "BurstMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaStoreItem;
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# static fields
.field private static final ID_PREFIX:Ljava/lang/String; = "MediaStore:Burst/"


# instance fields
.field private final m_Id:Ljava/lang/String;

.field private m_IsAvailable:Z

.field private m_ParentId:J

.field private m_PreviousParentId:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 27
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_IsAvailable:Z

    .line 17
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    .line 18
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    .line 28
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_Id:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 63
    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 66
    if-gez v0, :cond_1

    move v0, v1

    .line 67
    :goto_0
    add-int/lit8 v2, v0, 0x1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 71
    add-int/lit8 v2, v0, 0x13

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    .line 74
    add-int/lit8 v2, v0, 0x17

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4

    const/16 v2, 0x14

    :goto_1
    const/16 v3, 0x17

    .line 76
    if-ge v2, v3, :cond_6

    .line 78
    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    :cond_0
    return-object v4

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    return-object v4

    .line 72
    :cond_3
    return-object v4

    .line 75
    :cond_4
    return-object v4

    .line 79
    :cond_5
    return-object v4

    .line 83
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x49

    if-eq v2, v3, :cond_8

    .line 88
    :cond_7
    return-object v4

    .line 84
    :cond_8
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_7

    .line 85
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_7

    .line 86
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_7

    .line 92
    add-int/lit8 v2, v0, 0xc

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_9

    const/4 v2, 0x4

    :goto_2
    const/16 v3, 0xc

    .line 94
    if-ge v2, v3, :cond_b

    .line 96
    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 93
    :cond_9
    return-object v4

    .line 97
    :cond_a
    return-object v4

    :cond_b
    const/16 v2, 0xd

    :goto_3
    const/16 v3, 0x13

    .line 99
    if-ge v2, v3, :cond_d

    .line 101
    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_c
    return-object v4

    .line 106
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MediaStore:Burst/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x13

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isValidId(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "MediaStore:Burst/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private selectCoverMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSubMediaCount()I

    move-result v0

    .line 204
    if-lez v0, :cond_1

    const-wide/16 v2, 0x0

    .line 210
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v0, v1

    :goto_0
    if-ltz v4, :cond_4

    .line 212
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSubMedia(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 213
    if-nez v0, :cond_2

    .line 216
    :goto_1
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v2

    move-object v0, v1

    .line 210
    :cond_0
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_0

    .line 205
    :cond_1
    return-object v1

    .line 213
    :cond_2
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-gtz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_0

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 219
    :cond_4
    if-nez v0, :cond_5

    .line 223
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSubMedia(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    return-object v0

    .line 220
    :cond_5
    return-object v0
.end method


# virtual methods
.method protected deleteGroupedMediaItself(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public getAddedTime()J
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 47
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getAddedTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    return-wide v0
.end method

.method public getPreviousParentId()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    return-wide v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_IsAvailable:Z

    return v0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected onSubMediaChanged()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->selectCoverMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->setCover(Lcom/oneplus/gallery2/media/Media;)V

    .line 173
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaChanged()V

    .line 174
    return-void
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/Media;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onUpdate(Lcom/oneplus/gallery2/media/Media;)I

    move-result v2

    .line 185
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 186
    :goto_0
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1

    .line 188
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    .line 189
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    .line 190
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 191
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    or-int/2addr v0, v2

    .line 195
    :goto_2
    return v0

    .line 185
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 186
    goto :goto_2

    :cond_2
    move v0, v3

    .line 190
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method release()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_IsAvailable:Z

    .line 231
    return-void
.end method
