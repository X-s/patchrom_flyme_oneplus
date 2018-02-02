.class final Lcom/oneplus/camera/ui/ViewfinderImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/Viewfinder;
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I = null

.field private static final MSG_RECREATE_DIRECT_OUTPUT_SURFACE:I = 0x2710

.field private static final USE_TEXTURE_VIEW:Z


# instance fields
.field private m_DirectOutputSurface:Landroid/view/Surface;

.field private m_DirectOutputSurfaceFormat:I

.field private m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

.field private m_DirectOutputSurfaceSize:Landroid/util/Size;

.field private m_DirectOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

.field private m_DirectOutputTextureView:Landroid/view/TextureView;

.field private m_IsDirectOutputSurfaceCreated:Z

.field private final m_OverlayRendererHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_OverlayView:Landroid/view/View;

.field private m_PreferredBounds:Landroid/graphics/RectF;

.field private m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

.field private m_ScreenSize:Landroid/util/Size;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ViewfinderImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/ViewfinderImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/ViewfinderImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/ViewfinderImpl;)Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->values()[Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->OPENGL:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->-com-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->createDirectOutputSurfaceView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewReceiverState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->initializeUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/ViewfinderImpl;III)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceCreated()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/ViewfinderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceDestroyed()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDrawOverlay(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/util/Size;)V
    .locals 0
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onPreviewSizeChanged(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/base/ScreenSize;Z)V
    .locals 0
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;
    .param p2, "isInit"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->removeRenderer(Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    const-string/jumbo v0, "Viewfinder"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    .line 55
    sget-object v0, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    iput-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    .line 56
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    .line 83
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 84
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 85
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 80
    return-void
.end method

.method private calculatePreviewBounds(Landroid/util/Size;Lcom/oneplus/base/Rotation;Landroid/util/Size;ZLandroid/graphics/RectF;)V
    .locals 16
    .param p1, "containerSize"    # Landroid/util/Size;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;
    .param p3, "previewSize"    # Landroid/util/Size;
    .param p4, "isScreen"    # Z
    .param p5, "result"    # Landroid/graphics/RectF;

    .prologue
    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 124
    new-instance v7, Landroid/util/Size;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-direct {v7, v14, v15}, Landroid/util/Size;-><init>(II)V

    .end local p3    # "previewSize":Landroid/util/Size;
    .local v7, "previewSize":Landroid/util/Size;
    move-object/from16 p3, v7

    .line 127
    .end local v7    # "previewSize":Landroid/util/Size;
    .restart local p3    # "previewSize":Landroid/util/Size;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v9, v14, v15

    .line 128
    .local v9, "ratioX":F
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v10, v14, v15

    .line 129
    .local v10, "ratioY":F
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 130
    .local v8, "ratio":F
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v6, v14

    .line 131
    .local v6, "newPreviewWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v5, v14

    .line 132
    .local v5, "newPreviewHeight":I
    const/4 v4, 0x0

    .line 133
    .local v4, "leftOffset":F
    const/4 v13, 0x0

    .line 134
    .local v13, "topOffset":F
    const/4 v11, 0x0

    .line 135
    .local v11, "rightOffset":F
    const/4 v1, 0x0

    .line 137
    .local v1, "bottomOffset":F
    if-eqz p4, :cond_7

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    div-int/lit8 v2, v14, 0x3

    .line 142
    .local v2, "centerX":I
    div-int/lit8 v14, v6, 0x2

    sub-int v14, v2, v14

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->left:F

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v14

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->top:F

    .line 144
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->left:F

    int-to-float v15, v6

    add-float/2addr v14, v15

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->right:F

    .line 145
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->top:F

    int-to-float v15, v5

    add-float/2addr v14, v15

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v14, :cond_1

    .line 148
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float v4, v14, v15

    .line 149
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    sub-float v13, v14, v15

    .line 150
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v11, v14, v15

    .line 151
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float v1, v14, v15

    .line 171
    .end local v2    # "centerX":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v14, :cond_3

    .line 173
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-lez v14, :cond_2

    const/4 v14, 0x0

    cmpl-float v14, v11, v14

    if-lez v14, :cond_2

    cmpg-float v14, v11, v4

    if-gtz v14, :cond_2

    .line 174
    neg-float v14, v11

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 176
    :cond_2
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-lez v14, :cond_3

    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_3

    cmpg-float v14, v1, v13

    if-gtz v14, :cond_3

    .line 177
    const/4 v14, 0x0

    neg-float v15, v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 120
    :cond_3
    :goto_1
    return-void

    .line 156
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 157
    .local v3, "centerY":F
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v14

    sub-int/2addr v14, v6

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->left:F

    .line 158
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    sub-float v12, v3, v14

    .line 159
    .local v12, "tempTop":F
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    cmpg-float v15, v12, v15

    if-gez v15, :cond_5

    const/4 v15, 0x0

    cmpl-float v15, v12, v15

    if-lez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v12, v15, Landroid/graphics/RectF;->top:F

    .end local v12    # "tempTop":F
    :cond_5
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->top:F

    .line 160
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->left:F

    int-to-float v15, v6

    add-float/2addr v14, v15

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->right:F

    .line 161
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->top:F

    int-to-float v15, v5

    add-float/2addr v14, v15

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    if-eqz v14, :cond_1

    .line 164
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float v4, v14, v15

    .line 165
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float v13, v14, v15

    .line 166
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    sub-float v11, v14, v15

    .line 167
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v14, v15

    goto/16 :goto_0

    .line 156
    .end local v3    # "centerY":F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    div-int/lit8 v14, v14, 0x3

    int-to-float v3, v14

    .restart local v3    # "centerY":F
    goto/16 :goto_2

    .line 182
    .end local v3    # "centerY":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v14

    sub-int/2addr v14, v6

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->left:F

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v14

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->top:F

    .line 184
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->left:F

    int-to-float v15, v6

    add-float/2addr v14, v15

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->right:F

    .line 185
    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/RectF;->top:F

    int-to-float v15, v5

    add-float/2addr v14, v15

    move-object/from16 v0, p5

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private createDirectOutputSurfaceView(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    move-object v2, p1

    .line 215
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v0, v2, Landroid/view/SurfaceView;

    .line 216
    .local v0, "hasBgSurfaceView":Z
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    :goto_0
    new-instance v2, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    .line 228
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 230
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$1;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 250
    if-eqz v0, :cond_1

    .line 252
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 253
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :goto_1
    return-void

    .line 224
    .restart local p1    # "rootView":Landroid/view/View;
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 256
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private initializeUI(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 294
    instance-of v2, p1, Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 295
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Activity root layout must be RelativeLayout."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, p1

    .line 298
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v0, v2, Landroid/view/SurfaceView;

    .line 338
    .local v0, "hasBgSurfaceView":Z
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->createDirectOutputSurfaceView(Landroid/view/View;)V

    .line 342
    new-instance v2, Lcom/oneplus/camera/ui/ViewfinderImpl$2;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl$2;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    .line 350
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1, v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds()V

    .line 291
    return-void

    .line 351
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDirectOutputSurfaceChanged(III)V
    .locals 6
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 477
    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDirectOutputSurfaceChanged() - Format : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    .line 481
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    .line 484
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-getcom-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 475
    :goto_0
    :pswitch_0
    return-void

    .line 488
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 489
    .local v2, "previewSize":Landroid/util/Size;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 490
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 491
    .local v1, "isFixedSizeNeeded":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v3, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewReceiverState()V

    goto :goto_0

    .line 490
    .end local v1    # "isFixedSizeNeeded":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 494
    .restart local v1    # "isFixedSizeNeeded":Z
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onDirectOutputSurfaceCreated()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectOutputSurfaceCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    .line 372
    return-void
.end method

.method private onDirectOutputSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectOutputSurfaceDestroyed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 367
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method private onDirectOutputSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 402
    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDirectOutputSurfaceTextureChanged() - Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    .line 408
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    .line 409
    .local v2, "oldSurface":Landroid/view/Surface;
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    .line 412
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-getcom-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 400
    :cond_0
    return-void

    .line 416
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 417
    .local v3, "previewSize":Landroid/util/Size;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 418
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_2

    sget-object v4, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 419
    .local v1, "isFixedSizeNeeded":Z
    :goto_1
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v4, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewReceiverState()V

    goto :goto_0

    .line 418
    .end local v1    # "isFixedSizeNeeded":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 422
    .restart local v1    # "isFixedSizeNeeded":Z
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onDirectOutputSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onDirectOutputSurfaceTextureCreated()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 389
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    .line 390
    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 391
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 392
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    .line 385
    :goto_1
    return-void

    .line 392
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDirectOutputSurfaceTextureCreated() - Configuration orientation is incorrect, update surface txture later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDirectOutputSurfaceTextureDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDirectOutputSurfaceTextureDestroyed()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 442
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 446
    iput-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurface:Landroid/view/Surface;

    .line 437
    :cond_0
    return-void
.end method

.method private onDrawOverlay(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 454
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    sget-object v2, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->obtain(Landroid/graphics/RectF;)Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    move-result-object v1

    .line 457
    .local v1, "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 458
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    iget-object v2, v2, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;->renderer:Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;

    invoke-interface {v2, p1, v1}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;->onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V

    .line 457
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;->recycle()V

    .line 452
    .end local v0    # "i":I
    .end local v1    # "params":Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;
    :cond_1
    return-void
.end method

.method private onPreviewSizeChanged(Landroid/util/Size;)V
    .locals 2
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    const/4 v1, 0x0

    .line 645
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreviewSizeChanged() - Change surface view to visible"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 655
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceSize(Landroid/util/Size;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds(Landroid/util/Size;)V

    .line 642
    return-void
.end method

.method private onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V
    .locals 4
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;
    .param p2, "isInit"    # Z

    .prologue
    .line 666
    if-nez p2, :cond_0

    .line 667
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScreenSizeChanged() - Changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->toSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    .line 674
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    .line 678
    .local v0, "containerSize":Landroid/util/Size;
    :goto_0
    sget-object v1, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 681
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds()V

    .line 663
    return-void

    .line 677
    .end local v0    # "containerSize":Landroid/util/Size;
    :cond_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .restart local v0    # "containerSize":Landroid/util/Size;
    goto :goto_0
.end method

.method private recreateDirectOutputSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 810
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "recreateDirectOutputSurface()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "recreateDirectOutputSurface()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 821
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 822
    .local v0, "rootView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 823
    iput-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    goto :goto_0
.end method

.method private removeRenderer(Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 834
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 830
    :cond_1
    return-void
.end method

.method private updateDirectOutputSurfaceSize(Landroid/util/Size;)V
    .locals 5
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 846
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 849
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_3

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 871
    .local v1, "isFixedSizeNeeded":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 873
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 874
    :cond_1
    iget v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V

    .line 844
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v1    # "isFixedSizeNeeded":Z
    :cond_2
    return-void

    .line 849
    .restart local v0    # "camera":Lcom/oneplus/camera/Camera;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateDirectOutputSurfaceTrxtureTransform(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 883
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 884
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 885
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 886
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 881
    return-void
.end method

.method private updatePreviewBounds()V
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updatePreviewBounds(Landroid/util/Size;)V

    .line 891
    return-void
.end method

.method private updatePreviewBounds(Landroid/util/Size;)V
    .locals 9
    .param p1, "previewSize"    # Landroid/util/Size;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 899
    :cond_0
    return-void

    .line 898
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 902
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 903
    .local v5, "previewBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_ScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/ui/ViewfinderImpl;->calculatePreviewBounds(Landroid/util/Size;Lcom/oneplus/base/Rotation;Landroid/util/Size;ZLandroid/graphics/RectF;)V

    .line 906
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 907
    invoke-direct {p0, v5}, Lcom/oneplus/camera/ui/ViewfinderImpl;->updateDirectOutputSurfaceTrxtureTransform(Landroid/graphics/RectF;)V

    .line 919
    :cond_2
    :goto_0
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 926
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->DIRECT:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_4

    .line 927
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    .line 926
    if-eqz v0, :cond_4

    .line 928
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    if-eqz v0, :cond_4

    .line 931
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 933
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 934
    .local v8, "previewWidth":I
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 941
    .local v7, "previewHeight":I
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 942
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 944
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePreviewBounds() - Target size is same as current surface size"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceFormat:I

    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onDirectOutputSurfaceChanged(III)V

    .line 895
    .end local v7    # "previewHeight":I
    .end local v8    # "previewWidth":I
    :cond_4
    return-void

    .line 908
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 911
    .local v6, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 912
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 913
    iget v0, v5, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 914
    iget v0, v5, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 915
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    goto/16 :goto_0

    .line 938
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 939
    .restart local v8    # "previewWidth":I
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v7

    .restart local v7    # "previewHeight":I
    goto :goto_1
.end method

.method private updatePreviewReceiverState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 958
    const/4 v2, 0x1

    .line 959
    .local v2, "isReceiverReady":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 960
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v6

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v5}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 966
    const/4 v2, 0x0

    .line 971
    :pswitch_0
    const/4 v4, 0x0

    .line 972
    .local v4, "receiver":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 973
    .local v3, "previewSize":Landroid/util/Size;
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-getcom-oneplus-camera-ui-Viewfinder$PreviewRenderingModeSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    invoke-virtual {v6}, Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 996
    .end local v4    # "receiver":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1000
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1001
    const/4 v2, 0x0

    .line 1011
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    .line 1012
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v4}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 955
    :goto_2
    return-void

    .line 976
    .restart local v4    # "receiver":Ljava/lang/Object;
    :pswitch_1
    iget-boolean v5, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_IsDirectOutputSurfaceCreated:Z

    if-nez v5, :cond_2

    .line 977
    const/4 v2, 0x0

    .line 987
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceHolder:Landroid/view/SurfaceHolder;

    goto :goto_0

    .line 980
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 981
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_3

    sget-object v5, Lcom/oneplus/camera/Camera;->PROP_IS_FIXED_SIZE_PREVIEW_RECEIVER_NEEDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v5}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 983
    :cond_3
    iget-object v5, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputSurfaceSize:Landroid/util/Size;

    invoke-virtual {v5, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 984
    const/4 v2, 0x0

    goto :goto_3

    .line 991
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    :pswitch_2
    const/4 v4, 0x0

    .line 992
    goto :goto_0

    .line 1005
    .end local v4    # "receiver":Ljava/lang/Object;
    :cond_4
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1006
    const/4 v2, 0x0

    goto :goto_1

    .line 1014
    :cond_5
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RECEIVER:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v7}, Lcom/oneplus/camera/ui/ViewfinderImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 973
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addRenderer(Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "renderer"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addRenderer() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v3

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addRenderer() - No renderer to add"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v3

    .line 109
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;)V

    .line 110
    .local v0, "handle":Lcom/oneplus/camera/ui/ViewfinderImpl$OverlayRendererHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayRendererHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 115
    :cond_2
    return-object v0
.end method

.method public copyDisplayPreviewFrame(Landroid/graphics/Bitmap;I)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 196
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "copyPreviewFrame() - No direct output TextureView"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v2

    .line 201
    :cond_0
    if-nez p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "copyPreviewFrame() - No bitmap to receive preview frame"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return v2

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_DirectOutputTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_IS_DISPLAY_PREVIEW_FRAME_COPY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    sget-object v0, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_RENDERING_MODE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreviewRenderingMode:Lcom/oneplus/camera/ui/Viewfinder$PreviewRenderingMode;

    return-object v0

    .line 269
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 284
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 275
    :goto_0
    return-void

    .line 280
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->recreateDirectOutputSurface()V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateCameraPreviewOverlay()V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->verifyAccess()V

    .line 469
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_OverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 466
    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 509
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 515
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 516
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 517
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 518
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ViewfinderImpl;->initializeUI(Landroid/view/View;)V

    .line 533
    :goto_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$4;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 541
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/ui/ViewfinderImpl;->onScreenSizeChanged(Lcom/oneplus/base/ScreenSize;Z)V

    .line 544
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$5;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 554
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$6;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 562
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$7;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/camera/ui/ViewfinderImpl$7;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;Lcom/oneplus/camera/CameraActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 506
    return-void

    .line 521
    :cond_0
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ViewfinderImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ViewfinderImpl$3;-><init>(Lcom/oneplus/camera/ui/ViewfinderImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method public pointFromPreview(FFLandroid/graphics/PointF;I)Z
    .locals 11
    .param p1, "previewX"    # F
    .param p2, "previewY"    # F
    .param p3, "result"    # Landroid/graphics/PointF;
    .param p4, "flags"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 691
    if-nez p3, :cond_0

    .line 692
    return v8

    .line 693
    :cond_0
    and-int/lit8 v7, p4, 0x1

    if-nez v7, :cond_3

    .line 695
    cmpg-float v7, p1, v9

    if-ltz v7, :cond_1

    cmpl-float v7, p1, v10

    if-lez v7, :cond_2

    .line 696
    :cond_1
    return v8

    .line 695
    :cond_2
    cmpg-float v7, p2, v9

    if-ltz v7, :cond_1

    cmpl-float v7, p2, v10

    if-gtz v7, :cond_1

    .line 700
    :cond_3
    sget-object v7, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 702
    .local v4, "previewBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 704
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 705
    .local v1, "containerWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 714
    .local v0, "containerHeight":F
    :goto_0
    mul-float v5, v1, p1

    .line 715
    .local v5, "x":F
    mul-float v6, v0, p2

    .line 718
    .local v6, "y":F
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 743
    :goto_1
    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v5

    iput v7, p3, Landroid/graphics/PointF;->x:F

    .line 744
    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v6

    iput v7, p3, Landroid/graphics/PointF;->y:F

    .line 745
    const/4 v7, 0x1

    return v7

    .line 709
    .end local v0    # "containerHeight":F
    .end local v1    # "containerWidth":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 710
    .restart local v1    # "containerWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    .restart local v0    # "containerHeight":F
    goto :goto_0

    .line 722
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    sub-float v2, v0, v6

    .line 723
    .local v2, "newX":F
    move v6, v5

    .line 724
    move v5, v2

    .line 725
    goto :goto_1

    .line 729
    .end local v2    # "newX":F
    :pswitch_1
    sub-float v3, v1, v5

    .line 730
    .local v3, "newY":F
    move v5, v6

    .line 731
    move v6, v3

    .line 732
    goto :goto_1

    .line 736
    .end local v3    # "newY":F
    :pswitch_2
    sub-float v5, v1, v5

    .line 737
    sub-float v6, v0, v6

    .line 738
    goto :goto_1

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pointToPreview(FFLandroid/graphics/PointF;I)Z
    .locals 7
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F
    .param p3, "result"    # Landroid/graphics/PointF;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 755
    if-nez p3, :cond_0

    .line 756
    return v6

    .line 759
    :cond_0
    sget-object v5, Lcom/oneplus/camera/ui/ViewfinderImpl;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/ViewfinderImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 760
    .local v4, "previewBounds":Landroid/graphics/RectF;
    and-int/lit8 v5, p4, 0x1

    if-nez v5, :cond_1

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 764
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 765
    .local v1, "containerWidth":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 766
    .local v0, "containerHeight":F
    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v5

    .line 767
    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v5

    .line 768
    invoke-static {}, Lcom/oneplus/camera/ui/ViewfinderImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 793
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ViewfinderImpl;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 795
    div-float v5, p1, v1

    iput v5, p3, Landroid/graphics/PointF;->x:F

    .line 796
    div-float v5, p2, v0

    iput v5, p3, Landroid/graphics/PointF;->y:F

    .line 803
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 761
    .end local v0    # "containerHeight":F
    .end local v1    # "containerWidth":F
    :cond_2
    return v6

    .line 772
    .restart local v0    # "containerHeight":F
    .restart local v1    # "containerWidth":F
    :pswitch_0
    sub-float v3, v1, p1

    .line 773
    .local v3, "newY":F
    move p1, p2

    .line 774
    move p2, v3

    .line 775
    goto :goto_0

    .line 779
    .end local v3    # "newY":F
    :pswitch_1
    sub-float v2, v0, p2

    .line 780
    .local v2, "newX":F
    move p2, p1

    .line 781
    move p1, v2

    .line 782
    goto :goto_0

    .line 786
    .end local v2    # "newX":F
    :pswitch_2
    sub-float p1, v1, p1

    .line 787
    sub-float p2, v0, p2

    .line 788
    goto :goto_0

    .line 800
    :cond_3
    div-float v5, p1, v0

    iput v5, p3, Landroid/graphics/PointF;->x:F

    .line 801
    div-float v5, p2, v1

    iput v5, p3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 768
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPreferredPreviewBounds(Landroid/graphics/RectF;I)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "flags"    # I

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/oneplus/camera/ui/ViewfinderImpl;->m_PreferredBounds:Landroid/graphics/RectF;

    .line 1018
    return-void
.end method
