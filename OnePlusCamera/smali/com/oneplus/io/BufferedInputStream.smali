.class public Lcom/oneplus/io/BufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "BufferedInputStream.java"


# instance fields
.field private final m_OwnsSourceStream:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "sourceStream"    # Ljava/io/InputStream;

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/io/BufferedInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0
    .param p1, "sourceStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "ownsSourceStream"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 34
    iput-boolean p3, p0, Lcom/oneplus/io/BufferedInputStream;->m_OwnsSourceStream:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "sourceStream"    # Ljava/io/InputStream;
    .param p2, "ownsSourceStream"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    iput-boolean p2, p0, Lcom/oneplus/io/BufferedInputStream;->m_OwnsSourceStream:Z

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/oneplus/io/BufferedInputStream;->m_OwnsSourceStream:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 56
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 52
    return-void
.end method
