.class final Lcom/oneplus/camera/ui/SecondLayerBarImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "SecondLayerBarImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/SecondLayerBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;
    }
.end annotation


# static fields
.field private static final DURATION_FADE_IN:J = 0x32L

.field private static final DURATION_FADE_IN_ITEMS:J = 0x12cL

.field private static final DURATION_FADE_OUT:J = 0x12cL

.field private static final DURATION_FADE_OUT_ITEMS:J = 0x64L


# instance fields
.field private m_BackgroundDrawable:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

.field private m_ItemListContainer:Landroid/widget/LinearLayout;

.field private m_ProgressBar:Landroid/widget/RelativeLayout;

.field private m_ProgressBarContainer:Landroid/widget/RelativeLayout;

.field private m_ProgressIcon:Landroid/widget/LinearLayout;

.field private m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/SecondLayerBarImpl;ZFFZ)V
    .locals 0
    .param p1, "isVisible"    # Z
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->updateVisibility(ZFFZ)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 77
    const-string/jumbo v0, "Second Layer Bar"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 75
    return-void
.end method

.method private updateVisibility(ZFFZ)V
    .locals 9
    .param p1, "isVisible"    # Z
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 283
    iget-object v2, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    const-wide/16 v4, 0x32

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 284
    if-eqz p1, :cond_4

    .line 286
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 289
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 294
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 304
    :cond_1
    :goto_1
    sget-object v1, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 307
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 309
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 310
    .local v0, "coords":[I
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 311
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v7, p2, v1

    .line 312
    .local v7, "localPivotX":F
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v8, p3, v1

    .line 313
    .local v8, "localPivotY":F
    if-eqz p1, :cond_6

    .line 314
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_BackgroundDrawable:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    invoke-virtual {v1, v7, v8, p4}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->expand(FFZ)V

    .line 280
    .end local v0    # "coords":[I
    .end local v7    # "localPivotX":F
    .end local v8    # "localPivotY":F
    :cond_2
    :goto_2
    return-void

    .line 283
    :cond_3
    const-wide/16 v4, 0x12c

    goto :goto_0

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 300
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 301
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 316
    .restart local v0    # "coords":[I
    .restart local v7    # "localPivotX":F
    .restart local v8    # "localPivotY":F
    :cond_6
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_BackgroundDrawable:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    invoke-virtual {v1, v7, v8, p4}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->collapse(FFZ)V

    goto :goto_2
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    .line 88
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 83
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 104
    .local v0, "cameraActivity":Lcom/oneplus/camera/OPCameraActivity;
    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    .line 105
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a010d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    .line 106
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a010e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    .line 107
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a010f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressIcon:Landroid/widget/LinearLayout;

    .line 108
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0110

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBar:Landroid/widget/RelativeLayout;

    .line 111
    new-instance v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    const/16 v2, 0x7f

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_BackgroundDrawable:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    .line 112
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_SecondLayoutBarContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_BackgroundDrawable:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SecondLayerBarImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$1;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 124
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SecondLayerBarImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$2;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 132
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SecondLayerBarImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$3;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 141
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SecondLayerBarImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$4;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 149
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/SecondLayerBarImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$5;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 157
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/SecondLayerBarImpl$6;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$6;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 167
    const-class v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 168
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/SecondLayerBarImpl$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$7;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 180
    :cond_0
    const-class v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 181
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_IS_CAPTURE_MODE_PANEL_OPEN:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/SecondLayerBarImpl$8;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$8;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;)V

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 96
    :cond_1
    return-void
.end method

.method public show(FFLjava/util/List;I)Lcom/oneplus/base/Handle;
    .locals 11
    .param p1, "pivotXOnScreen"    # F
    .param p2, "pivotYOnScreen"    # F
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Landroid/view/View;",
            ">(FF",
            "Ljava/util/List",
            "<TTValue;>;I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .local p3, "viewList":Ljava/util/List;, "Ljava/util/List<TTValue;>;"
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 199
    iget-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    iget-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 203
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 205
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .local v2, "innerContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    const v8, 0x7f020249

    invoke-virtual {v5, v8}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 212
    .local v3, "innerParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v5, Lcom/oneplus/camera/ui/SecondLayerBarImpl$9;

    invoke-direct {v5, p0, v0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$9;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 226
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 227
    iget-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 231
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "innerContainer":Landroid/widget/RelativeLayout;
    .end local v3    # "innerParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "param":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-direct {p0, v6, p1, p2, v5}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->updateVisibility(ZFFZ)V

    .line 233
    iget-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    invoke-static {v5, v6}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 234
    new-instance v5, Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    const-string/jumbo v6, ""

    invoke-direct {v5, p0, v6, p1, p2}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;Ljava/lang/String;FF)V

    iput-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    .line 236
    iget-object v5, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    return-object v5

    :cond_2
    move v5, v7

    .line 231
    goto :goto_1
.end method

.method public show(FFLjava/util/List;Landroid/widget/ProgressBar;I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "pivotXOnScreen"    # F
    .param p2, "pivotYOnScreen"    # F
    .param p4, "progressBar"    # Landroid/widget/ProgressBar;
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Landroid/view/View;",
            ">(FF",
            "Ljava/util/List",
            "<TTValue;>;",
            "Landroid/widget/ProgressBar;",
            "I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .local p3, "viewList":Ljava/util/List;, "Ljava/util/List<TTValue;>;"
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ItemListContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 247
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressIcon:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    invoke-virtual {p4}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p4}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "icon$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 254
    .local v0, "icon":Landroid/view/View;, "TTValue;"
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 260
    .end local v0    # "icon":Landroid/view/View;, "TTValue;"
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    .restart local v2    # "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090188

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 266
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 268
    .restart local v0    # "icon":Landroid/view/View;, "TTValue;"
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_ProgressIcon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 272
    .end local v0    # "icon":Landroid/view/View;, "TTValue;"
    :cond_3
    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    invoke-direct {p0, v4, p1, p2, v3}, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->updateVisibility(ZFFZ)V

    .line 274
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    invoke-static {v3, v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;I)Lcom/oneplus/base/Handle;

    .line 275
    new-instance v3, Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    const-string/jumbo v4, ""

    invoke-direct {v3, p0, v4, p1, p2}, Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;-><init>(Lcom/oneplus/camera/ui/SecondLayerBarImpl;Ljava/lang/String;FF)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    .line 277
    iget-object v3, p0, Lcom/oneplus/camera/ui/SecondLayerBarImpl;->m_CurrentHandle:Lcom/oneplus/camera/ui/SecondLayerBarImpl$LayerBarHandle;

    return-object v3

    :cond_4
    move v3, v5

    .line 272
    goto :goto_2
.end method
