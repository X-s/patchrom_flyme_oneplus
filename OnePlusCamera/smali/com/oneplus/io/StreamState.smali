.class public Lcom/oneplus/io/StreamState;
.super Ljava/lang/Object;
.source "StreamState.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private m_IsFileInputStream:Z

.field private m_SavedStreamPosition:J

.field private final m_Stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/oneplus/io/StreamState;-><init>(Ljava/io/InputStream;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oneplus/io/StreamState;->m_Stream:Ljava/io/InputStream;

    .line 23
    instance-of v0, p1, Ljava/io/FileInputStream;

    iput-boolean v0, p0, Lcom/oneplus/io/StreamState;->m_IsFileInputStream:Z

    .line 24
    iget-boolean v0, p0, Lcom/oneplus/io/StreamState;->m_IsFileInputStream:Z

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Ljava/io/FileInputStream;

    .end local p1    # "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/io/StreamState;->m_SavedStreamPosition:J

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 26
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/oneplus/io/StreamState;->m_IsFileInputStream:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oneplus/io/StreamState;->m_Stream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/io/StreamState;->m_SavedStreamPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 35
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oneplus/io/StreamState;->m_Stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0
.end method

.method public getSavedStreamPosition()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/oneplus/io/StreamState;->m_SavedStreamPosition:J

    return-wide v0
.end method
