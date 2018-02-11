.class public final Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    .line 47
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-eq p1, p0, :cond_1

    .line 53
    instance-of v2, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    if-eqz v2, :cond_2

    .line 55
    check-cast p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 56
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    if-eq v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    .line 52
    :cond_1
    return v0

    .line 53
    :cond_2
    return v1

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v3, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 62
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v1, v0, 0x20f

    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 66
    return v1

    .line 64
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
