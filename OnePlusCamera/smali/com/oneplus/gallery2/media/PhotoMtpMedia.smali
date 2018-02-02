.class Lcom/oneplus/gallery2/media/PhotoMtpMedia;
.super Lcom/oneplus/gallery2/media/MtpMedia;
.source "PhotoMtpMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;
    }
.end annotation


# instance fields
.field private m_Size:Landroid/util/Size;

.field private final m_SizeCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery2/media/MtpMedia;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MediaType;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->obtainSize(Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/PhotoMtpMedia;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V

    return-void
.end method

.method private obtainSize(Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-boolean v0, p1, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;->isCancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->openInputStream(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 123
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;->size:Landroid/util/Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    if-nez v2, :cond_1

    .line 131
    :goto_0
    iget-boolean v0, p1, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;->isCancelled:Z

    if-eqz v0, :cond_5

    .line 142
    :goto_1
    return-void

    .line 118
    :cond_0
    return-void

    .line 124
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "obtainSize() - Fail to obtain size for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->getObjectId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :catchall_1
    move-exception v0

    if-nez v2, :cond_2

    :goto_4
    :try_start_4
    throw v0

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 133
    :cond_5
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMtpMedia$2;-><init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    if-ne v0, p1, :cond_3

    .line 152
    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    .line 155
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    .line 156
    iget-object v2, p1, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;->size:Landroid/util/Size;

    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    .line 157
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    if-eqz v2, :cond_4

    .line 159
    :cond_0
    if-nez v0, :cond_5

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    :cond_2
    return-void

    .line 151
    :cond_3
    return-void

    .line 157
    :cond_4
    if-eqz v0, :cond_0

    .line 158
    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    goto :goto_0

    .line 159
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v2, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->FLAG_SIZE_CHANGED:I

    invoke-virtual {v0, p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/oneplus/base/CallbackHandle;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/CallbackHandle;

    .line 166
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 167
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v2, :cond_7

    move v2, v1

    .line 168
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_8

    :goto_2
    move v3, v1

    .line 169
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_2

    .line 170
    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    invoke-interface {v1, p0, v2, v3}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 169
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    .line 167
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_1

    .line 168
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    return-object v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->verifyAccess()V

    .line 63
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;

    const-string/jumbo v1, "GetMtpPhotoSize"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMtpMedia$1;-><init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 83
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    if-eqz v1, :cond_2

    .line 93
    :goto_0
    return-object v0

    .line 64
    :cond_0
    return-object v2

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 70
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetMtpPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 88
    :cond_2
    new-instance v1, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMtpMedia;Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    .line 89
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMtpMedia$SizeObtainingTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MtpMedia;->onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I

    move-result v0

    .line 183
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v1

    .line 184
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v2

    .line 185
    if-gtz v1, :cond_1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v1, :cond_4

    .line 200
    :goto_0
    return v0

    .line 185
    :cond_1
    if-lez v2, :cond_0

    .line 187
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_3

    .line 189
    :cond_2
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    .line 190
    sget v1, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v0, v1

    goto :goto_0

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_0

    .line 195
    :cond_4
    iput-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    .line 196
    sget v1, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
