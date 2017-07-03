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
    .line 25
    const-class v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

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

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p3, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

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

.method static synthetic access$000(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainSize(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
    .param p1, "x1"    # Lcom/oneplus/base/CallbackHandle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainDetails(Lcom/oneplus/base/CallbackHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    return-void
.end method

.method public static createContentUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

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
    .locals 7
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 163
    :try_start_1
    invoke-static {v1}, Lcom/oneplus/media/ImageUtils;->decodeTakenTime(Ljava/io/InputStream;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 164
    if-eqz v1, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-wide v4

    .line 164
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 165
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTakenTimeFromFile() - Fail to get taken time from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 164
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 161
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_2
    :try_start_7
    throw v3

    :catch_3
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v4, v6

    goto :goto_1
.end method

.method private obtainDetails(Lcom/oneplus/base/CallbackHandle;)V
    .locals 10
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
    .line 193
    .local p1, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$DetailsCallback;>;"
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 201
    .local v0, "details":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 205
    const-string v7, "image/jpeg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 207
    sget-object v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v8, "obtainDetails() - Not a JPEG file"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    move-object v3, v0

    .line 242
    .local v3, "finalDetails":Ljava/lang/Object;
    new-instance v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v7, p0, p1, v3}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    .end local v3    # "finalDetails":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 219
    sget-object v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v8, "obtainDetails() - Not a JPEG file"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    move-object v3, v0

    .line 242
    .restart local v3    # "finalDetails":Ljava/lang/Object;
    new-instance v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v7, p0, p1, v3}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    .end local v3    # "finalDetails":Ljava/lang/Object;
    :sswitch_0
    :try_start_2
    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_1
    const-string v9, ".jpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    .line 225
    :cond_4
    :pswitch_0
    :try_start_3
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .local v4, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 227
    :try_start_4
    invoke-static {v4}, Lcom/oneplus/gallery2/media/MediaUtils;->getPhotoMediaDetails(Ljava/io/InputStream;)Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 228
    if-eqz v4, :cond_5

    if-eqz v8, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    .end local v4    # "input":Ljava/io/InputStream;
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    move-object v3, v0

    .line 242
    .local v3, "finalDetails":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    new-instance v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v7, p0, p1, v3}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v7}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 228
    .end local v3    # "finalDetails":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 229
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 231
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_7
    sget-object v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v8, "obtainDetails() - Error when get details"

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 237
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 241
    move-object v3, v0

    .line 242
    .restart local v3    # "finalDetails":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    new-instance v8, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;

    invoke-direct {v8, p0, p1, v3}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$4;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/PhotoMediaDetails;)V

    invoke-static {p0, v8}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 252
    throw v7

    .line 228
    .end local v3    # "finalDetails":Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_6
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 225
    :catch_2
    move-exception v8

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 228
    :catchall_1
    move-exception v7

    if-eqz v4, :cond_7

    if-eqz v8, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    :goto_3
    :try_start_b
    throw v7

    :catch_3
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x1684f3 -> :sswitch_0
        0x2ba1996 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private obtainSize(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 9
    .param p1, "task"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .prologue
    .line 260
    iget-boolean v5, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    if-eqz v5, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 265
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 267
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 269
    :try_start_1
    invoke-static {v3}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/io/InputStream;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    if-eqz v3, :cond_2

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_2
    :goto_1
    iget-object v5, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    if-nez v5, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 282
    invoke-static {v2}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    .line 286
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_3
    iget-boolean v5, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    if-nez v5, :cond_0

    .line 288
    new-instance v5, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;

    invoke-direct {v5, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    invoke-static {p0, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 270
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 271
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 273
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "obtainSize() - Fail to obtain size for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 270
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 267
    :catch_2
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_2
    if-eqz v3, :cond_5

    if-eqz v6, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_3
    :try_start_7
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method private onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 8
    .param p1, "task"    # Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .prologue
    const/4 v6, 0x0

    .line 305
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eq v5, p1, :cond_1

    .line 327
    :cond_0
    return-void

    .line 307
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 310
    iget-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 311
    .local v3, "oldSize":Landroid/util/Size;
    iget-object v5, p1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->size:Landroid/util/Size;

    iput-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 312
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    .line 313
    iput-object v3, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 318
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 320
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/oneplus/base/CallbackHandle;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/CallbackHandle;

    .line 321
    .local v0, "callbacks":[Lcom/oneplus/base/CallbackHandle;, "[Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 322
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 323
    .local v4, "width":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 324
    .local v1, "height":I
    :goto_2
    array-length v5, v0

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_0

    .line 325
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    invoke-interface {v5, p0, v4, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 324
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 314
    .end local v0    # "callbacks":[Lcom/oneplus/base/CallbackHandle;, "[Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v4    # "width":I
    :cond_3
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v3, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v7, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    invoke-virtual {v5, p0, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .restart local v0    # "callbacks":[Lcom/oneplus/base/CallbackHandle;, "[Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    :cond_4
    move v4, v6

    .line 322
    goto :goto_1

    .restart local v4    # "width":I
    :cond_5
    move v1, v6

    .line 323
    goto :goto_2
.end method

.method static parsePhotoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .param p0, "contentUri"    # Landroid/net/Uri;
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
    .local p1, "mediaIdRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    .prologue
    .line 69
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 90
    if-nez p1, :cond_0

    move-object v0, v1

    .line 110
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;

    const-string v2, "GetPhotoDetails"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Landroid/os/Handler;)V

    .line 100
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$DetailsCallback;>;"
    sget-object v1, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$2;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$2;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/base/CallbackHandle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->verifyAccess()V

    .line 120
    if-nez p1, :cond_1

    move-object v0, v1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v2, :cond_2

    .line 126
    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-interface {p1, p0, v1, v2}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 127
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;

    const-string v2, "GetPhotoSize"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$3;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 140
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

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
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 10
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p2, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    .param p3, "fromConstructor"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v1

    .line 338
    .local v1, "flags":I
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 339
    .local v0, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 340
    iget v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    .line 345
    :goto_0
    iget v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    if-lez v4, :cond_4

    iget v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    if-lez v4, :cond_4

    .line 348
    iget v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->orientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_3

    .line 350
    iget v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .line 351
    .local v3, "width":I
    iget v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    .line 358
    .local v2, "height":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 360
    :cond_0
    sget v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v1, v4

    .line 361
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v3, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 362
    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eqz v4, :cond_1

    .line 364
    sget-object v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v5, "onUpdate() - Size changed, reschedule size obtaining"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    iput-boolean v9, v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    .line 366
    new-instance v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v4, p0, v8}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;)V

    iput-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 367
    sget-object v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 388
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_1
    :goto_2
    return v1

    .line 342
    :cond_2
    iget v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_0

    .line 355
    :cond_3
    iget v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->height:I

    .line 356
    .restart local v3    # "width":I
    iget v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->width:I

    .restart local v2    # "height":I
    goto :goto_1

    .line 373
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v4, :cond_1

    .line 375
    sget v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v1, v4

    .line 376
    iput-object v8, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 377
    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    if-eqz v4, :cond_1

    .line 379
    sget-object v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v5, "onUpdate() - Size changed, reschedule size obtaining"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    iput-boolean v9, v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;->isCancelled:Z

    .line 381
    new-instance v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {v4, p0, v8}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;-><init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$1;)V

    iput-object v4, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    .line 382
    sget-object v4, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_SizeObtainingTask:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
