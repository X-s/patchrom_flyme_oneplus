.class public Lcom/oem/debug/ASSERTComparisonCompactor;
.super Ljava/lang/Object;
.source "ASSERTComparisonCompactor.java"


# static fields
.field private static final DELTA_END:Ljava/lang/String; = "]"

.field private static final DELTA_START:Ljava/lang/String; = "["

.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private fActual:Ljava/lang/String;

.field private fContextLength:I

.field private fExpected:Ljava/lang/String;

.field private fPrefix:I

.field private fSuffix:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextLength"    # I
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fContextLength:I

    .line 22
    iput-object p2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private areStringsEqual()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private compactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fSuffix:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "]"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    if-lez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->computeCommonPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    iget v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fSuffix:I

    if-lez v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->computeCommonSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    return-object v0
.end method

.method private computeCommonPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fContextLength:I

    if-le v0, v2, :cond_0

    const-string/jumbo v0, "..."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    iget v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fContextLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private computeCommonSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fSuffix:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fContextLength:I

    add-int/2addr v1, v2

    .line 89
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 91
    .local v0, "end":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fSuffix:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    iget-object v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fSuffix:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 93
    iget v4, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fContextLength:I

    .line 92
    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 93
    const-string/jumbo v1, "..."

    .line 91
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private findCommonPrefix()V
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    .line 59
    iget-object v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 61
    .local v0, "end":I
    :goto_0
    iget v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    if-ge v1, v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    iget v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 56
    :cond_0
    return-void

    .line 61
    :cond_1
    iget v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    goto :goto_0
.end method

.method private findCommonSuffix()V
    .locals 4

    .prologue
    .line 69
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 70
    .local v1, "expectedSuffix":I
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 72
    .local v0, "actualSuffix":I
    :goto_0
    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fPrefix:I

    if-lt v1, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fSuffix:I

    .line 68
    return-void

    .line 73
    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v3, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/oem/debug/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->areStringsEqual()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->findCommonPrefix()V

    .line 32
    invoke-direct {p0}, Lcom/oem/debug/ASSERTComparisonCompactor;->findCommonSuffix()V

    .line 34
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oem/debug/ASSERTComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "expected":Ljava/lang/String;
    iget-object v2, p0, Lcom/oem/debug/ASSERTComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oem/debug/ASSERTComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "actual":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/oem/debug/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
