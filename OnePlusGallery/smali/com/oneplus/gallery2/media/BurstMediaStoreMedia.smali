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

.field private m_ParentId:J

.field private m_PreviousParentId:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 26
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 16
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    .line 17
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    .line 27
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_Id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x5f

    const/4 v3, 0x0

    .line 62
    if-nez p0, :cond_0

    move-object v2, v3

    .line 105
    :goto_0
    return-object v2

    .line 64
    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 65
    .local v1, "indexOfFileName":I
    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 66
    :goto_1
    add-int/lit8 v4, v1, 0x1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    move-object v2, v3

    .line 67
    goto :goto_0

    :cond_1
    move v1, v2

    .line 65
    goto :goto_1

    .line 70
    :cond_2
    add-int/lit8 v4, v1, 0x13

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_3

    move-object v2, v3

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    add-int/lit8 v4, v1, 0x17

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_4

    move-object v2, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/16 v0, 0x14

    .local v0, "i":I
    :goto_2
    const/16 v4, 0x17

    if-ge v0, v4, :cond_6

    .line 77
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v2, v3

    .line 78
    goto :goto_0

    .line 75
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_8

    :cond_7
    move-object v2, v3

    .line 87
    goto :goto_0

    .line 91
    :cond_8
    add-int/lit8 v4, v1, 0xc

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_9

    move-object v2, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_9
    const/4 v0, 0x4

    :goto_3
    const/16 v4, 0xc

    if-ge v0, v4, :cond_b

    .line 95
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v2, v3

    .line 96
    goto/16 :goto_0

    .line 93
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 98
    :cond_b
    const/16 v0, 0xd

    :goto_4
    const/16 v4, 0x13

    if-ge v0, v4, :cond_d

    .line 100
    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_c

    move-object v2, v3

    .line 101
    goto/16 :goto_0

    .line 98
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 105
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaStore:Burst/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x13

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method static isValidId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    const-string v0, "MediaStore:Burst/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectCoverMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 8

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSubMediaCount()I

    move-result v0

    .line 187
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 188
    const/4 v1, 0x0

    .line 206
    :cond_0
    :goto_0
    return-object v1

    .line 191
    :cond_1
    const-wide/16 v4, 0x0

    .line 192
    .local v4, "maxFileSize":J
    const/4 v1, 0x0

    .line 193
    .local v1, "cover":Lcom/oneplus/gallery2/media/Media;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 195
    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSubMedia(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    .line 196
    .local v3, "subMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_3

    .line 198
    :cond_2
    move-object v1, v3

    .line 199
    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v4

    .line 193
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 202
    .end local v3    # "subMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_4
    if-nez v1, :cond_0

    .line 206
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSubMedia(I)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected deleteGroupedMediaItself(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p2, "flags"    # I

    .prologue
    .line 35
    sget v0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method public getAddedTime()J
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getCover()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 46
    .local v0, "cover":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getAddedTime()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    return-wide v0
.end method

.method public getPreviousParentId()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    return-wide v0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method protected onSubMediaChanged()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->selectCoverMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->setCover(Lcom/oneplus/gallery2/media/Media;)V

    .line 156
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onSubMediaChanged()V

    .line 157
    return-void
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/Media;)I
    .locals 8
    .param p1, "cover"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseGroupedMedia;->onUpdate(Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    .line 168
    .local v0, "flags":I
    instance-of v1, p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/oneplus/gallery2/media/MediaStoreItem;

    .end local p1    # "cover":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaStoreItem;->getParentId()J

    move-result-wide v2

    .line 169
    .local v2, "newParentId":J
    :goto_0
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 171
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    .line 172
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_ParentId:J

    .line 173
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->m_PreviousParentId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 174
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    or-int/2addr v0, v1

    .line 178
    :cond_0
    return v0

    .line 168
    .end local v2    # "newParentId":J
    .restart local p1    # "cover":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method
