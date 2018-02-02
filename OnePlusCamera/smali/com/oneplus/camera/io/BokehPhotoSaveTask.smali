.class public Lcom/oneplus/camera/io/BokehPhotoSaveTask;
.super Lcom/oneplus/camera/io/PhotoSaveTask;
.source "BokehPhotoSaveTask.java"


# static fields
.field private static final FILE_PATH_SUFFIX:Ljava/lang/String; = "Bokeh"


# instance fields
.field private final m_IsOriginalPicture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "e"    # Lcom/oneplus/camera/CameraCaptureEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/io/PhotoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    .line 31
    invoke-virtual {p3}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getFlags()I

    move-result v1

    sget v2, Lcom/oneplus/camera/Camera;->FLAG_ORIGINAL_PICTURE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/camera/io/BokehPhotoSaveTask;->m_IsOriginalPicture:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected getFilePathSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oneplus/camera/io/BokehPhotoSaveTask;->m_IsOriginalPicture:Z

    if-nez v0, :cond_0

    .line 40
    const-string/jumbo v0, "Bokeh"

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onImageEncoded(Lcom/oneplus/media/EncodedImage;)V
    .locals 2
    .param p1, "image"    # Lcom/oneplus/media/EncodedImage;

    .prologue
    .line 49
    instance-of v0, p1, Lcom/oneplus/media/XMPContainer;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/oneplus/media/XMPContainer;

    .end local p1    # "image":Lcom/oneplus/media/EncodedImage;
    sget-object v1, Lcom/oneplus/media/OnePlusXMP;->KEY_IS_BOKEH_ACTIVE:Lcom/oneplus/media/XMPPropertyKey;

    iget-boolean v0, p0, Lcom/oneplus/camera/io/BokehPhotoSaveTask;->m_IsOriginalPicture:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/oneplus/media/XMPContainer;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .local v2, "parentFlags":J
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/io/PhotoSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string/jumbo v1, "oneplus_flags"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 62
    .local v0, "flags":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 65
    .end local v0    # "flags":Ljava/lang/Long;
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/io/BokehPhotoSaveTask;->m_IsOriginalPicture:Z

    if-nez v1, :cond_1

    .line 66
    const-string/jumbo v1, "oneplus_flags"

    const-wide/16 v4, 0x40

    or-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
