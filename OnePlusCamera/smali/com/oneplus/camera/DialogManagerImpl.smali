.class final Lcom/oneplus/camera/DialogManagerImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "DialogManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/DialogManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;,
        Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;


# instance fields
.field private m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

.field private final m_DefaultKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private m_IsUpdatingDialogRotation:Z

.field private m_MaxDefaultLandDialogWidth:I

.field private m_MaxDefaultPortDialogWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/oneplus/camera/DialogManager$DialogParams;

    invoke-direct {v0}, Lcom/oneplus/camera/DialogManager$DialogParams;-><init>()V

    sput-object v0, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 171
    const-string v0, "Dialog manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 39
    new-instance v0, Lcom/oneplus/camera/DialogManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/DialogManagerImpl$1;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_DefaultKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 172
    sget-object v0, Lcom/oneplus/camera/DialogManagerImpl;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/DialogManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->verifyAccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    return-void
.end method

.method static synthetic access$200()Lcom/oneplus/camera/DialogManager$DialogParams;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/DialogManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;

    .prologue
    .line 25
    iget v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultLandDialogWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/DialogManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;

    .prologue
    .line 25
    iget v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultPortDialogWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/DialogManagerImpl;)Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/base/ScreenSize;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/camera/DialogManagerImpl;->updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/camera/DialogManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/camera/DialogManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/DialogManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/DialogManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .param p2, "cancel"    # Z

    .prologue
    const/4 v1, 0x0

    .line 180
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    if-eq v0, p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-eqz p2, :cond_2

    .line 185
    iget-object v0, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 190
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .line 191
    iput-boolean v1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    .line 192
    sget-object v0, Lcom/oneplus/camera/DialogManagerImpl;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1
.end method

.method private showDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Z
    .locals 14
    .param p1, "handle"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .prologue
    const/4 v13, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 287
    invoke-virtual {p0, v11}, Lcom/oneplus/camera/DialogManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v10

    .line 399
    :goto_0
    return v9

    .line 290
    :cond_0
    iget-object v9, p0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    const-string v12, "showDialog() - Handle : "

    invoke-static {v9, v12, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    iget-object v9, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 295
    iget-object v9, p0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    const-string v12, "showDialog() - Dismiss current dialog"

    invoke-static {v9, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v9, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    invoke-direct {p0, v9, v11}, Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    .line 300
    :cond_1
    iget-object v4, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    .line 301
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 302
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v12, 0x400

    invoke-virtual {v9, v12}, Landroid/view/Window;->addFlags(I)V

    .line 306
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 307
    iget-object v9, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->landscapeParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    if-nez v9, :cond_2

    sget-object v5, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    .line 312
    .local v5, "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    :goto_1
    new-instance v1, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;

    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v9

    invoke-direct {v1, p0, v9, p1}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;-><init>(Lcom/oneplus/camera/DialogManagerImpl;Landroid/content/Context;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)V

    .line 313
    .local v1, "container":Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;
    iget-object v9, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    const v12, 0x1020002

    invoke-virtual {v9, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 314
    .local v3, "content":Landroid/view/ViewGroup;
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 315
    .local v6, "dialogView":Landroid/view/View;
    if-nez v6, :cond_5

    .line 317
    iget-object v9, p0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "showDialog() - No dialog view"

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    move v9, v10

    .line 319
    goto :goto_0

    .line 307
    .end local v1    # "container":Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;
    .end local v3    # "content":Landroid/view/ViewGroup;
    .end local v5    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    .end local v6    # "dialogView":Landroid/view/View;
    :cond_2
    iget-object v5, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->landscapeParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    goto :goto_1

    .line 309
    :cond_3
    iget-object v9, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->portraitParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    if-nez v9, :cond_4

    sget-object v5, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    .restart local v5    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    :goto_2
    goto :goto_1

    .end local v5    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    :cond_4
    iget-object v5, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->portraitParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    goto :goto_2

    .line 321
    .restart local v1    # "container":Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;
    .restart local v3    # "content":Landroid/view/ViewGroup;
    .restart local v5    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    .restart local v6    # "dialogView":Landroid/view/View;
    :cond_5
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 322
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v5, Lcom/oneplus/camera/DialogManager$DialogParams;->width:I

    iget v12, v5, Lcom/oneplus/camera/DialogManager$DialogParams;->height:I

    invoke-direct {v7, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 323
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    invoke-virtual {v1, v6, v7}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v2, "containerParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 329
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 330
    .local v8, "parent":Landroid/view/ViewParent;
    :goto_3
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v9, v8

    .line 332
    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 333
    check-cast v8, Landroid/view/View;

    .end local v8    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .restart local v8    # "parent":Landroid/view/ViewParent;
    goto :goto_3

    .line 335
    :cond_6
    iput-object v1, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->container:Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;

    .line 336
    iput-object v6, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialogView:Landroid/view/View;

    .line 339
    new-instance v0, Lcom/oneplus/camera/DialogManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/DialogManagerImpl$4;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    .line 348
    .local v0, "backgroundTouchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    invoke-virtual {v1, v0}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 355
    iget v9, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    .line 356
    iget-object v9, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_DefaultKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 357
    :cond_7
    new-instance v9, Lcom/oneplus/camera/DialogManagerImpl$5;

    invoke-direct {v9, p0, p1}, Lcom/oneplus/camera/DialogManagerImpl$5;-><init>(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)V

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 397
    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .line 398
    sget-object v9, Lcom/oneplus/camera/DialogManagerImpl;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/camera/DialogManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move v9, v11

    .line 399
    goto/16 :goto_0
.end method

.method private updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V
    .locals 2
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultPortDialogWidth:I

    .line 407
    iget v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultPortDialogWidth:I

    iput v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultLandDialogWidth:I

    .line 409
    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    .line 204
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 205
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 217
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/DialogManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/DialogManagerImpl$2;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 226
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/DialogManagerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/DialogManagerImpl$3;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V

    .line 237
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    .line 251
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 253
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p3, "portraitParams"    # Lcom/oneplus/camera/DialogManager$DialogParams;
    .param p4, "landscapeParams"    # Lcom/oneplus/camera/DialogManager$DialogParams;
    .param p5, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 261
    if-nez p1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "showDialog() - No dialog"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-object v7

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->verifyAccess()V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    if-nez p3, :cond_2

    move-object v4, v7

    :goto_1
    if-nez p4, :cond_3

    move-object v5, v7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;-><init>(Lcom/oneplus/camera/DialogManagerImpl;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)V

    .line 278
    .local v0, "handle":Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/DialogManagerImpl;->showDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v0

    .line 282
    goto :goto_0

    .line 271
    .end local v0    # "handle":Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/camera/DialogManager$DialogParams;->clone()Lcom/oneplus/camera/DialogManager$DialogParams;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {p4}, Lcom/oneplus/camera/DialogManager$DialogParams;->clone()Lcom/oneplus/camera/DialogManager$DialogParams;

    move-result-object v5

    goto :goto_2
.end method
