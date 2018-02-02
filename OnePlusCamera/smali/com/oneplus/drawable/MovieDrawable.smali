.class public Lcom/oneplus/drawable/MovieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MovieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/drawable/MovieDrawable$DecodeTask;
    }
.end annotation


# static fields
.field private static final BITMAP_REUSE_COUNT:I = 0x2

.field private static final INTERVAL_UPDATE_MOVIE:J = 0x1eL

.field private static final MIN_DURATION_OF_MOVIE:I = 0x1f4

.field private static final MSG_MOVIE_DECODED:I = 0x2710

.field private static final MSG_UPDATE_DECODER:I = 0x2712

.field private static final MSG_UPDATE_MOVIE:I = 0x2711

.field private static final NEW_VALUE_FOR_ZERO_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MovieDrawable"

.field private static final m_BackgroundExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private m_BitmapForUI:Landroid/graphics/Bitmap;

.field private m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_BitmapsCreatedForReuseQueue:I

.field private m_BufferCanvas:Landroid/graphics/Canvas;

.field private final m_BufferSrcRect:Landroid/graphics/Rect;

.field private final m_Context:Landroid/content/Context;

.field private m_CopyScratch:[I

.field private m_DecodeTask:Lcom/oneplus/drawable/MovieDrawable$DecodeTask;

.field private m_GifDecoder:Lcom/oneplus/util/GifDecoder;

.field private m_Handler:Landroid/os/Handler;

.field private m_IsStarted:Z

.field private m_Movie:Landroid/graphics/Movie;

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_ShouldPrintLogForFirstTime:Z

.field private final m_Source:Ljava/lang/Object;

.field private m_StartTime:J

.field private m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -get0(Lcom/oneplus/drawable/MovieDrawable;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/drawable/MovieDrawable;)Landroid/graphics/Movie;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->decodeMovieAsync()Landroid/graphics/Movie;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/drawable/MovieDrawable;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->loadFile()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/drawable/MovieDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->decodeGifAsync()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/drawable/MovieDrawable;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/drawable/MovieDrawable;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/drawable/MovieDrawable;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    .line 52
    iput-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 63
    iput-boolean v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_ShouldPrintLogForFirstTime:Z

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No content URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iput-object p1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Context:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 130
    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->createHandler()V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    .line 52
    iput-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 63
    iput-boolean v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_ShouldPrintLogForFirstTime:Z

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Context:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->createHandler()V

    .line 105
    return-void
.end method

.method private addReusedBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "addReusedBitmap() - quit already"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_0
    if-nez p1, :cond_1

    .line 142
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "addReusedBitmap() - bitmap is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    return-void
.end method

.method private clearReuseBitmapQueue()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    .line 152
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/oneplus/drawable/MovieDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/drawable/MovieDrawable$1;-><init>(Lcom/oneplus/drawable/MovieDrawable;)V

    iput-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Handler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method private decodeGifAsync()V
    .locals 20

    .prologue
    .line 177
    new-instance v11, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 178
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    invoke-virtual {v11}, Lcom/oneplus/util/GifDecoder;->frameCount()I

    move-result v3

    .line 179
    .local v3, "count":I
    const/4 v9, 0x0

    .line 181
    .local v9, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-eqz v11, :cond_1

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 185
    .local v14, "startTime":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    invoke-virtual {v11, v9}, Lcom/oneplus/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oneplus/drawable/MovieDrawable;->getABitmapForDecode(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    const/4 v10, 0x0

    .line 187
    .local v10, "shouldSendBitmapToUI":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-nez v11, :cond_3

    .line 189
    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    :cond_0
    const-string/jumbo v11, "MovieDrawable"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "decodeGifAsync() - time to quit,bitmap:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "shouldSendBitmapToUI":Z
    .end local v14    # "startTime":J
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/drawable/MovieDrawable;->clearReuseBitmapQueue()V

    .line 228
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    invoke-virtual {v11}, Lcom/oneplus/util/GifDecoder;->release()V

    .line 229
    const-string/jumbo v11, "MovieDrawable"

    const-string/jumbo v16, "decodeGifAsync() - end "

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 186
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "startTime":J
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "shouldSendBitmapToUI":Z
    goto :goto_1

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    invoke-virtual {v11, v9}, Lcom/oneplus/util/GifDecoder;->geDuration(I)J

    move-result-wide v6

    .line 197
    .local v6, "duration":J
    const-wide/16 v16, 0x0

    cmp-long v11, v6, v16

    if-gtz v11, :cond_4

    .line 199
    const-wide/16 v6, 0x64

    .line 203
    :cond_4
    if-eqz v10, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v16, 0x2712

    move/from16 v0, v16

    invoke-static {v11, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 208
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v16, v14

    .line 209
    .local v4, "decodeTime":J
    sub-long v16, v6, v4

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-lez v11, :cond_7

    sub-long v12, v6, v4

    .line 210
    .local v12, "sleepTime":J
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_ShouldPrintLogForFirstTime:Z

    if-eqz v11, :cond_6

    .line 212
    const-string/jumbo v11, "MovieDrawable"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "decodeGifAsync() - sleep time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",decode time:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",frame delay:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",index:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ",count:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oneplus/drawable/MovieDrawable;->m_ShouldPrintLogForFirstTime:Z

    .line 217
    :cond_6
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_3
    add-int/lit8 v11, v9, 0x1

    rem-int v9, v11, v3

    goto/16 :goto_0

    .line 209
    .end local v12    # "sleepTime":J
    :cond_7
    const-wide/16 v12, 0x0

    .restart local v12    # "sleepTime":J
    goto :goto_2

    .line 220
    :catch_0
    move-exception v8

    .line 221
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v11, "MovieDrawable"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "decodeGifAsync() - exception e: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeMovieAsync()Landroid/graphics/Movie;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 235
    const/4 v1, 0x0

    .line 238
    .local v1, "movie":Landroid/graphics/Movie;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    .end local v1    # "movie":Landroid/graphics/Movie;
    :cond_0
    :goto_0
    const-string/jumbo v3, "MovieDrawable"

    const-string/jumbo v4, "decodeMovieAsync() - end"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-object v1

    .line 240
    .restart local v1    # "movie":Landroid/graphics/Movie;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    instance-of v3, v3, Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_6

    .line 242
    const/4 v2, 0x0

    .local v2, "stream":Ljava/io/InputStream;
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 244
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 245
    .local v1, "movie":Landroid/graphics/Movie;
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    .end local v1    # "movie":Landroid/graphics/Movie;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v3, "MovieDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeMovieAsync() - Fail to decode movie : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 245
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "movie":Landroid/graphics/Movie;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v2    # "stream":Ljava/io/InputStream;
    .local v1, "movie":Landroid/graphics/Movie;
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_2
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_3
    if-eqz v4, :cond_5

    :try_start_7
    throw v4

    :catch_3
    move-exception v5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    :cond_4
    if-eq v4, v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v3

    .line 248
    :cond_6
    const-string/jumbo v3, "MovieDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeMovieAsync() - Unknown source : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 245
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method private getABitmapForDecode(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmapFromDecoder"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 291
    if-nez p1, :cond_0

    .line 294
    return-object v8

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 297
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 298
    .local v9, "height":I
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_CopyScratch:[I

    if-nez v2, :cond_1

    .line 300
    mul-int v2, v5, v9

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_CopyScratch:[I

    .line 302
    :cond_1
    const/4 v10, 0x0

    .line 304
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 307
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    .line 308
    const-string/jumbo v2, "MovieDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getABitmapForDecode() - create new bitmap. m_BitmapsCreatedForReuseQueue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapsCreatedForReuseQueue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v10

    .line 314
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapReuseQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const-wide/16 v6, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v10, :cond_3

    .line 322
    const-string/jumbo v2, "MovieDrawable"

    const-string/jumbo v3, "getABitmapForDecode() - get a null bitmap from queue."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-object v8

    .line 317
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 318
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MovieDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getABitmapForDecode() e = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-nez v2, :cond_4

    .line 327
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    const-string/jumbo v2, "MovieDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getABitmapForDecode() - time to quit,bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-object v8

    .line 331
    :cond_4
    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_CopyScratch:[I

    move-object v2, p1

    move v6, v4

    move v7, v4

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 332
    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_CopyScratch:[I

    move-object v2, v10

    move v6, v4

    move v7, v4

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 375
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Movie;

    invoke-direct {p0, v0}, Lcom/oneplus/drawable/MovieDrawable;->onMovieDecoded(Landroid/graphics/Movie;)V

    goto :goto_0

    .line 379
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->updateForMovie()V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/drawable/MovieDrawable;->updateForGifDecoder(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadFile()Z
    .locals 14

    .prologue
    .line 411
    const/4 v7, 0x0

    .line 414
    .local v7, "retStatus":Z
    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    if-eqz v10, :cond_0

    .line 416
    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    invoke-virtual {v10}, Lcom/oneplus/util/GifDecoder;->release()V

    .line 419
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 422
    .local v8, "start":J
    :try_start_0
    new-instance v10, Lcom/oneplus/util/GifDecoder;

    invoke-direct {v10}, Lcom/oneplus/util/GifDecoder;-><init>()V

    iput-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    .line 423
    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 425
    iget-object v11, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/oneplus/util/GifDecoder;->read(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    const/4 v7, 0x1

    .line 467
    :goto_0
    const-string/jumbo v10, "MovieDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadFile() - load file time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",source:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return v7

    .line 428
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    instance-of v10, v10, Landroid/net/Uri;

    if-eqz v10, :cond_3

    .line 430
    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    check-cast v10, Landroid/net/Uri;

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 431
    .local v6, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    .local v5, "fs":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 435
    .local v0, "byteArray":[B
    const/16 v10, 0x400

    :try_start_2
    new-array v2, v10, [B

    .line 437
    .local v2, "data":[B
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 439
    const/4 v10, 0x0

    invoke-virtual {v5, v2, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 446
    .end local v0    # "byteArray":[B
    .end local v1    # "count":I
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 447
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v10, "MovieDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadFile() -e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 451
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 457
    :goto_3
    :try_start_5
    iget-object v10, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    invoke-virtual {v10, v0}, Lcom/oneplus/util/GifDecoder;->read([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 458
    const/4 v7, 0x1

    goto :goto_0

    .line 441
    .restart local v0    # "byteArray":[B
    .restart local v1    # "count":I
    .restart local v2    # "data":[B
    :cond_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 442
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 443
    .local v0, "byteArray":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 464
    .end local v0    # "byteArray":[B
    .end local v1    # "count":I
    .end local v2    # "data":[B
    .end local v5    # "fs":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .line 465
    .local v4, "ex":Ljava/lang/Throwable;
    const-string/jumbo v10, "MovieDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadFile() - e: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "fs":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 455
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v10, "MovieDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadFile() -e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 461
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fs":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_3
    const-string/jumbo v10, "MovieDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadFile() - Unknown source : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method private onMovieDecoded(Landroid/graphics/Movie;)V
    .locals 6
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    return-void

    .line 479
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    .line 481
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferCanvas:Landroid/graphics/Canvas;

    .line 482
    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_StartTime:J

    .line 484
    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->updateForMovie()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "MovieDrawable"

    const-string/jumbo v2, "onMovieDecoded() - Failed."

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateForGifDecoder(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 601
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "updateForGifDecoder() - bitmap is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void

    .line 604
    :cond_0
    iput-object p1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    .line 606
    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->invalidateSelf()V

    .line 597
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/drawable/MovieDrawable;->addReusedBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateForMovie()V
    .locals 6

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-eqz v2, :cond_0

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/drawable/MovieDrawable;->m_StartTime:J

    sub-long v0, v2, v4

    .line 584
    .local v0, "newTime":J
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 585
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Movie;->setTime(I)Z

    .line 591
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->invalidateSelf()V

    .line 592
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v3, 0x2711

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 579
    .end local v0    # "newTime":J
    :cond_0
    return-void

    .line 588
    .restart local v0    # "newTime":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_StartTime:J

    .line 589
    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Movie;->setTime(I)Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 269
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/drawable/MovieDrawable;->addReusedBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BufferSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 345
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 365
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 353
    const/4 v0, -0x3

    return v0
.end method

.method public isTheSameSource(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 392
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "isTheSameSource() - uri is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTheSameSource(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 402
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "isTheSameSource() - path is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    return v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Source:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 494
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 501
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 515
    iput-object p1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 516
    invoke-virtual {p0}, Lcom/oneplus/drawable/MovieDrawable;->invalidateSelf()V

    .line 511
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 524
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    if-nez p1, :cond_1

    .line 527
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/oneplus/drawable/MovieDrawable;->updateForMovie()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 540
    return-void

    .line 541
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    .line 543
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_DecodeTask:Lcom/oneplus/drawable/MovieDrawable$DecodeTask;

    if-nez v0, :cond_1

    .line 545
    new-instance v0, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/drawable/MovieDrawable$DecodeTask;-><init>(Lcom/oneplus/drawable/MovieDrawable;Lcom/oneplus/drawable/MovieDrawable$DecodeTask;)V

    iput-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_DecodeTask:Lcom/oneplus/drawable/MovieDrawable$DecodeTask;

    .line 546
    sget-object v0, Lcom/oneplus/drawable/MovieDrawable;->m_BackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_DecodeTask:Lcom/oneplus/drawable/MovieDrawable$DecodeTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 548
    :cond_1
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 558
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_IsStarted:Z

    .line 560
    iput-object v1, p0, Lcom/oneplus/drawable/MovieDrawable;->m_DecodeTask:Lcom/oneplus/drawable/MovieDrawable$DecodeTask;

    .line 561
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_GifDecoder:Lcom/oneplus/util/GifDecoder;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_BitmapForUI:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/drawable/MovieDrawable;->addReusedBitmap(Landroid/graphics/Bitmap;)V

    .line 574
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/drawable/MovieDrawable;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void

    .line 570
    :cond_2
    const-string/jumbo v0, "MovieDrawable"

    const-string/jumbo v1, "stop() - m_BitmapForUI is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
