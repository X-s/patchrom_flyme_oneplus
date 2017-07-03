.class public Lcom/oneplus/gallery/media/InvalidVideoMedia;
.super Lcom/oneplus/gallery/media/TempMedia;
.source "InvalidVideoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/VideoMedia;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "type"    # Lcom/oneplus/gallery/media/MediaType;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 17
    sget-object v1, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/media/TempMedia;-><init>(Lcom/oneplus/gallery/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "x0"    # Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;
    .param p2, "x1"    # Landroid/os/Handler;

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/TempMedia;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFileSize()J
    .locals 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastModifiedTime()J
    .locals 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getLastModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTakenTime()J
    .locals 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getTakenTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->isCapturedByFrontCamera()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDependencyThread()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->isDependencyThread()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDocumentUri()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->isDocumentUri()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFavorite()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isSlowMotion()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeLapse()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lcom/oneplus/gallery/media/TempMedia;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
