.class public Landroid/support/v4/util/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 35
    invoke-direct {p0, v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 46
    if-eqz p1, :cond_0

    .line 50
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v0

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 55
    return-void

    .line 47
    :cond_0
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 48
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 143
    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 144
    iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 146
    :goto_0
    if-lt v1, v3, :cond_0

    .line 160
    iput-boolean v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 161
    iput v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 164
    return-void

    .line 147
    :cond_0
    aget-object v6, v5, v1

    .line 149
    sget-object v7, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    .line 146
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    if-ne v1, v0, :cond_2

    .line 156
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    aget v7, v4, v1

    aput v7, v4, v0

    .line 152
    aput-object v6, v5, v0

    const/4 v6, 0x0

    .line 153
    aput-object v6, v5, v1

    goto :goto_2
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 325
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-nez v0, :cond_2

    .line 330
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_3

    .line 334
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 335
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 349
    :goto_1
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 350
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 352
    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 326
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 327
    return-void

    .line 330
    :cond_3
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 331
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0

    .line 336
    :cond_4
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 338
    new-array v2, v1, [I

    .line 339
    new-array v1, v1, [Ljava/lang/Object;

    .line 342
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 346
    iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_1
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 309
    iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 310
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 312
    :goto_0
    if-lt v0, v2, :cond_0

    .line 316
    iput v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 317
    iput-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 318
    return-void

    :cond_0
    const/4 v4, 0x0

    .line 313
    aput-object v4, v3, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Landroid/support/v4/util/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 64
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v4/util/SparseArrayCompat;->clone()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 100
    if-gez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 87
    if-gez v0, :cond_1

    .line 88
    :cond_0
    return-object p2

    .line 87
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public indexOfKey(I)I
    .locals 2

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0

    .line 277
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v1, :cond_0

    .line 298
    :goto_0
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 302
    return v0

    .line 295
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_2
    return v0
.end method

.method public keyAt(I)I
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_0

    .line 240
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aget v0, v0, p1

    return v0

    .line 237
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 174
    if-gez v0, :cond_2

    .line 177
    xor-int/lit8 v0, v0, -0x1

    .line 179
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-lt v0, v1, :cond_3

    .line 185
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v1, :cond_4

    .line 192
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 206
    :goto_1
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 212
    :goto_2
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 213
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 214
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 216
    :goto_3
    return-void

    .line 175
    :cond_2
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_3

    .line 179
    :cond_3
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 181
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 182
    return-void

    .line 185
    :cond_4
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 186
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 189
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_5
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 195
    new-array v2, v1, [I

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 203
    iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public remove(I)V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->delete(I)V

    .line 113
    return-void
.end method

.method public removeAt(I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    goto :goto_0
.end method

.method public removeAtRange(II)V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    :goto_0
    if-lt p1, v0, :cond_0

    .line 136
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 133
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_0

    .line 267
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 268
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    return v0

    .line 224
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    mul-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :goto_0
    iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-lt v0, v2, :cond_1

    .line 383
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "{}"

    .line 364
    return-object v0

    .line 370
    :cond_1
    if-gtz v0, :cond_2

    .line 373
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 377
    if-ne v2, p0, :cond_3

    const-string/jumbo v2, "(this Map)"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ", "

    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 251
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    goto :goto_0
.end method
