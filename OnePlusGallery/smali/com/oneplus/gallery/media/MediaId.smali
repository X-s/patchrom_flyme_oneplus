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
    .param p1, "id"    # J

    .prologue
    .line 16
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
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null string id is not acceptable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 33
    instance-of v2, p1, Lcom/oneplus/gallery/media/MediaId;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/oneplus/gallery/media/MediaId;

    .line 36
    .local v0, "target":Lcom/oneplus/gallery/media/MediaId;
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaId;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaId;->getLongId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/gallery/media/MediaId;->m_LongId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 47
    .end local v0    # "target":Lcom/oneplus/gallery/media/MediaId;
    :cond_0
    :goto_0
    return v1

    .line 43
    .restart local v0    # "target":Lcom/oneplus/gallery/media/MediaId;
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaId;->getStringId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    .end local v0    # "target":Lcom/oneplus/gallery/media/MediaId;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
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

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaId;->m_StringId:Ljava/lang/String;

    return-object v0
.end method
