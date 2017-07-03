.class public abstract Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;
.super Lcom/oneplus/gallery2/editor/PhotoEditorObject;
.source "PhotoEditorOverlay.java"


# static fields
.field public static final FLAG_PREVIEW:I = 0x1


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "hasHandler"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditorObject;-><init>(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method final drawOverlay(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "baseWidth"    # I
    .param p3, "baseHeight"    # I
    .param p4, "clipRect"    # Landroid/graphics/Rect;
    .param p5, "flags"    # I

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 44
    .local v0, "saveCount":I
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/oneplus/gallery2/editor/PhotoEditorOverlay;->onDrawOverlay(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1
.end method

.method protected abstract onDrawOverlay(Landroid/graphics/Canvas;IILandroid/graphics/Rect;I)V
.end method
