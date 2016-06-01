.class final Lcom/oneplus/tuner/providers/Cursors$CursorIterator;
.super Ljava/lang/Object;
.source "Cursors.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/providers/Cursors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CursorIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mNextPosition:I

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mCursor:Landroid/database/Cursor;

    .line 63
    invoke-static {p1}, Lcom/oneplus/tuner/providers/Cursors;->size(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mSize:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mNextPosition:I

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized hasNext()Z
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mNextPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mNextPosition:I

    iget v1, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mNextPosition:I

    iget v1, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mSize:I

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 76
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mNextPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mNextPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 77
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oneplus/tuner/providers/Cursors$CursorIterator;->next()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cursor may not be removed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
