.class public abstract Lcom/oneplus/camera/UIComponent;
.super Lcom/oneplus/camera/CameraComponent;
.source "UIComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/UIComponent$1;,
        Lcom/oneplus/camera/UIComponent$2;,
        Lcom/oneplus/camera/UIComponent$3;,
        Lcom/oneplus/camera/UIComponent$ViewRotationCallback;
    }
.end annotation


# static fields
.field public static final DURATION_FADE_IN:J = 0x258L

.field public static final DURATION_FADE_OUT:J = 0x12cL

.field public static final DURATION_HIDE_NAVIGATION_BAR:J

.field public static final DURATION_ROTATION:J = 0x258L

.field public static final DURATION_SHOW_NAVIGATION_BAR:J

.field public static final INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

.field public static final INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

.field public static final INTERPOLATOR_HIDE_NAVIGATION_BAR:Landroid/view/animation/Interpolator;

.field public static final INTERPOLATOR_ROTATION:Landroid/view/animation/Interpolator;

.field public static final INTERPOLATOR_SHOW_NAVIGATION_BAR:Landroid/view/animation/Interpolator;


# instance fields
.field private m_AutoRotateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CaptureUIEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_NavBarAlignedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_Rotation:Lcom/oneplus/base/Rotation;

.field private final m_RotationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/base/Rotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Lcom/oneplus/camera/UIComponent;Lcom/oneplus/base/PropertyChangedCallback;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/UIComponent;Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/UIComponent;->onNavBarVisibilityChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x15e

    .line 56
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_ROTATION:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_SHOW_NAVIGATION_BAR:Landroid/view/animation/Interpolator;

    .line 64
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_HIDE_NAVIGATION_BAR:Landroid/view/animation/Interpolator;

    .line 118
    sput-wide v6, Lcom/oneplus/camera/UIComponent;->DURATION_SHOW_NAVIGATION_BAR:J

    .line 119
    sput-wide v6, Lcom/oneplus/camera/UIComponent;->DURATION_HIDE_NAVIGATION_BAR:J

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p3, "hasHandler"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;ZZ)V

    .line 129
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;ZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p3, "hasHandler"    # Z
    .param p4, "hasAsyncHandler"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;ZZ)V

    .line 70
    sget-object v0, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 74
    new-instance v0, Lcom/oneplus/camera/UIComponent$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/UIComponent$1;-><init>(Lcom/oneplus/camera/UIComponent;)V

    iput-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_CaptureUIEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 83
    new-instance v0, Lcom/oneplus/camera/UIComponent$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/UIComponent$2;-><init>(Lcom/oneplus/camera/UIComponent;)V

    iput-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 91
    new-instance v0, Lcom/oneplus/camera/UIComponent$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/UIComponent$3;-><init>(Lcom/oneplus/camera/UIComponent;)V

    iput-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_RotationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 142
    return-void
.end method

.method private onNavBarVisibilityChanged(Z)V
    .locals 5
    .param p1, "isVisible"    # Z

    .prologue
    .line 279
    iget-object v4, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v1

    .line 282
    .local v1, "isPortrait":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v2

    .line 283
    .local v2, "navBarSize":I
    iget-object v4, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 285
    iget-object v4, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 286
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/oneplus/camera/UIComponent;->onNavBarVisibilityChanged(ZLandroid/view/View;ZI)V

    .line 283
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 277
    .end local v0    # "i":I
    .end local v1    # "isPortrait":Z
    .end local v2    # "navBarSize":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onNavBarVisibilityChanged(ZLandroid/view/View;ZI)V
    .locals 0
    .param p1, "isVisible"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isPortraitActivity"    # Z
    .param p4, "navBarSize"    # I

    .prologue
    .line 293
    return-void
.end method


# virtual methods
.method protected addAutoRotateView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->verifyAccess()V

    .line 155
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_Rotation:Lcom/oneplus/base/Rotation;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/oneplus/camera/UIComponent;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;J)V

    .line 152
    return-void
.end method

.method protected addNavBarAlignedView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->verifyAccess()V

    .line 169
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivityRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v1

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/oneplus/camera/UIComponent;->onNavBarVisibilityChanged(ZLandroid/view/View;ZI)V

    .line 166
    :cond_2
    return-void
.end method

.method protected final getCameraActivityRotation()Lcom/oneplus/base/Rotation;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method protected final getRotation()Lcom/oneplus/base/Rotation;
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method protected final isCameraThreadStarted()Z
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final isCaptureUIEnabled()Z
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onCameraThreadStarted()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method protected onCaptureUIEnabledStateChanged(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 272
    return-void
.end method

.method protected onDeinitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 204
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_CaptureUIEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 205
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_RotationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 206
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 209
    iput-object v3, p0, Lcom/oneplus/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 211
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 201
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 241
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAPTURE_UI_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_CaptureUIEnabledChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 242
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_RotationChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 243
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Lcom/oneplus/camera/UIComponent$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/UIComponent$4;-><init>(Lcom/oneplus/camera/UIComponent;)V

    iput-object v1, p0, Lcom/oneplus/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 255
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/UIComponent;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 237
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 343
    iput-object p2, p0, Lcom/oneplus/camera/UIComponent;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 344
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/camera/UIComponent;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;)V

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected removeAutoRotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->verifyAccess()V

    .line 359
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_AutoRotateViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    return-void
.end method

.method protected removeNavBarAlignedView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->verifyAccess()V

    .line 371
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarAlignedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 368
    :cond_0
    return-void

    .line 372
    :cond_1
    return-void
.end method

.method protected rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .prologue
    .line 384
    const-wide/16 v0, 0x258

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/camera/UIComponent;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 382
    return-void
.end method

.method protected rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V
    .locals 2
    .param p1, "layout"    # Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .param p2, "duration"    # J

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/UIComponent;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 404
    return-void
.end method

.method protected rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V
    .locals 14
    .param p1, "layout"    # Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .param p2, "duration"    # J
    .param p4, "callback"    # Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 421
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getLayoutRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 422
    return-void

    .line 424
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 425
    const-wide/16 v2, 0x2

    div-long v4, p2, v2

    .line 426
    .local v4, "halfDuration":J
    sget-object v12, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/oneplus/camera/UIComponent$5;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/camera/UIComponent$5;-><init>(Lcom/oneplus/camera/UIComponent;Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p1

    move-wide v10, v4

    move-object v13, v1

    invoke-virtual/range {v7 .. v13}, Lcom/oneplus/camera/UIComponent;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 416
    .end local v4    # "halfDuration":J
    :goto_0
    return-void

    .line 440
    :cond_2
    invoke-virtual {p1, v0}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    goto :goto_0
.end method

.method protected rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;Lcom/oneplus/camera/UIComponent$ViewRotationCallback;)V
    .locals 2
    .param p1, "layout"    # Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .param p2, "callback"    # Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    .prologue
    .line 395
    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oneplus/camera/UIComponent;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 393
    return-void
.end method

.method protected rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 452
    sget-object v6, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_ROTATION:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0x258

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/UIComponent;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;JLandroid/view/animation/Interpolator;)V

    .line 450
    return-void
.end method

.method protected rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;J)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toRotation"    # Lcom/oneplus/base/Rotation;
    .param p3, "duration"    # J

    .prologue
    .line 464
    sget-object v6, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_ROTATION:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/UIComponent;->rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;JLandroid/view/animation/Interpolator;)V

    .line 462
    return-void
.end method

.method protected rotateView(Landroid/view/View;Lcom/oneplus/base/Rotation;JLandroid/view/animation/Interpolator;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toRotation"    # Lcom/oneplus/base/Rotation;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    .line 477
    if-nez p1, :cond_0

    .line 478
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/UIComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_ACTIVITY_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Rotation;

    .line 480
    .local v0, "baseRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    .line 481
    .local v1, "fromDegrees":F
    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 482
    .local v2, "toDegrees":F
    sub-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 484
    const-wide/16 v4, 0x0

    invoke-static {p1, v2, v4, v5, v6}, Lcom/oneplus/widget/ViewUtils;->rotate(Landroid/view/View;FJLandroid/view/animation/Interpolator;)V

    .line 485
    return-void

    .line 487
    :cond_1
    sub-float v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 489
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    .line 490
    sub-float v3, v1, v5

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 494
    :cond_2
    :goto_0
    invoke-static {p1, v2, p3, p4, p5}, Lcom/oneplus/widget/ViewUtils;->rotate(Landroid/view/View;FJLandroid/view/animation/Interpolator;)V

    .line 475
    return-void

    .line 492
    :cond_3
    add-float v3, v1, v5

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method protected setViewVisibility(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/UIComponent;->setViewVisibility(Landroid/view/View;ZLcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 503
    return-void
.end method

.method protected setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 542
    invoke-static {p1, p2, p3, p4, p5}, Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 540
    return-void
.end method

.method protected setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "callback"    # Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;

    .prologue
    .line 556
    invoke-static/range {p1 .. p6}, Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 554
    return-void
.end method

.method protected setViewVisibility(Landroid/view/View;ZLcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "callback"    # Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;

    .prologue
    .line 519
    if-eqz p2, :cond_0

    .line 521
    const-wide/16 v2, 0x258

    .line 522
    .local v2, "duration":J
    sget-object v4, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    :goto_0
    move-object v0, p1

    move v1, p2

    move-object v5, p3

    .line 529
    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 515
    return-void

    .line 526
    .end local v2    # "duration":J
    :cond_0
    const-wide/16 v2, 0x0

    .line 527
    .restart local v2    # "duration":J
    const/4 v4, 0x0

    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0
.end method
