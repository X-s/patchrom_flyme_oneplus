.class Lcom/google/tagmanager/TypedNumber;
.super Ljava/lang/Number;
.source "TypedNumber.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/tagmanager/TypedNumber;",
        ">;"
    }
.end annotation


# instance fields
.field private mDouble:D

.field private mInt64:J

.field private mIsInt64:Z


# direct methods
.method private constructor <init>(D)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/google/tagmanager/TypedNumber;->mDouble:D

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/TypedNumber;->mIsInt64:Z

    .line 14
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/google/tagmanager/TypedNumber;->mInt64:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/TypedNumber;->mIsInt64:Z

    .line 19
    return-void
.end method

.method public static numberWithDouble(Ljava/lang/Double;)Lcom/google/tagmanager/TypedNumber;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/tagmanager/TypedNumber;-><init>(D)V

    return-object v0
.end method

.method public static numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/tagmanager/TypedNumber;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/TypedNumber;-><init>(J)V

    return-object v0
.end method

.method public static numberWithString(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lcom/google/tagmanager/TypedNumber;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/tagmanager/TypedNumber;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    new-instance v0, Lcom/google/tagmanager/TypedNumber;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/tagmanager/TypedNumber;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 57
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid TypedNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Lcom/google/tagmanager/TypedNumber;)I
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/google/tagmanager/TypedNumber;->mInt64:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-wide v2, p1, Lcom/google/tagmanager/TypedNumber;->mInt64:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/TypedNumber;->compareTo(Lcom/google/tagmanager/TypedNumber;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/tagmanager/TypedNumber;->mDouble:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/tagmanager/TypedNumber;->mInt64:J

    long-to-double v0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    instance-of v1, p1, Lcom/google/tagmanager/TypedNumber;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/tagmanager/TypedNumber;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/TypedNumber;->compareTo(Lcom/google/tagmanager/TypedNumber;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public int16Value()S
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public int32Value()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public int64Value()J
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/tagmanager/TypedNumber;->mDouble:D

    double-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/tagmanager/TypedNumber;->mInt64:J

    goto :goto_0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->int32Value()I

    move-result v0

    return v0
.end method

.method public isDouble()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInt64()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/tagmanager/TypedNumber;->mIsInt64:Z

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->int64Value()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->int16Value()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/tagmanager/TypedNumber;->mDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/tagmanager/TypedNumber;->mInt64:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
