.class final Lcom/oneplus/camera/ui/OnScreenHintImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/OnScreenHint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/OnScreenHintImpl$1;,
        Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final DURATION_SCREEN_HINT_INVISIBLE:J = 0x3e8L

.field private static final MSG_SHOW_SCREEN_HINT:I = 0x2710

.field private static final TOAST_ALIGNMENT_OFFSET:I = 0xc


# instance fields
.field private m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

.field private m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private final m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

.field private m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

.field private m_FaceBeautyUIHeight:I

.field private m_HintHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_HintTextView:Landroid/widget/TextView;

.field private m_OptionSecondTierHeight:I

.field private m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/ui/FaceBeautyUI;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/ui/OptionsPanel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/ZoomController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/FaceBeautyUI;)Lcom/oneplus/camera/ui/FaceBeautyUI;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OptionsPanel;)Lcom/oneplus/camera/ui/OptionsPanel;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/base/Rotation;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->hideHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintMarginBottom(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 107
    const-string/jumbo v0, "On-screen hint"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 59
    new-instance v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    .line 105
    return-void
.end method

.method private canShowHint()Z
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 115
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    if-ne v1, v2, :cond_0

    .line 116
    const/4 v1, 0x0

    return v1

    .line 118
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private hideHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 152
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    .line 153
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :goto_0
    return-void

    .line 154
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 158
    sget-object v1, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isNeedAdjustMargin()Z
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v3, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 124
    .local v1, "viewRect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Lcom/oneplus/util/AspectRatio;->get(FF)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    .line 125
    .local v0, "ratio":Lcom/oneplus/util/AspectRatio;
    sget-object v2, Lcom/oneplus/util/AspectRatio;->RATIO_1x1:Lcom/oneplus/util/AspectRatio;

    if-ne v0, v2, :cond_0

    .line 126
    const/4 v2, 0x0

    return v2

    .line 127
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private showHint(Ljava/lang/Object;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 333
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 334
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->isRunningOrInitializing(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    const/4 v4, 0x0

    return-object v4

    .line 338
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    or-int/lit8 v4, p3, 0x4

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;Ljava/lang/Object;Landroid/view/View$OnClickListener;I)V

    .line 339
    .local v0, "handle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    and-int/lit8 v4, p3, 0x8

    if-nez v4, :cond_4

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "index":I
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 343
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .line 346
    .local v3, "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    iget v4, v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 350
    .end local v3    # "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 356
    .end local v1    # "index":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    sget-object v4, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 358
    :cond_2
    return-object v0

    .line 348
    .restart local v1    # "index":I
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    .restart local v3    # "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "index":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;>;"
    .end local v3    # "nextHandle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 363
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->canShowHint()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    return v6

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 366
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_READY_TO_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    iget v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 369
    return v6

    .line 371
    :cond_1
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 374
    return v6

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v1, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v6, 0x7f090023

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 381
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v6, 0x7f0900a0

    invoke-virtual {v1, v6}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    .line 382
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    new-instance v6, Lcom/oneplus/camera/ui/OnScreenHintImpl$8;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$8;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->addNavBarAlignedView(Landroid/view/View;)V

    .line 414
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v6, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v6}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateBaseViewLayout(Landroid/graphics/RectF;)V

    .line 419
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->isDrawableContent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 421
    iget-object v6, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :goto_0
    iget v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    const/4 v7, 0x1

    .line 429
    .local v7, "animate":Z
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintMarginBottom(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    .line 430
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p0, v1, v4, v5}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V

    .line 431
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v7, :cond_4

    const-wide/16 v4, 0x258

    :cond_4
    sget-object v6, Lcom/oneplus/camera/ui/OnScreenHintImpl;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 432
    return v3

    .line 425
    .end local v7    # "animate":Z
    :cond_5
    iget-object v6, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_2

    .line 428
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "animate":Z
    goto :goto_1
.end method

.method private updateBaseViewLayout(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "previewBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x0

    .line 438
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 439
    :cond_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 442
    .local v1, "captureBarHeight":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 443
    .local v2, "screenHeight":I
    move v0, v1

    .line 445
    .local v0, "bottomMargin":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, v1

    add-float/2addr v3, v4

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 446
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v2, v1

    invoke-static {v3, v4, v5}, Lcom/oneplus/widget/ViewUtils;->setSize(Landroid/view/View;II)V

    .line 450
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->isNeedAdjustMargin()Z

    move-result v3

    if-nez v3, :cond_4

    .line 451
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0xc

    invoke-static {v3, v4, v5, v6, v6}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 456
    :goto_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 457
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintMarginBottom(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    .line 436
    :cond_2
    return-void

    .line 448
    :cond_3
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/widget/ViewUtils;->setSize(Landroid/view/View;II)V

    goto :goto_0

    .line 453
    :cond_4
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-static {v3, v4, v5, v6, v6}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method private updateHintMarginBottom(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v5, 0x0

    .line 504
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v4, :cond_0

    .line 505
    return-void

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 509
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 510
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->isDrawableContent()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    .line 513
    .local v1, "isTextContent":Z
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 545
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 547
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 548
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    const v5, 0x7f0c0022

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 550
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 501
    return-void

    .line 511
    .end local v1    # "isTextContent":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "isTextContent":Z
    goto :goto_0

    .line 517
    :pswitch_0
    if-eqz v1, :cond_4

    .line 518
    const v4, 0x7f080089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 520
    :cond_4
    const v4, 0x7f080086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 524
    :pswitch_1
    if-eqz v1, :cond_5

    .line 525
    const v4, 0x7f08008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 528
    :goto_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    if-eqz v4, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->isNeedAdjustMargin()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 532
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v7, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v7}, Lcom/oneplus/camera/ui/OptionsPanel;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionSecondTierHeight:I

    :goto_3
    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 533
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    sget-object v7, Lcom/oneplus/camera/ui/FaceBeautyUI;->PROP_IS_UI_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/camera/ui/FaceBeautyUI;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUIHeight:I

    :goto_4
    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 534
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v4, :cond_1

    .line 535
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionSecondTierHeight:I

    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 527
    :cond_5
    const v4, 0x7f080087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_6
    move v4, v5

    .line 532
    goto :goto_3

    :cond_7
    move v4, v5

    .line 533
    goto :goto_4

    .line 539
    :cond_8
    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v6, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/oneplus/camera/manual/ManualCaptureMode;

    if-eqz v4, :cond_1

    .line 540
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    sget-object v7, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v4, v7}, Lcom/oneplus/camera/ui/OptionsPanel;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionSecondTierHeight:I

    :goto_5
    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_9
    move v4, v5

    goto :goto_5

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)Z

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public hideScreenHint()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 288
    return-void
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    .line 169
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 172
    const-class v2, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    .line 173
    const-class v2, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ZoomController;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 174
    const-class v2, Lcom/oneplus/camera/ui/OptionsPanel;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/OptionsPanel;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionsPanel:Lcom/oneplus/camera/ui/OptionsPanel;

    .line 175
    const-class v2, Lcom/oneplus/camera/ui/FaceBeautyUI;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/FaceBeautyUI;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUI:Lcom/oneplus/camera/ui/FaceBeautyUI;

    .line 176
    const-class v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    iput-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 177
    const-class v2, Lcom/oneplus/camera/ui/FaceBeautyUI;

    new-instance v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$2;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 196
    const-class v2, Lcom/oneplus/camera/ui/OptionsPanel;

    new-instance v3, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$3;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 218
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_OptionSecondTierHeight:I

    .line 219
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_FaceBeautyUIHeight:I

    .line 220
    new-instance v1, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$4;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    .line 237
    .local v1, "callback":Lcom/oneplus/base/PropertyChangedCallback;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 238
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 239
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 241
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_CaptureModeManager:Lcom/oneplus/camera/capturemode/CaptureModeManager;

    sget-object v3, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/OnScreenHintImpl$5;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$5;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v3, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/OnScreenHintImpl$6;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$6;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    sget-object v3, Lcom/oneplus/camera/ZoomController;->PROP_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/camera/ui/OnScreenHintImpl$7;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl$7;-><init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ZoomController;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 166
    :cond_1
    return-void

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitialize() - No Viewfinder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 2
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 298
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;Lcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 296
    return-void
.end method

.method public showHint(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 320
    if-nez p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showHint() - No Drawable to show"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-object v2

    .line 325
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Ljava/lang/Object;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public showHint(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "flags"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->showHint(Ljava/lang/Object;Landroid/view/View$OnClickListener;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public updateHint(Lcom/oneplus/base/Handle;Landroid/graphics/drawable/Drawable;I)Z
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 483
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    if-nez p2, :cond_1

    .line 487
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateHint() - No Drawable to update"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return v2

    .line 484
    :cond_0
    return v2

    :cond_1
    move-object v0, p1

    .line 490
    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    iput-object p2, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    check-cast p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .end local p1    # "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->verifyAccess()V

    .line 466
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 468
    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    iput-object p2, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->content:Ljava/lang/Object;

    .line 469
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;

    move-object v0, p1

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    invoke-static {v1, v0}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/LinkedList;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    check-cast p1, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .end local p1    # "handle":Lcom/oneplus/base/Handle;
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintMarginBottom(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    .line 474
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 467
    .restart local p1    # "handle":Lcom/oneplus/base/Handle;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
