.class Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmulatorDisplayOverlay"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "zOrder"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    .line 52
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 54
    const/4 v7, 0x0

    .line 61
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "EmulatorDisplayOverlay"

    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_1
    invoke-virtual {p2}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 65
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 67
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 73
    const v1, 0x10802bd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void

    .line 69
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private drawIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 78
    iget-boolean v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 83
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .local v1, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 86
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_1
    if-eqz v0, :cond_0

    .line 93
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 96
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 88
    .end local v2    # "size":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 87
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method positionSurface(III)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    if-ne v0, p3, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 122
    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 124
    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 125
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    .line 109
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    .line 110
    if-eqz p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_0
.end method
