.class final Lcom/oneplus/camera/ui/ProcessingDialogImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ProcessingDialogImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/ProcessingDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;,
        Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;
    }
.end annotation


# instance fields
.field private m_BaseView:Landroid/view/View;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private final m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

.field private final m_DialogHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private m_MessageTextView:Landroid/widget/TextView;

.field private m_TouchReceiver:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->closeProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 66
    const-string/jumbo v0, "Processing dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 29
    new-instance v0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;-><init>(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    .line 64
    return-void
.end method

.method private closeProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->verifyAccess()V

    .line 75
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/oneplus/util/ListUtils;->isLastObject(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    .line 76
    .local v0, "isLast":Z
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 85
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 86
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->showProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    goto :goto_0
.end method

.method private showProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 129
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 132
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CONTENT_VIEW:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 133
    .local v1, "contentView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showProcessingDialog() - Content view is not a ViewGroup"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 138
    :cond_0
    const v2, 0x7f030033

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    .line 139
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 140
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const v3, 0x7f0a00ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_TouchReceiver:Landroid/view/View;

    .line 141
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_TouchReceiver:Landroid/view/View;

    new-instance v3, Lcom/oneplus/camera/ui/ProcessingDialogImpl$2;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl$2;-><init>(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0a0102

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_MessageTextView:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 151
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "contentView":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 155
    .end local v0    # "activity":Lcom/oneplus/camera/CameraActivity;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_MessageTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;->message:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v4, 0x7f0d0069

    invoke-virtual {v2, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;J)V

    .line 161
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V

    .line 162
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_IconDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 165
    iget-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const-string/jumbo v3, "ProcessingDialog"

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 126
    :cond_2
    return-void

    .line 155
    :cond_3
    iget-object v2, p1, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;->message:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;Lcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    .line 96
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_ContainerRotationCallback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V

    goto :goto_0
.end method

.method public showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->verifyAccess()V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    return-object v1

    .line 116
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;-><init>(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Ljava/lang/CharSequence;)V

    .line 117
    .local v0, "handle":Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->showProcessingDialog(Lcom/oneplus/camera/ui/ProcessingDialogImpl$DialogHandle;)V

    .line 121
    return-object v0
.end method
