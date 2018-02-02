.class public Lcom/oneplus/media/IsoBaseMediaMovieHeader;
.super Lcom/oneplus/media/IsoBaseMediaBox;
.source "IsoBaseMediaMovieHeader.java"


# instance fields
.field private final m_CreationTime:J

.field private final m_Duration:J


# direct methods
.method public constructor <init>([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const-wide v6, 0x1e4b046c800L

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 21
    invoke-direct {p0, p1, v4}, Lcom/oneplus/media/IsoBaseMediaBox;-><init>([BZ)V

    .line 25
    invoke-virtual {p0}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getVersion()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 27
    invoke-static {p1, v5}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getLong([BI)J

    move-result-wide v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->m_CreationTime:J

    .line 29
    const/16 v0, 0x14

    .line 39
    .local v0, "baseOffset":I
    :goto_0
    invoke-static {p1, v0}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getInteger([BI)I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v2, v6, v4

    .line 40
    .local v2, "timeScale":D
    add-int/lit8 v1, v0, 0x4

    invoke-static {p1, v1}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getUInteger([BI)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->m_Duration:J

    .line 18
    return-void

    .line 33
    .end local v0    # "baseOffset":I
    .end local v2    # "timeScale":D
    :cond_0
    invoke-static {p1, v5}, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->getUInteger([BI)J

    move-result-wide v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->m_CreationTime:J

    .line 35
    const/16 v0, 0xc

    .restart local v0    # "baseOffset":I
    goto :goto_0
.end method


# virtual methods
.method public final getCreationTime()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->m_CreationTime:J

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/oneplus/media/IsoBaseMediaMovieHeader;->m_Duration:J

    return-wide v0
.end method
