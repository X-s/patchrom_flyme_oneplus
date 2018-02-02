.class public abstract Lcom/amap/api/mapcore2d/dz;
.super Lcom/amap/api/mapcore2d/ee;
.source "BinaryRequest.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/amap/api/mapcore2d/cu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cu;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ee;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 40
    :goto_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/dz;->b:Lcom/amap/api/mapcore2d/cu;

    .line 42
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dz;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method private l()[B
    .locals 4

    .prologue
    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string/jumbo v0, "PANDORA$"

    .line 101
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    .line 105
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    .line 107
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 113
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    .line 115
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    .line 110
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 v0, 0x0

    .line 118
    return-object v0

    .line 116
    :catch_2
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getBinaryHead"

    .line 115
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 116
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getBinaryHead"

    .line 115
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private m()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dz;->a()[B

    move-result-object v0

    .line 206
    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 207
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_0
    return-object v0

    .line 206
    :cond_1
    :try_start_2
    array-length v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 210
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dz;->a([B)[B

    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 213
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    .line 222
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :catch_1
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    .line 222
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    .line 217
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 226
    :goto_2
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    return-object v0

    .line 223
    :catch_3
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestRawData"

    .line 222
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :catchall_0
    move-exception v0

    .line 220
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 223
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestRawData"

    .line 222
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private n()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dz;->b()[B

    move-result-object v0

    .line 236
    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 237
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 251
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    :goto_0
    return-object v0

    .line 236
    :cond_1
    :try_start_2
    array-length v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 240
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dz;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dz;->a([B)[B

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 245
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 251
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    .line 253
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :catch_1
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    .line 253
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    .line 248
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 256
    :goto_2
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    return-object v0

    .line 254
    :catch_3
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestEncryptData"

    .line 253
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    :catchall_0
    move-exception v0

    .line 251
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 254
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    .line 253
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public abstract a()[B
.end method

.method protected a([B)[B
    .locals 4

    .prologue
    .line 194
    array-length v0, p1

    .line 195
    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    .line 196
    rem-int/lit16 v0, v0, 0x100

    int-to-byte v0, v0

    const/4 v2, 0x2

    .line 197
    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public final a_()[B
    .locals 4

    .prologue
    .line 71
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dz;->l()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 74
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dz;->h()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 75
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dz;->m()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 76
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dz;->n()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 77
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    .line 89
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    .line 84
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 v0, 0x0

    .line 94
    return-object v0

    .line 90
    :catch_2
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getEntityBytes"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    .line 87
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 90
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getEntityBytes"

    .line 89
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public abstract b()[B
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "2.1"

    .line 187
    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/amap/api/mapcore2d/co;->a()Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dz;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "ts"

    .line 58
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key"

    .line 59
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scode"

    .line 60
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v3
.end method

.method public h()[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x1

    .line 127
    :try_start_0
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dz;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dz;->c()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    .line 146
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 149
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dz;->i()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 162
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :goto_3
    return-object v0

    .line 129
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dz;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;Z)[B

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dz;->a([B)[B

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getPublicData"

    .line 164
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 172
    :goto_4
    new-array v0, v5, [B

    aput-byte v4, v0, v4

    return-object v0

    .line 141
    :cond_3
    :try_start_5
    array-length v2, v0

    if-lez v2, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dz;->a([B)[B

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    .line 167
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 170
    :goto_5
    throw v0

    .line 153
    :cond_4
    :try_start_7
    array-length v2, v0

    if-lez v2, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dz;->a([B)[B

    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 156
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 170
    :catch_1
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    .line 169
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 170
    :catch_2
    move-exception v0

    const-string/jumbo v1, "BinaryRequest"

    const-string/jumbo v2, "getRequestEncryptData"

    .line 169
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 170
    :catch_3
    move-exception v1

    const-string/jumbo v2, "BinaryRequest"

    const-string/jumbo v3, "getRequestEncryptData"

    .line 169
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "platform=Android&sdkversion=%s&product=%s"

    const/4 v1, 0x2

    .line 179
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/dz;->b:Lcom/amap/api/mapcore2d/cu;

    .line 181
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/cu;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore2d/dz;->b:Lcom/amap/api/mapcore2d/cu;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/cu;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
