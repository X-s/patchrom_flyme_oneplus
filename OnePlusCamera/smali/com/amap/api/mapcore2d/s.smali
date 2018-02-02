.class Lcom/amap/api/mapcore2d/s;
.super Ljava/lang/Object;
.source "DiskCachManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore2d/az;

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/am;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    const-string/jumbo v1, "/sdcard/Amap/RMap"

    .line 54
    iput-object v1, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    const/16 v1, 0x80

    .line 56
    iput v1, p0, Lcom/amap/api/mapcore2d/s;->d:I

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore2d/s;->a:Landroid/content/Context;

    .line 25
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 28
    if-eq p2, v1, :cond_2

    .line 32
    iget-object v1, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 41
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 47
    :goto_1
    return-void

    .line 26
    :cond_1
    return-void

    .line 29
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    goto :goto_1

    .line 32
    :cond_3
    iget-object v1, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 36
    if-eqz v0, :cond_4

    .line 39
    :goto_2
    iget-object v1, p3, Lcom/amap/api/mapcore2d/am;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_2

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/amap/api/mapcore2d/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/mapcore2d/am;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(II)I
    .locals 2

    .prologue
    .line 137
    rem-int/lit16 v0, p1, 0x80

    .line 138
    rem-int/lit16 v1, p2, 0x80

    .line 139
    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v0, v1

    .line 140
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/mapcore2d/am;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/amap/api/mapcore2d/am;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private a([B)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 118
    :cond_0
    return-void

    .line 117
    :cond_1
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 120
    aget-byte v0, p1, v2

    .line 121
    aget-byte v1, p1, v5

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 122
    int-to-byte v0, v0

    aput-byte v0, p1, v5

    .line 123
    aget-byte v0, p1, v3

    .line 124
    aget-byte v1, p1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 125
    int-to-byte v0, v0

    aput-byte v0, p1, v4

    .line 126
    return-void
.end method

.method private a(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 108
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 109
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff00

    .line 110
    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    .line 111
    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    .line 112
    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore2d/bp;Z)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    div-int/lit16 v0, v0, 0x80

    .line 77
    iget v1, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    div-int/lit16 v1, v1, 0x80

    .line 78
    div-int/lit8 v0, v0, 0xa

    .line 79
    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    .line 81
    new-array v2, v2, [Ljava/lang/String;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    iget-object v4, p0, Lcom/amap/api/mapcore2d/s;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v4, p1, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/"

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "/"

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "/"

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-eqz p2, :cond_1

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 100
    return-object v2

    .line 92
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private b([B)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 130
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 131
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 132
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 133
    return v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/bp;)I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    const-string/jumbo v5, "getTileFromCach"

    .line 145
    invoke-direct {p0, p1, v3}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/bp;Z)[Ljava/lang/String;

    move-result-object v1

    .line 146
    if-nez v1, :cond_1

    .line 149
    :cond_0
    return v8

    .line 146
    :cond_1
    array-length v0, v1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    aget-object v0, v1, v6

    const-string/jumbo v4, ""

    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 148
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v4, Ljava/io/File;

    aget-object v0, v1, v6

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget v0, p1, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v6, p1, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-direct {p0, v0, v6}, Lcom/amap/api/mapcore2d/s;->a(II)I

    move-result v6

    .line 156
    if-ltz v6, :cond_4

    .line 161
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v0, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    if-eqz v0, :cond_5

    .line 170
    mul-int/lit8 v4, v6, 0x4

    int-to-long v6, v4

    :try_start_1
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_1
    new-array v6, v9, [B

    const/4 v4, 0x0

    const/4 v7, 0x4

    .line 177
    :try_start_2
    invoke-virtual {v0, v6, v4, v7}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    :goto_2
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore2d/s;->a([B)V

    .line 183
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore2d/s;->b([B)I

    move-result v7

    .line 186
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    :goto_3
    if-ltz v7, :cond_6

    .line 197
    new-instance v4, Ljava/io/File;

    aget-object v0, v1, v3

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    :try_start_4
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v4, v0

    .line 208
    :goto_4
    if-eqz v4, :cond_8

    .line 212
    int-to-long v0, v7

    :try_start_5
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 218
    :try_start_6
    invoke-virtual {v4, v6, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 223
    :goto_6
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore2d/s;->a([B)V

    .line 224
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore2d/s;->b([B)I

    move-result v0

    .line 225
    if-gtz v0, :cond_9

    .line 227
    :cond_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 233
    :goto_7
    return v8

    .line 153
    :cond_3
    return v8

    .line 157
    :cond_4
    return v8

    .line 165
    :catch_0
    move-exception v0

    const-string/jumbo v4, "CachManager"

    .line 164
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 167
    :cond_5
    return v8

    .line 174
    :catch_1
    move-exception v4

    const-string/jumbo v6, "CachManager"

    .line 173
    invoke-static {v4, v6, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :catch_2
    move-exception v4

    const-string/jumbo v7, "CachManager"

    .line 180
    invoke-static {v4, v7, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 190
    :catch_3
    move-exception v0

    const-string/jumbo v4, "CachManager"

    .line 189
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 194
    :cond_6
    return v8

    .line 199
    :cond_7
    return v8

    .line 207
    :catch_4
    move-exception v0

    const-string/jumbo v1, "CachManager"

    .line 206
    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_4

    .line 209
    :cond_8
    return v8

    .line 216
    :catch_5
    move-exception v0

    const-string/jumbo v1, "CachManager"

    .line 215
    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 222
    :catch_6
    move-exception v0

    const-string/jumbo v1, "CachManager"

    .line 221
    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const v1, 0x32000

    .line 225
    if-gt v0, v1, :cond_2

    .line 237
    :try_start_8
    new-array v1, v0, [B
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v6, 0x0

    .line 238
    :try_start_9
    invoke-virtual {v4, v1, v6, v0}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    .line 244
    :goto_8
    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 250
    :goto_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_a

    .line 253
    iget-object v0, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    .line 254
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bp;->c()Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    .line 253
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/az;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 261
    return v0

    .line 231
    :catch_7
    move-exception v0

    const-string/jumbo v1, "CachManager"

    .line 230
    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 242
    :catch_8
    move-exception v0

    move-object v1, v2

    :goto_a
    const-string/jumbo v6, "CachManager"

    .line 241
    invoke-static {v0, v6, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 248
    :catch_9
    move-exception v0

    const-string/jumbo v4, "CachManager"

    .line 247
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 251
    :cond_a
    return v8

    .line 242
    :catch_a
    move-exception v0

    goto :goto_a
.end method

.method public a(Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amap/api/mapcore2d/s;->b:Lcom/amap/api/mapcore2d/az;

    .line 105
    return-void
.end method

.method public declared-synchronized a([BLcom/amap/api/mapcore2d/bp;)Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v8, "addDataToCach"

    .line 266
    if-eqz p1, :cond_1

    .line 269
    array-length v1, p1

    .line 270
    if-lez v1, :cond_2

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/bp;Z)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 274
    if-nez v6, :cond_3

    :cond_0
    monitor-exit p0

    .line 278
    return v7

    :cond_1
    monitor-exit p0

    .line 267
    return v7

    :cond_2
    monitor-exit p0

    .line 271
    return v7

    .line 274
    :cond_3
    :try_start_1
    array-length v0, v6

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string/jumbo v4, ""

    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, v6

    new-array v0, v0, [Ljava/lang/String;

    .line 276
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v4, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 296
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rws"

    invoke-direct {v0, v4, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    .line 301
    :goto_0
    if-eqz v4, :cond_8

    .line 305
    :try_start_3
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/s;->a(I)[B

    move-result-object v9

    .line 306
    invoke-direct {p0, v9}, Lcom/amap/api/mapcore2d/s;->a([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    .line 315
    :goto_1
    :try_start_5
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    :goto_2
    :try_start_6
    invoke-virtual {v4, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 327
    :goto_3
    :try_start_7
    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 333
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 340
    :goto_5
    :try_start_9
    new-instance v9, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    .line 355
    :cond_5
    :try_start_a
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v4, v9, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v6, v4

    .line 360
    :goto_6
    if-eqz v6, :cond_a

    .line 365
    :try_start_b
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v4

    .line 370
    :goto_7
    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    const/high16 v2, 0x10000

    .line 371
    :try_start_c
    new-array v2, v2, [B

    .line 372
    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 374
    :try_start_d
    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 381
    :cond_6
    :goto_8
    :try_start_e
    iget v2, p2, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v3, p2, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore2d/s;->a(II)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v2

    .line 382
    if-ltz v2, :cond_b

    .line 392
    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    :try_start_f
    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 397
    :goto_9
    long-to-int v0, v0

    :try_start_10
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/s;->a(I)[B

    move-result-object v0

    .line 398
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/s;->a([B)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 400
    :try_start_11
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 406
    :goto_a
    :try_start_12
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_b
    monitor-exit p0

    .line 413
    return v12

    .line 284
    :cond_7
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v0

    .line 289
    :goto_c
    if-nez v0, :cond_4

    monitor-exit p0

    .line 290
    return v7

    .line 288
    :catch_0
    move-exception v0

    :try_start_14
    const-string/jumbo v9, "CachManager"

    .line 287
    invoke-static {v0, v9, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_c

    .line 300
    :catch_1
    move-exception v0

    const-string/jumbo v4, "CachManager"

    .line 299
    invoke-static {v0, v4, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object v4, v5

    goto :goto_0

    :cond_8
    monitor-exit p0

    .line 302
    return v7

    .line 313
    :catch_2
    move-exception v0

    :try_start_15
    const-string/jumbo v1, "CachManager"

    .line 312
    invoke-static {v0, v1, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_1

    .line 319
    :catch_3
    move-exception v10

    const-string/jumbo v11, "CachManager"

    .line 318
    invoke-static {v10, v11, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    :catch_4
    move-exception v9

    :try_start_16
    const-string/jumbo v10, "CachManager"

    .line 324
    invoke-static {v9, v10, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 331
    :catch_5
    move-exception v9

    const-string/jumbo v10, "CachManager"

    .line 330
    invoke-static {v9, v10, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 337
    :catch_6
    move-exception v4

    const-string/jumbo v9, "CachManager"

    .line 336
    invoke-static {v4, v9, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_5

    .line 344
    :cond_9
    :try_start_17
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result v4

    .line 349
    :goto_d
    if-nez v4, :cond_5

    monitor-exit p0

    .line 350
    return v7

    .line 348
    :catch_7
    move-exception v4

    :try_start_18
    const-string/jumbo v6, "CachManager"

    .line 347
    invoke-static {v4, v6, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    goto :goto_d

    .line 359
    :catch_8
    move-exception v4

    const-string/jumbo v6, "CachManager"

    .line 358
    invoke-static {v4, v6, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-object v6, v5

    goto/16 :goto_6

    :cond_a
    monitor-exit p0

    .line 361
    return v7

    .line 369
    :catch_9
    move-exception v4

    :try_start_19
    const-string/jumbo v5, "CachManager"

    .line 368
    invoke-static {v4, v5, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    goto/16 :goto_7

    .line 378
    :catch_a
    move-exception v2

    const-string/jumbo v3, "CachManager"

    .line 377
    invoke-static {v2, v3, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_8

    .line 384
    :cond_b
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :goto_e
    monitor-exit p0

    .line 389
    return v7

    .line 388
    :catch_b
    move-exception v0

    :try_start_1b
    const-string/jumbo v1, "CachManager"

    .line 387
    invoke-static {v0, v1, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 396
    :catch_c
    move-exception v2

    const-string/jumbo v3, "CachManager"

    .line 395
    invoke-static {v2, v3, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 404
    :catch_d
    move-exception v0

    const-string/jumbo v1, "CachManager"

    .line 403
    invoke-static {v0, v1, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 410
    :catch_e
    move-exception v0

    const-string/jumbo v1, "CachManager"

    .line 409
    invoke-static {v0, v1, v8}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_b
.end method
