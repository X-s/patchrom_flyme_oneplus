.class public Lcom/oneplus/camera/ui/BusinessCardUI;
.super Lcom/oneplus/camera/UIComponent;
.source "BusinessCardUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;,
        Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;
    }
.end annotation


# instance fields
.field private m_BackButton:Landroid/view/View;

.field private m_BaseView:Landroid/view/View;

.field private m_LastCameraFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_SavingLastSettingsHandle:Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;

.field private m_ScanningArea:Landroid/view/View;

.field private m_SelfTimeDisableHandle:Lcom/oneplus/base/Handle;

.field private m_Settings:Lcom/oneplus/base/Settings;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/BusinessCardUI;)Lcom/oneplus/camera/Camera$LensFacing;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_LastCameraFacing:Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/BusinessCardUI;)Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_SavingLastSettingsHandle:Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/BusinessCardUI;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_SelfTimeDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/BusinessCardUI;)Lcom/oneplus/base/Settings;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/BusinessCardUI;Lcom/oneplus/camera/media/ResolutionManager;)Lcom/oneplus/camera/media/ResolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/BusinessCardUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_SelfTimeDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/BusinessCardUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->changePhotoResolution()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/BusinessCardUI;Lcom/oneplus/camera/media/Resolution;)V
    .locals 0
    .param p1, "photoResolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/BusinessCardUI;->restoreLastSettings(Lcom/oneplus/camera/media/Resolution;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/BusinessCardUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->saveLastSettings()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/BusinessCardUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->setupUI()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 52
    const-string/jumbo v0, "Business Card UI"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 50
    return-void
.end method

.method private changePhotoResolution()V
    .locals 5

    .prologue
    .line 221
    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "saveLastSettings - ResolutionManager is Null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 229
    .local v2, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "res$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    .line 231
    .local v0, "res":Lcom/oneplus/camera/media/Resolution;
    invoke-virtual {v0}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v3

    sget-object v4, Lcom/oneplus/util/AspectRatio;->RATIO_4x3:Lcom/oneplus/util/AspectRatio;

    if-ne v3, v4, :cond_1

    .line 233
    iget-object v3, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v4, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4, v0}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 219
    .end local v0    # "res":Lcom/oneplus/camera/media/Resolution;
    :cond_2
    return-void
.end method

.method private restoreLastSettings(Lcom/oneplus/camera/media/Resolution;)V
    .locals 2
    .param p1, "photoResolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 190
    :cond_0
    return-void
.end method

.method private saveLastSettings()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_SavingLastSettingsHandle:Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "lastResolution":Lcom/oneplus/camera/media/Resolution;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveLastSettings - ResolutionManager is Null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    sget-object v2, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lastResolution":Lcom/oneplus/camera/media/Resolution;
    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    .line 213
    .local v0, "lastResolution":Lcom/oneplus/camera/media/Resolution;
    new-instance v1, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;Lcom/oneplus/camera/media/Resolution;)V

    iput-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_SavingLastSettingsHandle:Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;

    .line 198
    .end local v0    # "lastResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    return-void
.end method

.method private setupUI()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const v4, 0x7f090186

    const v3, 0x7f090185

    .line 155
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BaseView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BaseView:Landroid/view/View;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/BusinessCardUI;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 158
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupUI()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/OPCameraActivity;->getCaptureUIContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a00a7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BaseView:Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BaseView:Landroid/view/View;

    const v2, 0x7f0a004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BackButton:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BackButton:Landroid/view/View;

    new-instance v2, Lcom/oneplus/camera/ui/BusinessCardUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/BusinessCardUI$5;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/BusinessCardUI;->addAutoRotateView(Landroid/view/View;)V

    .line 177
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_BaseView:Landroid/view/View;

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ScanningArea:Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 179
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 180
    .local v9, "left":I
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 181
    .local v12, "top":I
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f090184

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v11, v1, v2

    .line 182
    .local v11, "right":I
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f090183

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v7, v1, v2

    .line 183
    .local v7, "bottom":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v12, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    .local v0, "areaRect":Landroid/graphics/Rect;
    new-instance v8, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;

    const v1, 0x7f08006f

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v8, p0, v1, v2, v0}, Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;IILandroid/graphics/Rect;)V

    .line 185
    .local v8, "drawable":Lcom/oneplus/camera/ui/BusinessCardUI$ScanningAreaDrawable;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_ScanningArea:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 85
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/Settings;

    iput-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_Settings:Lcom/oneplus/base/Settings;

    .line 86
    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "CameraLensFacing"

    const-class v3, Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera$LensFacing;

    iput-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI;->m_LastCameraFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 89
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/BusinessCardUI$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/BusinessCardUI$1;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 98
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/BusinessCardUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/BusinessCardUI$2;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 124
    const-class v1, Lcom/oneplus/camera/media/ResolutionManager;

    new-instance v2, Lcom/oneplus/camera/ui/BusinessCardUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/BusinessCardUI$3;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/BusinessCardUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 136
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/oneplus/camera/ui/BusinessCardUI;->setupUI()V

    .line 80
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/BusinessCardUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/BusinessCardUI$4;-><init>(Lcom/oneplus/camera/ui/BusinessCardUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    goto :goto_0
.end method
