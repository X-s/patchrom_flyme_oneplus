.class final Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
.super Lcom/oneplus/gallery2/media/MediaStoreMedia;
.source "VideoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

.field private static final CONTENT_URI_VIDEO:Landroid/net/Uri;

.field private static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final INTERNAL_FLAG_SLOW_MOTION:I = 0x1

.field private static final INTERNAL_FLAG_TIME_LAPSE:I = 0x2

.field private static final LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final LARGE_VIDEO_FILE_SIZE:J = 0x40000000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_Duration:Ljava/lang/Long;

.field private m_DurationCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

.field private m_InternalFlags:I

.field private m_Size:Landroid/util/Size;

.field private m_SizeCallbackHandles:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    const-class v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    .line 30
    sget-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p3, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseVideoFile(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;)Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->onVideoFileParsed(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    return-void
.end method

.method public static createContentUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

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

.method private onVideoFileParsed(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 12
    .param p1, "task"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .prologue
    .line 297
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-eq v7, p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .line 302
    const/4 v5, 0x0

    .line 303
    .local v5, "updateFlags":I
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->duration:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 305
    :cond_2
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-eqz v7, :cond_3

    .line 306
    sget v7, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_DURATION_CHANGED:I

    or-int/2addr v5, v7

    .line 307
    :cond_3
    iget-wide v8, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->duration:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    .line 311
    :cond_4
    iget-object v7, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    iget-object v8, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v7, v8}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 313
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v7, :cond_5

    .line 314
    sget v7, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_SIZE_CHANGED:I

    or-int/2addr v5, v7

    .line 315
    :cond_5
    iget-object v7, p1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    iput-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 319
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-eqz v7, :cond_9

    .line 321
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 322
    .local v2, "duration":J
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_8

    .line 324
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v7}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .line 325
    .local v0, "callback":Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;
    if-eqz v0, :cond_7

    .line 326
    invoke-interface {v0, p0, v2, v3}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    .line 322
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 328
    .end local v0    # "callback":Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;
    :cond_8
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    .line 330
    .end local v2    # "duration":J
    .end local v4    # "i":I
    :cond_9
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-eqz v7, :cond_e

    .line 332
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 333
    .local v6, "width":I
    :goto_2
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 334
    .local v1, "height":I
    :goto_3
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_d

    .line 336
    iget-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v7}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 337
    .local v0, "callback":Lcom/oneplus/gallery2/media/Media$SizeCallback;
    if-eqz v0, :cond_a

    .line 338
    invoke-interface {v0, p0, v6, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 334
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 332
    .end local v0    # "callback":Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .end local v1    # "height":I
    .end local v4    # "i":I
    .end local v6    # "width":I
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 333
    .restart local v6    # "width":I
    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    .line 340
    .restart local v1    # "height":I
    .restart local v4    # "i":I
    :cond_d
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 344
    .end local v1    # "height":I
    .end local v4    # "i":I
    .end local v6    # "width":I
    :cond_e
    if-eqz v5, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v7, p0, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto/16 :goto_0
.end method

.method static final parseVideoContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
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
    .line 357
    .local p1, "mediaIdRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method private parseVideoFile(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V
    .locals 17
    .param p1, "task"    # Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .prologue
    .line 365
    const/4 v12, 0x0

    .line 366
    .local v12, "metadata":Lcom/oneplus/media/VideoMetadata;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 367
    .local v14, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    .line 368
    .local v9, "contentUri":Landroid/net/Uri;
    if-eqz v9, :cond_3

    .line 369
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/oneplus/media/VideoUtils;->readMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v12

    .line 376
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v2, v14

    .line 377
    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoFile() - Take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to read metadata from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz v12, :cond_2

    .line 382
    sget-object v2, Lcom/oneplus/media/VideoMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v2}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 383
    .local v16, "width":I
    sget-object v2, Lcom/oneplus/media/VideoMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v2}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 384
    .local v11, "height":I
    sget-object v2, Lcom/oneplus/media/VideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v2}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 385
    .local v13, "orientation":I
    if-lez v16, :cond_1

    if-lez v11, :cond_1

    .line 387
    rem-int/lit16 v2, v13, 0xb4

    if-nez v2, :cond_4

    .line 388
    new-instance v2, Landroid/util/Size;

    move/from16 v0, v16

    invoke-direct {v2, v0, v11}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    .line 392
    :cond_1
    :goto_1
    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v3, "parseVideoFile() - Media : "

    const-string v5, ", size : "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    const-string v7, ", orientation : "

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    sget-object v2, Lcom/oneplus/media/VideoMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v12, v2}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->duration:J

    .line 397
    .end local v11    # "height":I
    .end local v13    # "orientation":I
    .end local v16    # "width":I
    :cond_2
    new-instance v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$3;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 405
    return-void

    .line 372
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "filePath":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 374
    invoke-static {v10}, Lcom/oneplus/media/VideoUtils;->readMetadata(Ljava/lang/String;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v12

    goto/16 :goto_0

    .line 390
    .end local v10    # "filePath":Ljava/lang/String;
    .restart local v11    # "height":I
    .restart local v13    # "orientation":I
    .restart local v16    # "width":I
    :cond_4
    new-instance v2, Landroid/util/Size;

    move/from16 v0, v16

    invoke-direct {v2, v11, v0}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->size:Landroid/util/Size;

    goto :goto_1
.end method


# virtual methods
.method protected createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;

    .prologue
    .line 91
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->createContentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/oneplus/gallery2/media/Media$DetailsCallback;->onDetailsObtained(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/MediaDetails;)V

    .line 112
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetVideoDetails"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->verifyAccess()V

    .line 124
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, p0, v2, v3}, Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;->onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    .line 128
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetVideoDuration"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    return-object v0

    .line 132
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;

    const-string v1, "GetVideoDuration"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;Landroid/os/Handler;)V

    .line 147
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    if-nez v1, :cond_3

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_DurationCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->verifyAccess()V

    .line 175
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    if-eqz v1, :cond_2

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-interface {p1, p0, v1, v2}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    .line 179
    :cond_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string v1, "GetVideoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    .line 214
    :cond_1
    :goto_0
    return-object v0

    .line 183
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$2;

    const-string v1, "GetVideoSize"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$2;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    .line 198
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/Media$SizeCallback;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-nez v1, :cond_3

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-nez v1, :cond_1

    .line 205
    new-instance v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->LARGE_FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public isSlowMotion()Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeLapse()Z
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 9
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p2, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    .param p3, "fromConstructor"    # Z

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v1

    .line 242
    .local v1, "updateFlags":I
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 243
    .local v0, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 244
    iget v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->isSlowMotion()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 248
    iget v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    .line 253
    :goto_1
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    .line 256
    sget v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_DURATION_CHANGED:I

    or-int/2addr v1, v2

    .line 273
    :cond_1
    sget v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 276
    iput-object v8, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    .line 279
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    if-eqz v2, :cond_2

    .line 281
    sget-object v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v3, "onUpdate() - Media "

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, " has been modified, restart video file parsing"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->cancel()Z

    .line 283
    new-instance v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-direct {v2, p0, v8}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;-><init>(Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$1;)V

    iput-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    .line 284
    iget-object v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    sget-object v3, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_FileParsingTask:Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia$FileParsingTask;->executorFuture:Ljava/util/concurrent/Future;

    .line 289
    :cond_2
    return v1

    .line 246
    :cond_3
    iget v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_0

    .line 250
    :cond_4
    iget v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_InternalFlags:I

    goto :goto_1
.end method

.method public peekDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Duration:Ljava/lang/Long;

    return-object v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
