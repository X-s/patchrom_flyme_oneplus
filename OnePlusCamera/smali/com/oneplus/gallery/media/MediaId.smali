.class public Lcom/oneplus/gallery/media/MediaId;
.super Ljava/lang/Object;
.source "MediaId.java"


# static fields
.field private static final INVALID_ID:J = -0x1L


# instance fields
.field private final m_LongId:J

.field private final m_StringId:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    .line 18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    .line 24
    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    .line 26
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null string id is not acceptable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    instance-of v0, p1, Lcom/oneplus/gallery/media/MediaId;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    return v4

    .line 35
    :cond_1
    check-cast p1, Lcom/oneplus/gallery/media/MediaId;

    .line 36
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaId;->isNumber()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaId;->getStringId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return v5

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/gallery/media/MediaId;->getLongId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    return v5
.end method

.method public getLongId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    return-wide v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNumber()Z
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    return-object v0
.end method
