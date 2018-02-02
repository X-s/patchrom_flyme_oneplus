.class final Lcom/oneplus/gallery2/media/VideoMtpMedia;
.super Lcom/oneplus/gallery2/media/MtpMedia;
.source "VideoMtpMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia;


# instance fields
.field private m_Size:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery2/media/MtpMedia;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MediaType;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p1, :cond_0

    .line 48
    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetMtpPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_1

    move v0, v1

    .line 45
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v2, :cond_2

    .line 46
    :goto_2
    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_2
.end method

.method public isSlowMotion()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeLapse()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I
    .locals 4

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MtpMedia;->onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I

    move-result v0

    .line 76
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v1

    .line 77
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v2

    .line 78
    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_1

    .line 80
    :cond_0
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    .line 81
    sget v1, Lcom/oneplus/gallery2/media/VideoMtpMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v0, v1

    .line 85
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0
.end method

.method public peekDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    return-object v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMtpMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
