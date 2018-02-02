.class public Lcom/oneplus/media/JfifImage;
.super Ljava/lang/Object;
.source "JfifImage.java"

# interfaces
.implements Lcom/oneplus/media/EncodedImage;
.implements Lcom/oneplus/media/XMPContainer;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final APP1:I = 0xe1

.field private static final EOI:I = 0xd9

.field private static final SOI:I = 0xd8

.field private static final SOS:I = 0xda

.field private static final TAG:Ljava/lang/String;

.field private static final XMP_BUFFER_SIZE_MAX:I = 0xffde

.field private static final XMP_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_SIZE:I


# instance fields
.field private m_CompressedImageData:[B

.field private volatile m_IsClosed:Z

.field private volatile m_IsXMPModified:Z

.field private m_Segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/media/JfifSegment;",
            ">;"
        }
    .end annotation
.end field

.field private m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

.field private m_XMPSegment:Lcom/oneplus/media/JfifSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oneplus/media/JfifImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    .line 45
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;I)Lcom/oneplus/media/JfifImage;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    const/4 v8, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "jpegBytes":[B
    const/4 v4, 0x0

    .local v4, "jpegStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 120
    .end local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "jpegStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v6, p1, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 121
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-object v3

    .line 127
    .local v3, "jpegBytes":[B
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v6, v8

    :goto_0
    if-eqz v6, :cond_4

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 124
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v4, v5

    .line 125
    .end local v3    # "jpegBytes":[B
    .end local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    sget-object v6, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "create() - Error to compress bitmap"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return-object v8

    .line 127
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "jpegBytes":[B
    .restart local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "jpegBytes":[B
    .restart local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v6

    .end local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_3
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_4
    if-eqz v7, :cond_3

    :try_start_6
    throw v7

    .line 124
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    if-nez v7, :cond_2

    move-object v7, v9

    goto :goto_4

    :cond_2
    if-eq v7, v9, :cond_1

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v6
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 128
    .local v3, "jpegBytes":[B
    .restart local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    if-eqz v3, :cond_5

    array-length v6, v3

    if-nez v6, :cond_6

    .line 130
    :cond_5
    sget-object v6, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "create() - Jpeg byte array is empty"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v8

    .line 135
    :cond_6
    const/4 v1, 0x0

    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 137
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_8
    invoke-static {v2}, Lcom/oneplus/media/JfifImage;->create(Ljava/io/InputStream;)Lcom/oneplus/media/JfifImage;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v7

    .line 142
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    move-object v6, v8

    :goto_5
    if-eqz v6, :cond_8

    :try_start_a
    throw v6
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 140
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 141
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :goto_6
    sget-object v6, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "create() - Error to create image"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    return-object v8

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v6

    goto :goto_5

    .line 137
    :cond_8
    return-object v7

    .line 142
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v6

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :goto_7
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_8
    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_9
    if-eqz v7, :cond_b

    :try_start_d
    throw v7

    .line 140
    :catch_8
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    goto :goto_6

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v9

    if-nez v7, :cond_a

    move-object v7, v9

    goto :goto_9

    :cond_a
    if-eq v7, v9, :cond_9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_b
    throw v6
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v6

    move-object v7, v8

    goto :goto_8

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_3
    move-exception v6

    move-object v7, v8

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v6

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 127
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "jpegBytes":[B
    .restart local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v6

    move-object v7, v8

    goto :goto_3

    .end local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v6

    move-object v7, v8

    move-object v4, v5

    .end local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .local v4, "jpegStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v6

    move-object v4, v5

    .end local v5    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "jpegStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static create(Ljava/io/InputStream;)Lcom/oneplus/media/JfifImage;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 100
    new-instance v0, Lcom/oneplus/media/JfifImage;

    invoke-direct {v0}, Lcom/oneplus/media/JfifImage;-><init>()V

    .line 101
    .local v0, "image":Lcom/oneplus/media/JfifImage;
    invoke-direct {v0, p0}, Lcom/oneplus/media/JfifImage;->read(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return-object v0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unsupported input stream to create a Jfif image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private extractXMPSegment()V
    .locals 10

    .prologue
    .line 161
    iget-object v6, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "segment$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/media/JfifSegment;

    .line 163
    .local v3, "segment":Lcom/oneplus/media/JfifSegment;
    invoke-direct {p0, v3}, Lcom/oneplus/media/JfifImage;->isXMPSegment(Lcom/oneplus/media/JfifSegment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    iput-object v3, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    .line 169
    iget-object v6, v3, Lcom/oneplus/media/JfifSegment;->data:[B

    invoke-direct {p0, v6}, Lcom/oneplus/media/JfifImage;->findXMPContentEndIndex([B)I

    move-result v2

    .line 170
    .local v2, "endIndex":I
    sget v6, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    sub-int v6, v2, v6

    new-array v0, v6, [B

    .line 171
    .local v0, "buffer":[B
    iget-object v6, v3, Lcom/oneplus/media/JfifSegment;->data:[B

    sget v7, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v6, v7, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    .line 175
    .local v5, "xmp":Lcom/adobe/xmp/XMPMeta;
    new-instance v6, Lcom/oneplus/media/SimpleXMPContainer;

    invoke-direct {v6, v5}, Lcom/oneplus/media/SimpleXMPContainer;-><init>(Lcom/adobe/xmp/XMPMeta;)V

    iput-object v6, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v5    # "xmp":Lcom/adobe/xmp/XMPMeta;
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "extractXMPSegment() - Fail to extract XMP segment"

    invoke-static {v6, v7, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 158
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "endIndex":I
    .end local v3    # "segment":Lcom/oneplus/media/JfifSegment;
    :cond_1
    return-void
.end method

.method private findXMPContentEndIndex([B)I
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 192
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 194
    aget-byte v1, p1, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    .line 195
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 192
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 197
    :cond_1
    array-length v1, p1

    return v1
.end method

.method private isXMPSegment(Lcom/oneplus/media/JfifSegment;)Z
    .locals 7
    .param p1, "segment"    # Lcom/oneplus/media/JfifSegment;

    .prologue
    const/4 v6, 0x0

    .line 277
    if-nez p1, :cond_0

    .line 278
    return v6

    .line 279
    :cond_0
    iget-object v2, p1, Lcom/oneplus/media/JfifSegment;->data:[B

    array-length v2, v2

    sget v3, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    if-ge v2, v3, :cond_1

    .line 280
    return v6

    .line 285
    :cond_1
    :try_start_0
    sget v2, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    new-array v1, v2, [B

    .line 286
    .local v1, "header":[B
    iget-object v2, p1, Lcom/oneplus/media/JfifSegment;->data:[B

    sget v3, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    const/4 v2, 0x1

    return v2

    .line 291
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isXMPSegment() - Fail to check XMP segment"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return v6
.end method

.method private read(Ljava/io/InputStream;)Z
    .locals 13
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 305
    iget-boolean v9, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    if-eqz v9, :cond_0

    .line 306
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "JfifImage is closed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 309
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    .line 312
    const/4 v10, 0x0

    const/4 v7, 0x0

    .local v7, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_0
    new-instance v8, Lcom/oneplus/io/StreamState;

    invoke-direct {v8, p1}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .local v8, "streamState":Lcom/oneplus/io/StreamState;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v11, 0xff

    if-ne v9, v11, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v11, 0xd8

    if-eq v9, v11, :cond_5

    .line 317
    :cond_1
    sget-object v9, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "read() - Incorrect start of JFIF data"

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 318
    const/4 v9, 0x0

    .line 368
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 365
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Throwable;
    move-object v7, v8

    .line 366
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_1
    sget-object v9, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "read() - Parse failed"

    invoke-static {v9, v10, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    const/4 v9, 0x0

    return v9

    .line 368
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_1
    move-exception v10

    goto :goto_0

    .line 318
    :cond_3
    return v9

    .line 357
    .local v0, "c":I
    .local v4, "s1":I
    .local v5, "s2":I
    :cond_4
    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v3, v9, -0x2

    .line 358
    .local v3, "length":I
    :try_start_4
    new-array v1, v3, [B

    .line 359
    .local v1, "data":[B
    const/4 v9, 0x0

    invoke-virtual {p1, v1, v9, v3}, Ljava/io/InputStream;->read([BII)I

    .line 360
    new-instance v6, Lcom/oneplus/media/JfifSegment;

    invoke-direct {v6, v0, v1}, Lcom/oneplus/media/JfifSegment;-><init>(I[B)V

    .line 361
    .local v6, "segment":Lcom/oneplus/media/JfifSegment;
    iget-object v9, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v0    # "c":I
    .end local v1    # "data":[B
    .end local v3    # "length":I
    .end local v4    # "s1":I
    .end local v5    # "s2":I
    .end local v6    # "segment":Lcom/oneplus/media/JfifSegment;
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .restart local v0    # "c":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_12

    .line 325
    const/16 v9, 0xff

    if-eq v0, v9, :cond_8

    .line 327
    sget-object v9, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "read() - Incorrect start of segment"

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 328
    const/4 v9, 0x0

    .line 368
    if-eqz v8, :cond_6

    :try_start_5
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_2
    if-eqz v10, :cond_7

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v10

    goto :goto_2

    .line 328
    :cond_7
    return v9

    .line 332
    :cond_8
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v9, 0xff

    if-eq v0, v9, :cond_8

    .line 333
    const/4 v9, -0x1

    if-ne v0, v9, :cond_b

    .line 335
    sget-object v9, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "read() - Unexcepted EOF when reading segment"

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 336
    const/4 v9, 0x0

    .line 368
    if-eqz v8, :cond_9

    :try_start_8
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_9
    :goto_3
    if-eqz v10, :cond_a

    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catch_3
    move-exception v10

    goto :goto_3

    .line 336
    :cond_a
    return v9

    .line 340
    :cond_b
    const/16 v9, 0xda

    if-ne v0, v9, :cond_e

    .line 343
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v9

    add-int/lit8 v3, v9, -0x2

    .line 344
    .restart local v3    # "length":I
    new-array v9, v3, [B

    iput-object v9, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    .line 345
    iget-object v9, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v11, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 346
    const/4 v9, 0x1

    .line 368
    if-eqz v8, :cond_c

    :try_start_b
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_c
    :goto_4
    if-eqz v10, :cond_d

    :try_start_c
    throw v10
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :catch_4
    move-exception v10

    goto :goto_4

    .line 346
    :cond_d
    return v9

    .line 350
    .end local v3    # "length":I
    :cond_e
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 351
    .restart local v4    # "s1":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 352
    .restart local v5    # "s2":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_f

    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    .line 354
    :cond_f
    sget-object v9, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "read() - Invalid length bits in segment"

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 355
    const/4 v9, 0x0

    .line 368
    if-eqz v8, :cond_10

    :try_start_e
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    :cond_10
    :goto_5
    if-eqz v10, :cond_11

    :try_start_f
    throw v10
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    :catch_5
    move-exception v10

    goto :goto_5

    .line 355
    :cond_11
    return v9

    .line 368
    .end local v4    # "s1":I
    .end local v5    # "s2":I
    :cond_12
    if-eqz v8, :cond_13

    :try_start_10
    invoke-virtual {v8}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    :cond_13
    :goto_6
    if-eqz v10, :cond_17

    :try_start_11
    throw v10
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    :catch_6
    move-exception v10

    goto :goto_6

    .end local v0    # "c":I
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_7
    move-exception v9

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :goto_7
    :try_start_12
    throw v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_0
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_8
    if-eqz v7, :cond_14

    :try_start_13
    invoke-virtual {v7}, Lcom/oneplus/io/StreamState;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    :cond_14
    :goto_9
    if-eqz v10, :cond_16

    :try_start_14
    throw v10

    .line 365
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 368
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v11

    if-nez v10, :cond_15

    move-object v10, v11

    goto :goto_9

    :cond_15
    if-eq v10, v11, :cond_14

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_16
    throw v9
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    .line 371
    .restart local v0    # "c":I
    .restart local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :cond_17
    const/4 v9, 0x1

    return v9

    .line 368
    .end local v0    # "c":I
    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_1
    move-exception v9

    goto :goto_8

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .local v7, "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_8

    .end local v7    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v8    # "streamState":Lcom/oneplus/io/StreamState;
    :catch_a
    move-exception v9

    move-object v7, v8

    .end local v8    # "streamState":Lcom/oneplus/io/StreamState;
    .restart local v7    # "streamState":Lcom/oneplus/io/StreamState;
    goto :goto_7
.end method

.method private updateXMPSegment()V
    .locals 11

    .prologue
    const/16 v10, 0xe1

    const/4 v9, 0x0

    .line 451
    iget-object v7, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    if-eqz v7, :cond_0

    .line 453
    iget-object v7, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v7}, Lcom/oneplus/media/SimpleXMPContainer;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v5

    .line 454
    .local v5, "xmp":Lcom/adobe/xmp/XMPMeta;
    if-nez v5, :cond_1

    .line 455
    return-void

    .line 452
    .end local v5    # "xmp":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    return-void

    .line 458
    .restart local v5    # "xmp":Lcom/adobe/xmp/XMPMeta;
    :cond_1
    const/4 v0, 0x0

    .line 461
    .local v0, "buffer":[B
    :try_start_0
    new-instance v4, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 462
    .local v4, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 466
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 467
    invoke-static {v5, v4}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 473
    .end local v0    # "buffer":[B
    .end local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :goto_0
    if-eqz v0, :cond_2

    array-length v7, v0

    if-gtz v7, :cond_3

    .line 474
    :cond_2
    return-void

    .line 470
    .restart local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "serializeXMPMeta() - Error when serializing XMP"

    invoke-static {v7, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 475
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    array-length v7, v0

    const v8, 0xffde

    if-le v7, v8, :cond_4

    .line 478
    return-void

    .line 482
    :cond_4
    sget v7, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    array-length v8, v0

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 483
    .local v6, "xmpData":[B
    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    sget v8, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    sget v7, Lcom/oneplus/media/JfifImage;->XMP_HEADER_SIZE:I

    array-length v8, v0

    invoke-static {v0, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v3, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    .line 486
    .local v3, "oldXMPSegment":Lcom/oneplus/media/JfifSegment;
    new-instance v7, Lcom/oneplus/media/JfifSegment;

    invoke-direct {v7, v10, v6}, Lcom/oneplus/media/JfifSegment;-><init>(I[B)V

    iput-object v7, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    .line 489
    if-nez v3, :cond_5

    .line 491
    iget-object v7, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/media/JfifSegment;

    iget v7, v7, Lcom/oneplus/media/JfifSegment;->marker:I

    if-ne v7, v10, :cond_6

    const/4 v2, 0x1

    .line 492
    .local v2, "index":I
    :goto_1
    iget-object v7, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    iget-object v8, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    invoke-interface {v7, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 496
    .end local v2    # "index":I
    :cond_5
    iput-boolean v9, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    .line 448
    return-void

    .line 491
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "index":I
    goto :goto_1
.end method


# virtual methods
.method public clearXMPMeta()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0}, Lcom/oneplus/media/SimpleXMPContainer;->clearXMPMeta()V

    .line 60
    iput-object v2, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    .line 61
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iput-object v2, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    .line 68
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    .line 52
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-boolean v0, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    .line 84
    iput-object v1, p0, Lcom/oneplus/media/JfifImage;->m_XMPSegment:Lcom/oneplus/media/JfifSegment;

    .line 85
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0}, Lcom/oneplus/media/SimpleXMPContainer;->clearXMPMeta()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    .line 76
    return-void
.end method

.method public deleteProperty(Lcom/oneplus/media/XMPPropertyKey;)V
    .locals 1
    .param p1, "key"    # Lcom/oneplus/media/XMPPropertyKey;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 152
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/SimpleXMPContainer;->deleteProperty(Lcom/oneplus/media/XMPPropertyKey;)V

    .line 149
    return-void
.end method

.method public getCompressedImageData()[B
    .locals 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JfifImage is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/media/JfifSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JfifImage is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    return-object v0
.end method

.method public getXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/oneplus/media/JfifImage;->extractXMPSegment()V

    .line 233
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v0, :cond_0

    .line 234
    return-object v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0}, Lcom/oneplus/media/SimpleXMPContainer;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public getXMPProperty(Lcom/oneplus/media/XMPPropertyKey;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 2
    .param p1, "key"    # Lcom/oneplus/media/XMPPropertyKey;

    .prologue
    const/4 v1, 0x0

    .line 247
    if-nez p1, :cond_0

    .line 248
    return-object v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/oneplus/media/JfifImage;->extractXMPSegment()V

    .line 254
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v0, :cond_1

    .line 255
    return-object v1

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/SimpleXMPContainer;->getXMPProperty(Lcom/oneplus/media/XMPPropertyKey;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    return v0
.end method

.method public registerXMPNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "suggestedPrefix"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/media/SimpleXMPContainer;->registerXMPNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    .locals 2
    .param p1, "xmp"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v1, 0x1

    .line 387
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v0, :cond_1

    .line 389
    if-eqz p1, :cond_0

    .line 391
    new-instance v0, Lcom/oneplus/media/SimpleXMPContainer;

    invoke-direct {v0, p1}, Lcom/oneplus/media/SimpleXMPContainer;-><init>(Lcom/adobe/xmp/XMPMeta;)V

    iput-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    .line 392
    iput-boolean v1, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/SimpleXMPContainer;->replaceXMPMeta(Lcom/adobe/xmp/XMPMeta;)V

    .line 398
    iput-boolean v1, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    goto :goto_0
.end method

.method public save(Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/oneplus/media/JfifImage;->write(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/oneplus/media/XMPPropertyKey;
    .param p2, "propValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 416
    if-nez p1, :cond_0

    .line 417
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v1, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/oneplus/media/JfifImage;->extractXMPSegment()V

    .line 423
    iget-object v1, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    if-nez v1, :cond_1

    .line 424
    new-instance v1, Lcom/oneplus/media/SimpleXMPContainer;

    invoke-direct {v1, v2}, Lcom/oneplus/media/SimpleXMPContainer;-><init>(Lcom/adobe/xmp/XMPMeta;)V

    iput-object v1, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    .line 428
    :cond_1
    if-nez p2, :cond_2

    .line 430
    iget-object v1, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v1, p1}, Lcom/oneplus/media/SimpleXMPContainer;->deleteProperty(Lcom/oneplus/media/XMPPropertyKey;)V

    .line 431
    return-void

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v1, p1}, Lcom/oneplus/media/SimpleXMPContainer;->getXMPProperty(Lcom/oneplus/media/XMPPropertyKey;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 436
    .local v0, "property":Lcom/adobe/xmp/properties/XMPProperty;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    return-void

    .line 440
    :cond_3
    iget-object v1, p0, Lcom/oneplus/media/JfifImage;->m_SimpleXMPContainer:Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/media/SimpleXMPContainer;->setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/media/JfifImage;->m_IsXMPModified:Z

    .line 413
    return-void
.end method

.method public write(Ljava/io/OutputStream;)Z
    .locals 9
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v8, 0x0

    .line 507
    iget-boolean v6, p0, Lcom/oneplus/media/JfifImage;->m_IsClosed:Z

    if-eqz v6, :cond_0

    .line 508
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "JfifImage is closed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/media/JfifImage;->updateXMPSegment()V

    .line 517
    const/16 v6, 0xff

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 518
    const/16 v6, 0xd8

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 521
    iget-object v6, p0, Lcom/oneplus/media/JfifImage;->m_Segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "segment$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/media/JfifSegment;

    .line 523
    .local v4, "segment":Lcom/oneplus/media/JfifSegment;
    const/16 v6, 0xff

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 524
    iget v6, v4, Lcom/oneplus/media/JfifSegment;->marker:I

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 525
    iget-object v6, v4, Lcom/oneplus/media/JfifSegment;->data:[B

    array-length v6, v6

    add-int/lit8 v1, v6, 0x2

    .line 526
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 528
    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 529
    .local v2, "s1":I
    and-int/lit16 v3, v1, 0xff

    .line 530
    .local v3, "s2":I
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 531
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 533
    .end local v2    # "s1":I
    .end local v3    # "s2":I
    :cond_1
    iget-object v6, v4, Lcom/oneplus/media/JfifSegment;->data:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    .end local v1    # "length":I
    .end local v4    # "segment":Lcom/oneplus/media/JfifSegment;
    .end local v5    # "segment$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/oneplus/media/JfifImage;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "write() - Error to write image"

    invoke-static {v6, v7, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    return v8

    .line 537
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "segment$iterator":Ljava/util/Iterator;
    :cond_2
    const/16 v6, 0xff

    :try_start_1
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 538
    const/16 v6, 0xda

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 541
    iget-object v6, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    array-length v6, v6

    if-lez v6, :cond_3

    .line 542
    iget-object v6, p0, Lcom/oneplus/media/JfifImage;->m_CompressedImageData:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 545
    :cond_3
    const/16 v6, 0xff

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 546
    const/16 v6, 0xd9

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    const/4 v6, 0x1

    return v6
.end method
