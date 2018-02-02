.class final Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
.super Lcom/oneplus/gallery2/media/MediaStoreMedia;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field private m_InternalFlags:I

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

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 27
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainSize(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainDetails(Lcom/oneplus/base/CallbackHandle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    return-void
.end method

.method public static createContentUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 80
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

    .line 161
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 163
    :try_start_1
    invoke-static {v0}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 164
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-wide v2

    .line 164
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

    .line 167
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

    .line 168
    return-wide v0

    .line 163
    :catchall_1
    move-exception v1

    .line 164
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

    .line 193
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 203
    if-nez v0, :cond_2

    .line 213
    invoke-static {v2}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 219
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "obtainDetails() - Not a JPEG file"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 237
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 220
    return-void

    .line 194
    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v2, "image/jpeg"

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v0

    if-eqz v0, :cond_3

    .line 225
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

    .line 227
    :try_start_3
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaUtils;->getPhotoMediaDetails(Ljava/io/InputStream;)Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 228
    if-nez v0, :cond_6

    .line 237
    :goto_1
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v0, p0, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 253
    return-void

    .line 207
    :cond_3
    :try_start_4
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "obtainDetails() - Not a JPEG file"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 237
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 208
    return-void

    .line 238
    :cond_4
    return-void

    :sswitch_0
    :try_start_5
    const-string/jumbo v2, ".jpg"

    .line 213
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

    .line 238
    :cond_5
    return-void

    .line 228
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

    .line 231
    :goto_4
    :try_start_8
    sget-object v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainDetails() - Error when get details"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v2, v1

    .line 233
    goto :goto_1

    .line 228
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

    .line 233
    :catchall_3
    move-exception v0

    move-object v1, v2

    .line 237
    :goto_6
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 242
    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 252
    throw v0

    .line 238
    :cond_a
    return-void

    :cond_b
    return-void

    .line 233
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 228
    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 213
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

    .line 260
    iget-boolean v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 265
    if-nez v2, :cond_3

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    if-eqz v0, :cond_7

    .line 286
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    if-eqz v0, :cond_8

    .line 297
    :goto_2
    return-void

    .line 261
    :cond_2
    return-void

    .line 267
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

    .line 269
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
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

    .line 273
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

    .line 270
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

    .line 280
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-static {v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    goto :goto_1

    .line 288
    :cond_8
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-ne v0, p1, :cond_3

    .line 307
    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 310
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 311
    iget-object v2, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 312
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v2, :cond_4

    .line 314
    :cond_0
    if-nez v0, :cond_5

    .line 318
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 327
    :cond_2
    return-void

    .line 306
    :cond_3
    return-void

    .line 312
    :cond_4
    if-eqz v0, :cond_0

    .line 313
    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    goto :goto_0

    .line 314
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    invoke-virtual {v0, p0, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/oneplus/base/CallbackHandle;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/CallbackHandle;

    .line 321
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 322
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v2, :cond_7

    move v2, v1

    .line 323
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_8

    :goto_2
    move v3, v1

    .line 324
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_2

    .line 325
    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    invoke-interface {v1, p0, v2, v3}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 324
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    .line 322
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_1

    .line 323
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
    .line 400
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 90
    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;

    const-string/jumbo v1, "GetPhotoDetails"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Landroid/os/Handler;)V

    .line 100
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$2;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$2;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-object v0

    .line 91
    :cond_0
    return-object v2
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 120
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;

    const-string/jumbo v1, "GetPhotoSize"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 140
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eqz v1, :cond_2

    .line 150
    :goto_0
    return-object v0

    .line 121
    :cond_0
    return-object v2

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 127
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 145
    :cond_2
    new-instance v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 146
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v2

    .line 338
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 339
    if-nez v0, :cond_3

    .line 342
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    .line 345
    :goto_0
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    if-gtz v0, :cond_4

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_9

    move v0, v2

    .line 388
    :cond_2
    :goto_1
    return v0

    .line 339
    :cond_3
    iget-wide v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_0

    .line 345
    :cond_4
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    if-lez v0, :cond_1

    .line 348
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->orientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_6

    .line 355
    iget v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    .line 356
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .line 358
    :goto_2
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v3, :cond_7

    .line 360
    :cond_5
    sget v3, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v2, v3

    .line 361
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 362
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_1

    .line 350
    :cond_6
    iget v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .line 351
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    goto :goto_2

    .line 358
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

    .line 364
    :cond_8
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdate() - Size changed, reschedule size obtaining"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    iput-boolean v7, v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    .line 366
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v0, p0, v6}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 367
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move v0, v2

    .line 370
    goto :goto_1

    .line 375
    :cond_9
    sget v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v0, v2

    .line 376
    iput-object v6, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 377
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eqz v1, :cond_2

    .line 379
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpdate() - Size changed, reschedule size obtaining"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    iput-boolean v7, v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    .line 381
    new-instance v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v1, p0, v6}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 382
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
