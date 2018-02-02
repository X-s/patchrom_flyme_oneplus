.class final Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
.super Lcom/oneplus/gallery2/media/MediaStoreMedia;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;,
        Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_IMAGE:Landroid/net/Uri;

.field private static final CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

.field private static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final INTERNAL_FLAG_PANORAMA:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_CheckAnimatableHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_InternalFlags:I

.field private volatile m_IsAnimatable:Ljava/lang/Boolean;

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

.field private m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    .line 31
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 32
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_CheckAnimatableHandles:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainSize(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_CheckAnimatableHandles:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainDetails(Lcom/oneplus/base/CallbackHandle;)V

    return-void
.end method

.method static synthetic access$5(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    return-void
.end method

.method private checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0, v4, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    .line 131
    :try_start_1
    invoke-static {v4}, Lcom/oneplus/media/ImageUtils;->isGifHeader(Ljava/io/InputStream;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    .line 132
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    if-nez v4, :cond_5

    .line 161
    :goto_1
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$2;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 171
    return-void

    .line 137
    :cond_1
    :try_start_2
    new-instance v1, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v1}, Lcom/oneplus/util/GifDecoder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 138
    :try_start_3
    invoke-virtual {v1, v4}, Lcom/oneplus/util/GifDecoder;->read(Ljava/io/InputStream;)V

    .line 139
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v5

    if-gt v5, v3, :cond_2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    .line 140
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    :goto_3
    if-eqz v1, :cond_0

    .line 151
    :try_start_4
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    if-nez v4, :cond_6

    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_7

    if-ne v2, v0, :cond_8

    :goto_6
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkAnimatable() - Fail to check "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v3

    .line 139
    goto :goto_2

    .line 141
    :cond_3
    :try_start_7
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkAnimatable() - GIF without animation"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    .line 142
    :catch_1
    move-exception v0

    .line 145
    :goto_7
    :try_start_8
    sget-object v3, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkAnimatable() - Fail to check GIF duration"

    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 150
    if-eqz v1, :cond_0

    .line 151
    :try_start_9
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V

    goto :goto_0

    .line 154
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 151
    :catchall_3
    move-exception v0

    move-object v1, v2

    .line 150
    :goto_8
    if-nez v1, :cond_4

    .line 152
    :goto_9
    throw v0

    .line 151
    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/util/GifDecoder;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    .line 154
    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    :cond_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto :goto_6

    :cond_8
    :try_start_c
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_6

    .line 151
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 142
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_7
.end method

.method public static createContentUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getTakenTimeFromFile(Landroid/net/Uri;)J
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 288
    :try_start_1
    invoke-static {v0}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 289
    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-wide v2

    .line 289
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_3

    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 292
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getTakenTimeFromFile() - Fail to get taken time from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    .line 293
    return-wide v0

    .line 288
    :catchall_1
    move-exception v1

    .line 289
    if-nez v0, :cond_1

    :goto_2
    :try_start_4
    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private obtainDetails(Lcom/oneplus/base/CallbackHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/Media$DetailsCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 344
    if-nez v0, :cond_2

    .line 354
    invoke-static {v2}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 360
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "obtainDetails() - Not a JPEG file"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 378
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 361
    return-void

    .line 335
    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v2, "image/jpeg"

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v0

    .line 368
    :try_start_3
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaUtils;->getPhotoMediaDetails(Ljava/io/InputStream;)Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 369
    if-nez v0, :cond_6

    .line 378
    :goto_1
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;

    invoke-direct {v0, p0, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 394
    return-void

    .line 348
    :cond_3
    :try_start_4
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "obtainDetails() - Not a JPEG file"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 378
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 349
    return-void

    .line 379
    :cond_4
    return-void

    :sswitch_0
    :try_start_5
    const-string/jumbo v2, ".jpg"

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 379
    :cond_5
    return-void

    .line 369
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_8

    if-ne v1, v0, :cond_9

    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception v0

    move-object v1, v2

    .line 372
    :goto_4
    :try_start_8
    sget-object v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainDetails() - Error when get details"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v2, v1

    .line 374
    goto :goto_1

    .line 369
    :catchall_1
    move-exception v2

    if-nez v0, :cond_7

    :goto_5
    :try_start_9
    throw v2

    :catchall_2
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    move-exception v0

    goto :goto_4

    :cond_8
    move-object v1, v0

    goto :goto_3

    :cond_9
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    .line 374
    :catchall_3
    move-exception v0

    move-object v1, v2

    .line 378
    :goto_6
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 383
    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$6;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 393
    throw v0

    .line 379
    :cond_a
    return-void

    :cond_b
    return-void

    .line 374
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 369
    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 354
    :sswitch_data_0
    .sparse-switch
        0x1684f3 -> :sswitch_0
        0x2ba1996 -> :sswitch_1
    .end sparse-switch
.end method

.method private obtainSize(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-boolean v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    if-nez v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 406
    if-nez v2, :cond_3

    .line 419
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    if-eqz v0, :cond_7

    .line 427
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    if-eqz v0, :cond_8

    .line 438
    :goto_2
    return-void

    .line 402
    :cond_2
    return-void

    .line 408
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 410
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 411
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v0, :cond_6

    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 414
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "obtainSize() - Fail to obtain size for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 411
    :catchall_1
    move-exception v0

    if-nez v3, :cond_4

    :goto_5
    :try_start_4
    throw v0

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :cond_5
    move-object v1, v0

    goto :goto_4

    :cond_6
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 421
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_1

    .line 423
    invoke-static {v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    goto :goto_1

    .line 429
    :cond_8
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$7;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$7;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-ne v0, p1, :cond_3

    .line 448
    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 451
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 452
    iget-object v2, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 453
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v2, :cond_4

    .line 455
    :cond_0
    if-nez v0, :cond_5

    .line 459
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    :cond_2
    return-void

    .line 447
    :cond_3
    return-void

    .line 453
    :cond_4
    if-eqz v0, :cond_0

    .line 454
    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    goto :goto_0

    .line 455
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    invoke-virtual {v0, p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/oneplus/base/CallbackHandle;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/CallbackHandle;

    .line 462
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 463
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v2, :cond_7

    move v2, v1

    .line 464
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_8

    :goto_2
    move v3, v1

    .line 465
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_2

    .line 466
    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    invoke-interface {v1, p0, v2, v3}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 465
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    .line 463
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_1

    .line 464
    :cond_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_2
.end method

.method static parsePhotoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 541
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_CheckAnimatableHandles:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$CheckAnimatableHandle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-object v0

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 102
    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "CheckAnimatable"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;->onChecked(Lcom/oneplus/gallery2/media/PhotoMedia;Z)V

    goto :goto_0
.end method

.method protected createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 199
    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;

    const-string/jumbo v1, "GetPhotoDetails"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Landroid/os/Handler;)V

    .line 209
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 219
    return-object v0

    .line 200
    :cond_0
    return-object v2
.end method

.method public getEncodedMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    return-object v0
.end method

.method public getRawMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    return-object v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 237
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;

    const-string/jumbo v1, "GetPhotoSize"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 257
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eqz v1, :cond_2

    .line 267
    :goto_0
    return-object v0

    .line 238
    :cond_0
    return-object v2

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 244
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 262
    :cond_2
    new-instance v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 263
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isBokeh()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 476
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v2

    .line 479
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 480
    if-nez v0, :cond_3

    .line 483
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    .line 486
    :goto_0
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    if-gtz v0, :cond_4

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_9

    move v0, v2

    .line 529
    :cond_2
    :goto_1
    return v0

    .line 480
    :cond_3
    iget-wide v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 481
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_0

    .line 486
    :cond_4
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    if-lez v0, :cond_1

    .line 489
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->orientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_6

    .line 496
    iget v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    .line 497
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .line 499
    :goto_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_7

    .line 501
    :cond_5
    sget v3, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v2, v3

    .line 502
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 503
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_1

    .line 491
    :cond_6
    iget v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .line 492
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    goto :goto_2

    .line 499
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v3, v0, :cond_5

    move v0, v2

    goto :goto_1

    .line 505
    :cond_8
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdate() - Size changed, reschedule size obtaining"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    iput-boolean v7, v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    .line 507
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v0, p0, v6}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 508
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move v0, v2

    .line 511
    goto :goto_1

    .line 516
    :cond_9
    sget v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v0, v2

    .line 517
    iput-object v6, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 518
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eqz v1, :cond_2

    .line 520
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpdate() - Size changed, reschedule size obtaining"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    iput-boolean v7, v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    .line 522
    new-instance v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v1, p0, v6}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 523
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1
.end method

.method public peekIsAnimatable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_IsAnimatable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
