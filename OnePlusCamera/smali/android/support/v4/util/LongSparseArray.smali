.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

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

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 55
    invoke-direct {p0, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 66
    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v0

    .line 71
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 74
    :goto_0
    iput v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 75
    return-void

    .line 67
    :cond_0
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 68
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 148
    iget v3, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 150
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 151
    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 153
    :goto_0
    if-lt v1, v3, :cond_0

    .line 167
    iput-boolean v2, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 168
    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 171
    return-void

    .line 154
    :cond_0
    aget-object v6, v5, v1

    .line 156
    sget-object v7, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    if-ne v1, v0, :cond_2

    .line 163
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    aget-wide v8, v4, v1

    aput-wide v8, v4, v0

    .line 159
    aput-object v6, v5, v0

    const/4 v6, 0x0

    .line 160
    aput-object v6, v5, v1

    goto :goto_2
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 330
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-nez v0, :cond_2

    .line 335
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v0, :cond_4

    .line 339
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 340
    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 354
    :goto_1
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 355
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 357
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v0, v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 332
    return-void

    :cond_3
    move v0, v1

    .line 330
    goto :goto_2

    .line 335
    :cond_4
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 336
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    goto :goto_0

    .line 341
    :cond_5
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v2

    .line 343
    new-array v3, v2, [J

    .line 344
    new-array v2, v2, [Ljava/lang/Object;

    .line 347
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iput-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 351
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 314
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 315
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v0, v1

    .line 317
    :goto_0
    if-lt v0, v2, :cond_0

    .line 321
    iput v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 322
    iput-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 323
    return-void

    :cond_0
    const/4 v4, 0x0

    .line 318
    aput-object v4, v3, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/LongSparseArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 84
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_0
    return-object v0

    .line 87
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
    .line 43
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 120
    if-gez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    goto :goto_0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 107
    if-gez v0, :cond_1

    .line 108
    :cond_0
    return-object p3

    .line 107
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public indexOfKey(J)I
    .locals 3

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 287
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0

    .line 284
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

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

    .line 299
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v1, :cond_0

    .line 303
    :goto_0
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 307
    return v0

    .line 300
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_2
    return v0
.end method

.method public keyAt(I)J
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 244
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    goto :goto_0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 181
    if-gez v0, :cond_2

    .line 184
    xor-int/lit8 v0, v0, -0x1

    .line 186
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-lt v0, v1, :cond_3

    .line 192
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v1, :cond_4

    .line 199
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 213
    :goto_1
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 219
    :goto_2
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 220
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 221
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 223
    :goto_3
    return-void

    .line 182
    :cond_2
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_3

    .line 186
    :cond_3
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 188
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 189
    return-void

    .line 192
    :cond_4
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 193
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 196
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    :cond_5
    iget v1, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealLongArraySize(I)I

    move-result v1

    .line 202
    new-array v2, v1, [J

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v3, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 210
    iput-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_1

    .line 215
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v1, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public remove(J)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 133
    return-void
.end method

.method public removeAt(I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

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
    .line 270
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 274
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 275
    return-void

    .line 271
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 234
    :goto_0
    iget v0, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    return v0

    .line 231
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    mul-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    :goto_0
    iget v2, p0, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-lt v0, v2, :cond_1

    .line 388
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "{}"

    .line 369
    return-object v0

    .line 375
    :cond_1
    if-gtz v0, :cond_2

    .line 378
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 379
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 382
    if-ne v2, p0, :cond_3

    const-string/jumbo v2, "(this Map)"

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ", "

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 383
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
    .line 257
    iget-boolean v0, p0, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-nez v0, :cond_0

    .line 261
    :goto_0
    iget-object v0, p0, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 258
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;->gc()V

    goto :goto_0
.end method
