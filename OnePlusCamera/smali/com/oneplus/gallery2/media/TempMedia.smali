.class public abstract Lcom/oneplus/gallery2/media/TempMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "TempMedia.java"


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private m_FileSize:J

.field private final m_Id:Ljava/lang/String;

.field private final m_MimeType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    .line 39
    if-eqz p2, :cond_0

    .line 41
    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    .line 42
    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Temp["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_Id:Ljava/lang/String;

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No content URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo p3, ""

    goto :goto_0
.end method

.method public static create(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v0}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {p2}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    .line 79
    :cond_1
    if-nez p0, :cond_6

    :cond_2
    const-class v1, Lcom/oneplus/gallery2/media/TempMedia;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "create() - Unknown content URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0

    .line 69
    :cond_3
    invoke-static {p2}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "image/"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "video/"

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/TempVideoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_5
    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/TempPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_6
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 92
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 94
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/TempVideoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :cond_8
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_7

    const-string/jumbo v2, "image:"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "video:"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    new-instance v0, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/TempVideoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_9
    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/TempPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 93
    :cond_a
    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/TempPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    return-wide v2

    .line 155
    :cond_0
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    return-wide v0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 163
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 184
    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 208
    return-object v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 216
    return-wide v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 224
    return-wide v0
.end method

.method public openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public prepareSharing(Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 245
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/MediaSharingManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSharingManager;

    .line 246
    if-eqz v0, :cond_2

    .line 250
    invoke-interface {v0, p0, p1, v3}, Lcom/oneplus/gallery2/media/MediaSharingManager;->prepareSharing(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "media"

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMedia;->prepareSharing(Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 247
    :cond_2
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Temp, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
