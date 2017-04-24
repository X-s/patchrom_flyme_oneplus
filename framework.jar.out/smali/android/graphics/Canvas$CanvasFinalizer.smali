.class final Landroid/graphics/Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private mNativeCanvasWrapper:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeCanvas"    # J

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    .line 96
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    iget-wide v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    iget-wide v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    # invokes: Landroid/graphics/Canvas;->finalizer(J)V
    invoke-static {v0, v1}, Landroid/graphics/Canvas;->access$000(J)V

    .line 110
    iput-wide v2, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvasWrapper:J

    .line 112
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas$CanvasFinalizer;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
