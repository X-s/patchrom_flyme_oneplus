.class public Lcom/oneplus/media/LookupTable;
.super Ljava/lang/Object;
.source "LookupTable.java"


# instance fields
.field private final m_Table:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    aput v0, v1, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/media/LookupTable;)V
    .locals 4
    .param p1, "table"    # Lcom/oneplus/media/LookupTable;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/oneplus/media/LookupTable;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    .line 28
    iget-object v1, p1, Lcom/oneplus/media/LookupTable;->m_Table:[I

    .line 29
    .local v1, "tableArr":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public array()[I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    return-object v0
.end method

.method public concat(Lcom/oneplus/media/LookupTable;)Lcom/oneplus/media/LookupTable;
    .locals 6
    .param p1, "table"    # Lcom/oneplus/media/LookupTable;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v4, v4

    invoke-virtual {p1}, Lcom/oneplus/media/LookupTable;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 52
    :cond_0
    return-object p0

    .line 53
    :cond_1
    iget-object v3, p1, Lcom/oneplus/media/LookupTable;->m_Table:[I

    .line 54
    .local v3, "tableArr":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 56
    iget-object v4, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    aget v1, v4, v0

    .line 57
    .local v1, "input":I
    if-gez v1, :cond_4

    .line 58
    const/4 v1, 0x0

    .line 61
    :cond_2
    :goto_1
    aget v2, v3, v1

    .line 62
    .local v2, "output":I
    if-gez v2, :cond_5

    .line 63
    const/4 v2, 0x0

    .line 66
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    aput v2, v4, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "output":I
    :cond_4
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_2

    .line 60
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    .line 64
    .restart local v2    # "output":I
    :cond_5
    iget-object v4, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_3

    .line 65
    iget-object v4, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 68
    .end local v1    # "input":I
    .end local v2    # "output":I
    :cond_6
    return-object p0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    aput v0, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/media/LookupTable;->m_Table:[I

    array-length v0, v0

    return v0
.end method
