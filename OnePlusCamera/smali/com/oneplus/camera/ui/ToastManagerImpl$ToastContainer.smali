.class final Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;
.super Landroid/widget/FrameLayout;
.source "ToastManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ToastManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToastContainer"
.end annotation


# instance fields
.field private final m_ActivityRotation:Lcom/oneplus/base/Rotation;

.field private m_Rotation:Lcom/oneplus/base/Rotation;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    .line 63
    iput-object p2, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 64
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v1, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v2

    sub-int v0, v1, v2

    .line 70
    .local v0, "orientationDiff":I
    if-gez v0, :cond_0

    .line 71
    add-int/lit16 v0, v0, 0x168

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 74
    sparse-switch v0, :sswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    return-void

    .line 77
    :sswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 83
    :sswitch_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->m_ActivityRotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 95
    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastContainer;->setMeasuredDimension(II)V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method
