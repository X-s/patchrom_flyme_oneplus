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
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cintent URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    .line 40
    iput-object p3, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    .line 41
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_Id:Ljava/lang/String;

    .line 43
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;
    .locals 5
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p1, :cond_1

    .line 56
    const-string v2, "image/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    new-instance v2, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-object v2

    .line 58
    :cond_0
    const-string v2, "video/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    new-instance v2, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/TempVideoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    if-eqz p0, :cond_5

    .line 63
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "documentId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 68
    const-string v2, "image:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    new-instance v2, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "video:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    new-instance v2, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/TempVideoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "documentId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    new-instance v2, Lcom/oneplus/gallery2/media/TempPhotoMedia;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    new-instance v2, Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery2/media/TempVideoMedia;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v1    # "path":Ljava/lang/String;
    :cond_5
    const-class v2, Lcom/oneplus/gallery2/media/TempMedia;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create() - Unknown content URI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p2, "flags"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 131
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 135
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    .line 144
    :cond_1
    return-wide v2

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Throwable;
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_FileSize:J

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 192
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public openInputStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Temp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMedia;->m_MimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
