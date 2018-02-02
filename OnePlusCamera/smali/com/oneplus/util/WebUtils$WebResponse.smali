.class public Lcom/oneplus/util/WebUtils$WebResponse;
.super Ljava/lang/Object;
.source "WebUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/WebUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebResponse"
.end annotation


# instance fields
.field private final m_ContentType:Ljava/lang/String;

.field private final m_Data:[B

.field private final m_ErrorData:[B

.field private final m_HttpStatus:I

.field private m_IsCanceled:Z


# direct methods
.method private constructor <init>([B[BLjava/lang/String;IZ)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "error"    # [B
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "isCanceled"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_ErrorData:[B

    .line 41
    iput-object p1, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_Data:[B

    .line 42
    iput-object p3, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_ContentType:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_HttpStatus:I

    .line 44
    iput-boolean p5, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_IsCanceled:Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>([B[BLjava/lang/String;IZLcom/oneplus/util/WebUtils$WebResponse;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "error"    # [B
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "isCanceled"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/util/WebUtils$WebResponse;-><init>([B[BLjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_ContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v2, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_Data:[B

    if-nez v2, :cond_0

    .line 66
    return-object v4

    .line 71
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_Data:[B

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 72
    .local v0, "decodedResponse":Ljava/lang/String;
    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    return-object v0

    .line 78
    .end local v0    # "decodedResponse":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/oneplus/util/WebUtils;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getDecodedString() - Error to decode"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-object v4
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v1, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_ErrorData:[B

    if-nez v1, :cond_0

    .line 93
    return-object v4

    .line 98
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_ErrorData:[B

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/oneplus/util/WebUtils;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getErrorMessage() - Unsupported string format"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-object v4
.end method

.method public getHttpStatus()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_HttpStatus:I

    return v0
.end method

.method public getRawResponse()[B
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_Data:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v1, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_Data:[B

    if-nez v1, :cond_0

    .line 136
    return-object v4

    .line 141
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_Data:[B

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/oneplus/util/WebUtils;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getString() - Unsupported string format"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-object v4
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/oneplus/util/WebUtils$WebResponse;->m_IsCanceled:Z

    return v0
.end method
