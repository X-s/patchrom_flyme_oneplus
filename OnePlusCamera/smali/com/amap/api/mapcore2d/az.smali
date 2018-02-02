.class Lcom/amap/api/mapcore2d/az;
.super Ljava/lang/Object;
.source "MemoryTileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/az$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/amap/api/mapcore2d/az$a;

.field protected final b:I

.field protected final c:I

.field protected final d:[Lcom/amap/api/mapcore2d/az$a;

.field private e:Z

.field private f:J

.field private g:Lcom/amap/api/mapcore2d/am;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IIZJLcom/amap/api/mapcore2d/am;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/az;->f:J

    .line 262
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->h:Landroid/graphics/Paint;

    .line 263
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->i:Landroid/graphics/Path;

    .line 31
    iput p1, p0, Lcom/amap/api/mapcore2d/az;->b:I

    .line 32
    iput p2, p0, Lcom/amap/api/mapcore2d/az;->c:I

    .line 33
    iput-object p6, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/am;

    .line 34
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    const-wide/32 v0, 0xf4240

    .line 35
    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/az;->f:J

    .line 37
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-gtz v0, :cond_0

    .line 41
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    .line 42
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->b:I

    new-array v0, v0, [Lcom/amap/api/mapcore2d/az$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    .line 39
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->c:I

    new-array v0, v0, [Lcom/amap/api/mapcore2d/az$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->h:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->i:Landroid/graphics/Path;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/amap/api/mapcore2d/az$1;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore2d/az$1;-><init>(Lcom/amap/api/mapcore2d/az;Ljava/util/List;)V

    .line 315
    new-instance v1, Lcom/amap/api/mapcore2d/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/h;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 316
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/h;->a(Landroid/graphics/Bitmap;)V

    .line 317
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/h;->a(Lcom/amap/api/mapcore2d/i;)V

    .line 318
    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method private d()J
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    move v0, v1

    .line 191
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/az;->c:I

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 196
    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-lt v0, v2, :cond_1

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 216
    :goto_2
    iget v3, p0, Lcom/amap/api/mapcore2d/az;->c:I

    if-lt v0, v3, :cond_6

    .line 224
    return v2

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aput-object v3, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    move-object v3, v2

    move v2, v1

    .line 200
    :goto_3
    iget v4, p0, Lcom/amap/api/mapcore2d/az;->c:I

    if-lt v2, v4, :cond_2

    .line 196
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    .line 206
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/az$a;->d:J

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/az$a;->d:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v4, v4, v2

    .line 208
    iget-object v5, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aput-object v3, v5, v2

    move-object v3, v4

    .line 200
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    :cond_4
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aput-object v3, v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    .line 206
    goto :goto_5

    .line 217
    :cond_6
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    if-nez v3, :cond_8

    .line 216
    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 218
    :cond_8
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 219
    if-gez v2, :cond_7

    .line 220
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/amap/api/mapcore2d/az$a;->e:I

    goto :goto_6
.end method

.method protected a(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 49
    if-nez p1, :cond_1

    .line 50
    :cond_0
    return v8

    :cond_1
    const-string/jumbo v0, ""

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    .line 53
    :goto_0
    iget v3, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-lt v0, v3, :cond_2

    .line 78
    return v8

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    .line 57
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az$a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 60
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/az$a;->c:Z

    if-eqz v3, :cond_4

    .line 64
    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    if-eq v3, v2, :cond_5

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 74
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/mapcore2d/az$a;->d:J

    .line 75
    return v0

    .line 61
    :cond_4
    return v8

    .line 65
    :cond_5
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v4

    .line 66
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/az$a;->f:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/az;->f:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    :goto_1
    if-nez v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v2, v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 68
    return v8

    :cond_6
    move v2, v1

    .line 66
    goto :goto_1

    .line 72
    :cond_7
    return v8

    .line 53
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized a([B[BZLjava/util/List;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BZ",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bu;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    monitor-enter p0

    .line 107
    if-eqz p1, :cond_5

    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/az;->b()I

    move-result v0

    .line 114
    if-ltz v0, :cond_6

    move v1, v0

    .line 118
    :goto_0
    if-ltz v1, :cond_7

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    if-eqz v0, :cond_8

    .line 125
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    .line 132
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;

    if-nez v0, :cond_a

    .line 137
    :goto_2
    if-eq p3, v6, :cond_b

    .line 145
    :cond_2
    if-nez p2, :cond_c

    .line 154
    :goto_3
    if-nez p4, :cond_d

    .line 165
    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_f

    :cond_4
    :goto_5
    monitor-exit p0

    .line 179
    return v1

    .line 107
    :cond_5
    if-nez p2, :cond_0

    if-nez p4, :cond_0

    monitor-exit p0

    .line 108
    return v5

    .line 115
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/az;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_7
    monitor-exit p0

    .line 119
    return v5

    :cond_8
    monitor-exit p0

    .line 122
    return v5

    .line 125
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 137
    :cond_b
    if-eqz p1, :cond_2

    .line 139
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    array-length v3, p1

    .line 140
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 144
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "BitmapManager"

    const-string/jumbo v3, "setBitmapData"

    .line 143
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 147
    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    array-length v3, p2

    .line 148
    invoke-static {p2, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 152
    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    const-string/jumbo v2, "BitmapManager"

    const-string/jumbo v3, "setBitmapData"

    .line 151
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 155
    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v2, v2, Lcom/amap/api/mapcore2d/au;->a:I

    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/am;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v3, v3, Lcom/amap/api/mapcore2d/au;->a:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p4}, Lcom/amap/api/mapcore2d/az;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V

    goto/16 :goto_4

    .line 165
    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    .line 167
    return v5

    .line 171
    :cond_f
    :try_start_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 172
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iput-object p5, v0, Lcom/amap/api/mapcore2d/az$a;->b:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/az$a;->d:J

    .line 175
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    if-ne v0, v6, :cond_4

    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/az$a;->f:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    if-gez p1, :cond_1

    .line 83
    :cond_0
    return-object v1

    .line 82
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-ge p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    return-object v0

    .line 86
    :cond_2
    return-object v1
.end method

.method protected b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 231
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-lt v0, v2, :cond_0

    .line 242
    return v1

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/amap/api/mapcore2d/az$a;->c:Z

    if-eqz v2, :cond_3

    .line 231
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    new-instance v2, Lcom/amap/api/mapcore2d/az$a;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/az$a;-><init>(Lcom/amap/api/mapcore2d/az;)V

    aput-object v2, v1, v0

    .line 234
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/amap/api/mapcore2d/az$a;->e:I

    .line 235
    return v0

    .line 237
    :cond_3
    if-gez v1, :cond_1

    move v1, v0

    .line 239
    goto :goto_1
.end method

.method protected c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 248
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-lt v0, v1, :cond_0

    .line 260
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 257
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method
