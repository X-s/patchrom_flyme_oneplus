.class public Lcom/oppo/tribune/cache/BitmapEntity;
.super Ljava/lang/Object;
.source "BitmapEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/cache/BitmapEntity$2;,
        Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;
    }
.end annotation


# static fields
.field public static final MODE_1080_1080:I = 0x3

.field public static final MODE_480_480:I = 0x2

.field public static final MODE_96_96:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oppo/tribune/cache/BitmapEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapDrawRef:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bitmapSize:J

.field private final name:Ljava/lang/String;

.field private readTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oppo/tribune/cache/BitmapEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/cache/BitmapEntity;->TAG:Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/oppo/tribune/cache/BitmapEntity$1;

    invoke-direct {v0}, Lcom/oppo/tribune/cache/BitmapEntity$1;-><init>()V

    sput-object v0, Lcom/oppo/tribune/cache/BitmapEntity;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapDrawRef:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 44
    .local v2, "p":Landroid/graphics/BitmapFactory$Options;
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 56
    new-instance v3, Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;

    const-string v4, "may meet an error"

    invoke-direct {v3, v4, v5}, Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;-><init>(Ljava/lang/String;Lcom/oppo/tribune/cache/BitmapEntity$1;)V

    throw v3

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v3, Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;

    invoke-direct {v3, v1, v5}, Lcom/oppo/tribune/cache/BitmapEntity$BitmapEntityConstructException;-><init>(Ljava/lang/Throwable;Lcom/oppo/tribune/cache/BitmapEntity$1;)V

    throw v3

    .line 59
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 61
    invoke-static {v2}, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    .line 62
    invoke-virtual {p0}, Lcom/oppo/tribune/cache/BitmapEntity;->updateReadTime()V

    .line 63
    return-void
.end method

.method private static bitmapPixelSize(Landroid/graphics/Bitmap$Config;)I
    .locals 4
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x4

    .line 178
    if-nez p0, :cond_0

    .line 192
    :goto_0
    :pswitch_0
    return v0

    .line 182
    :cond_0
    sget-object v2, Lcom/oppo/tribune/cache/BitmapEntity$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 186
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 188
    goto :goto_0

    .line 190
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static bitmapSize(Landroid/graphics/BitmapFactory$Options;)J
    .locals 2
    .param p0, "p"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 170
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v0, :cond_1

    .line 171
    :cond_0
    const-wide/16 v0, 0x0

    .line 174
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1}, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapPixelSize(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static final calculateBitmapLength(Ljava/lang/String;)[I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v1, "p":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 156
    .local v0, "lengths":[I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v2, :cond_0

    move v2, v3

    :goto_0
    aput v2, v0, v3

    .line 157
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v2, :cond_1

    :goto_1
    aput v3, v0, v4

    .line 158
    return-object v0

    .line 156
    :cond_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    .line 157
    :cond_1
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1
.end method

.method public static final calculateBitmapSize(Ljava/lang/String;)J
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 163
    .local v0, "p":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 166
    invoke-static {v0}, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public decBitmapDrawRef()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapDrawRef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 93
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/oppo/tribune/cache/BitmapEntity;

    .line 95
    .local v0, "other":Lcom/oppo/tribune/cache/BitmapEntity;
    iget-wide v4, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    iget-wide v6, v0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 98
    iget-object v3, v0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object v3, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 101
    goto :goto_0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitmapSize()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getReadTime()J
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->readTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 79
    const/16 v0, 0x1f

    .line 80
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 81
    .local v1, "result":I
    iget-wide v2, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    iget-wide v4, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 82
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 83
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public incBitmapDrawRef()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapDrawRef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public isBitmapOnDrawing()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapDrawRef:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()Z
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x0

    .line 129
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/tribune/cache/BitmapEntity;->isBitmapOnDrawing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_0
    monitor-exit p0

    return v0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapEntity [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oppo/tribune/cache/BitmapEntity;->bitmapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oppo/tribune/cache/BitmapEntity;->readTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateReadTime()V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/tribune/cache/BitmapEntity;->readTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
