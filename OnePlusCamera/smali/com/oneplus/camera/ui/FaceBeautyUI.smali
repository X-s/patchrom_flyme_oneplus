.class final Lcom/oneplus/camera/ui/FaceBeautyUI;
.super Lcom/oneplus/camera/UIComponent;
.source "FaceBeautyUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/FaceBeautyUI$1;,
        Lcom/oneplus/camera/ui/FaceBeautyUI$2;,
        Lcom/oneplus/camera/ui/FaceBeautyUI$BaseProgressDrawable;,
        Lcom/oneplus/camera/ui/FaceBeautyUI$ProgressDrawable;
    }
.end annotation


# static fields
.field public static final PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_CurrentFaceBeautyValue:I

.field private m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

.field private final m_FaceBeautyValueChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FaceBeautyValueListChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_IsFaceBeautyScene:Z

.field private m_IsFaceBeautyValueListAvailable:Z

.field private m_IsOptionPanelVisible:Z

.field private m_IsTouchingSeekBar:Z

.field private m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_SeekBar:Landroid/widget/SeekBar;

.field private m_UiContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/FaceBeautyUI;)Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/FaceBeautyUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsTouchingSeekBar:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/FaceBeautyUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsOptionPanelVisible:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/FaceBeautyUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsTouchingSeekBar:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/FaceBeautyUI;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->applyFaceBeautyValue(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/FaceBeautyUI;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->onCameraChanged(Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/FaceBeautyUI;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->onFaceBeautyValueChanged(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/FaceBeautyUI;Ljava/util/List;)V
    .locals 0
    .param p1, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->onFaceBeautyValueListChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/FaceBeautyUI;Lcom/oneplus/camera/OperationState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->onPreviewStateChanged(Lcom/oneplus/camera/OperationState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/FaceBeautyUI;Lcom/oneplus/camera/scene/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->onSceneUpdated(Lcom/oneplus/camera/scene/Scene;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/FaceBeautyUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->updateUiVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsUiVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/ui/FaceBeautyUI;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/FaceBeautyUI;->PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 122
    const-string/jumbo v0, "Face Beauty UI"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    .line 53
    new-instance v0, Lcom/oneplus/camera/ui/FaceBeautyUI$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$1;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyValueChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 61
    new-instance v0, Lcom/oneplus/camera/ui/FaceBeautyUI$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$2;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyValueListChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 120
    return-void
.end method

.method private applyFaceBeautyValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyFaceBeautyValue() - value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyFaceBeautyValue() - m_FaceBeautyScene is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyValueListAvailable:Z

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyFaceBeautyValue() - m_IsFaceBeautyValueListAvailable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyScene:Z

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyFaceBeautyValue() - m_IsFaceBeautyScene is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->resetCurrentFaceBeautyValue()V

    .line 145
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    .line 250
    iget v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->applyFaceBeautyValue(I)V

    .line 243
    :cond_0
    return-void
.end method

.method private onFaceBeautyValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 318
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceBeautyValueChanged() - value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 322
    iput p1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    .line 323
    iget v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->applyFaceBeautyValue(I)V

    .line 326
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsTouchingSeekBar:Z

    if-eqz v1, :cond_1

    .line 329
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v2, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 335
    .local v0, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 338
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->updateUiVisibility()V

    .line 316
    return-void
.end method

.method private onFaceBeautyValueListChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceBeautyValueListChanged() - list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFaceBeautyValueListChanged() - valueList is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyValueListAvailable:Z

    .line 313
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->updateUiVisibility()V

    .line 296
    return-void

    :cond_1
    move v0, v1

    .line 300
    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_1
.end method

.method private onPreviewStateChanged(Lcom/oneplus/camera/OperationState;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/OperationState;

    .prologue
    .line 344
    sget-object v0, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    .line 349
    iget v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->applyFaceBeautyValue(I)V

    .line 341
    :cond_0
    return-void
.end method

.method private onSceneUpdated(Lcom/oneplus/camera/scene/Scene;)V
    .locals 3
    .param p1, "scene"    # Lcom/oneplus/camera/scene/Scene;

    .prologue
    .line 266
    sget-object v0, Lcom/oneplus/camera/scene/Scene;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/scene/Scene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Face Beauty (Photo)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyScene:Z

    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    if-nez v0, :cond_0

    .line 273
    check-cast p1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    .end local p1    # "scene":Lcom/oneplus/camera/scene/Scene;
    iput-object p1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    .line 274
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyValueChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyValueListChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 278
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->updateSeekBar()V

    .line 282
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v1, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    .line 285
    iget v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->applyFaceBeautyValue(I)V

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 291
    .restart local p1    # "scene":Lcom/oneplus/camera/scene/Scene;
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyScene:Z

    .line 292
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->resetCurrentFaceBeautyValue()V

    goto :goto_0
.end method

.method private resetCurrentFaceBeautyValue()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_CurrentFaceBeautyValue:I

    .line 354
    return-void
.end method

.method private updateSeekBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 361
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateSeekBar() - m_SeekBar is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 369
    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v4, :cond_2

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateSeekBar() - valueList is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyValueListAvailable:Z

    .line 387
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->updateUiVisibility()V

    .line 359
    return-void

    .line 376
    :cond_2
    iput-boolean v4, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyValueListAvailable:Z

    .line 378
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_FaceBeautyScene:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    sget-object v3, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 383
    .local v0, "beautyValue":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 384
    iget-object v2, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private updateUiVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyScene:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsFaceBeautyValueListAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsOptionPanelVisible:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_UiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 397
    sget-object v0, Lcom/oneplus/camera/ui/FaceBeautyUI;->PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 390
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_UiContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    sget-object v0, Lcom/oneplus/camera/ui/FaceBeautyUI;->PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->resetCurrentFaceBeautyValue()V

    .line 255
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 159
    const-class v1, Lcom/oneplus/camera/ui/OptionsPanel;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OptionsPanel;

    iput-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    .line 160
    const-class v1, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/FaceBeautyUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 166
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_UiContainer:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_UiContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    .line 168
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/oneplus/camera/ui/FaceBeautyUI$ProgressDrawable;

    invoke-direct {v2, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI$ProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/oneplus/camera/ui/FaceBeautyUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$3;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 194
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_UiContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->addAutoRotateView(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_UiContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->addAutoRotateView(Landroid/view/View;)V

    .line 198
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceBeautyUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$4;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 206
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/FaceBeautyUI$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$5;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 214
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/FaceBeautyUI$6;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$6;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/OptionsPanel;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 226
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/FaceBeautyUI$7;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/FaceBeautyUI$7;-><init>(Lcom/oneplus/camera/ui/FaceBeautyUI;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/scene/SceneManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 239
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/OptionsPanel;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_IsOptionPanelVisible:Z

    .line 240
    iget-object v1, p0, Lcom/oneplus/camera/ui/FaceBeautyUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v2, Lcom/oneplus/camera/scene/SceneManager;->PROP_SCENE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/Scene;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/FaceBeautyUI;->onSceneUpdated(Lcom/oneplus/camera/scene/Scene;)V

    .line 153
    return-void
.end method
