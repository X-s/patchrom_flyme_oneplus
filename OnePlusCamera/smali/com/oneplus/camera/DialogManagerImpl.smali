.class final Lcom/oneplus/camera/DialogManagerImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "DialogManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/DialogManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/DialogManagerImpl$1;,
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
.method static synthetic -get0()Lcom/oneplus/camera/DialogManager$DialogParams;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/DialogManagerImpl;)Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/DialogManagerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/DialogManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultLandDialogWidth:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/DialogManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultPortDialogWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/DialogManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/DialogManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .param p2, "cancel"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/base/ScreenSize;)V
    .locals 0
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/DialogManagerImpl;->updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/DialogManagerImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->verifyAccess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/oneplus/camera/DialogManager$DialogParams;

    invoke-direct {v0}, Lcom/oneplus/camera/DialogManager$DialogParams;-><init>()V

    sput-object v0, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 175
    const-string/jumbo v0, "Dialog manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 43
    new-instance v0, Lcom/oneplus/camera/DialogManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/DialogManagerImpl$1;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_DefaultKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 176
    sget-object v0, Lcom/oneplus/camera/DialogManagerImpl;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 173
    return-void
.end method

.method private dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    .param p2, "cancel"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    if-eq v0, p1, :cond_1

    .line 185
    :cond_0
    return-void

    .line 188
    :cond_1
    if-eqz p2, :cond_2

    .line 189
    iget-object v0, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 194
    :goto_0
    iput-object v2, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .line 195
    iput-boolean v1, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    .line 196
    sget-object v0, Lcom/oneplus/camera/DialogManagerImpl;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 181
    return-void

    .line 191
    :cond_2
    iget-object v0, p1, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private showDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Z
    .locals 20
    .param p1, "handle"    # Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .prologue
    .line 291
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v17

    if-nez v17, :cond_0

    .line 292
    const/16 v17, 0x0

    return v17

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "showDialog() - Handle : "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "showDialog() - Dismiss current dialog"

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    .line 304
    :cond_1
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    .line 305
    .local v7, "dialog":Landroid/app/Dialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 306
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 307
    .local v13, "dialogWindow":Landroid/view/Window;
    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/Window;->addFlags(I)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/DialogManagerImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 312
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->landscapeParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    sget-object v9, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    .line 317
    .local v9, "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    :goto_0
    new-instance v4, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/DialogManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;-><init>(Lcom/oneplus/camera/DialogManagerImpl;Landroid/content/Context;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)V

    .line 318
    .local v4, "container":Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const v18, 0x1020002

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 319
    .local v6, "content":Landroid/view/ViewGroup;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 320
    .local v10, "dialogView":Landroid/view/View;
    if-nez v10, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "showDialog() - No dialog view"

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 324
    const/16 v17, 0x0

    return v17

    .line 312
    .end local v4    # "container":Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;
    .end local v6    # "content":Landroid/view/ViewGroup;
    .end local v9    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    .end local v10    # "dialogView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->landscapeParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    .restart local v9    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    goto :goto_0

    .line 314
    .end local v9    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->portraitParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    sget-object v9, Lcom/oneplus/camera/DialogManagerImpl;->DEFAULT_DIALOG_PARAMS:Lcom/oneplus/camera/DialogManager$DialogParams;

    .restart local v9    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    goto :goto_0

    .end local v9    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    :cond_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->portraitParams:Lcom/oneplus/camera/DialogManager$DialogParams;

    .restart local v9    # "dialogParams":Lcom/oneplus/camera/DialogManager$DialogParams;
    goto :goto_0

    .line 326
    .restart local v4    # "container":Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;
    .restart local v6    # "content":Landroid/view/ViewGroup;
    .restart local v10    # "dialogView":Landroid/view/View;
    :cond_5
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v9, Lcom/oneplus/camera/DialogManager$DialogParams;->width:I

    move/from16 v17, v0

    iget v0, v9, Lcom/oneplus/camera/DialogManager$DialogParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 331
    .local v14, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/DialogManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 332
    .local v11, "dialogViewContainer":Landroid/widget/FrameLayout;
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v12, "dialogViewContainerParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v11, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    invoke-virtual {v4, v11, v14}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->setTag(Ljava/lang/Object;)V

    .line 341
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 342
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v5, "containerParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 345
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 346
    .local v15, "parent":Ljava/lang/Object;
    :goto_1
    instance-of v0, v15, Landroid/view/ViewGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, v15

    .line 348
    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 349
    check-cast v15, Landroid/view/View;

    .end local v15    # "parent":Ljava/lang/Object;
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .restart local v15    # "parent":Ljava/lang/Object;
    goto :goto_1

    .line 351
    :cond_6
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->container:Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;

    .line 352
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialogView:Landroid/view/View;

    .line 355
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-nez v17, :cond_7

    .line 357
    invoke-virtual {v7}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x1010054

    const v19, 0x1010490

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 358
    .local v16, "typedArray":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 359
    .local v8, "dialogBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    .line 361
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/Window;->setClipToOutline(Z)V

    .line 363
    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 371
    .end local v8    # "dialogBackground":Landroid/graphics/drawable/Drawable;
    .end local v16    # "typedArray":Landroid/content/res/TypedArray;
    :cond_7
    :goto_2
    new-instance v3, Lcom/oneplus/camera/DialogManagerImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/oneplus/camera/DialogManagerImpl$4;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    .line 380
    .local v3, "backgroundTouchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 381
    invoke-virtual {v4, v3}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/DialogManagerImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/oneplus/camera/DialogManagerImpl$DialogContainer;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 387
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_8

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->m_DefaultKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 389
    :cond_8
    new-instance v17, Lcom/oneplus/camera/DialogManagerImpl$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/DialogManagerImpl$5;-><init>(Lcom/oneplus/camera/DialogManagerImpl;Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 429
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .line 430
    sget-object v17, Lcom/oneplus/camera/DialogManagerImpl;->PROP_HAS_DIALOG:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/DialogManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 431
    const/16 v17, 0x1

    return v17

    .line 367
    .end local v3    # "backgroundTouchListener":Landroid/view/View$OnTouchListener;
    .restart local v8    # "dialogBackground":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "typedArray":Landroid/content/res/TypedArray;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "showDialog() - Fail to get original dialog background"

    invoke-static/range {v17 .. v18}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V
    .locals 2
    .param p1, "screenSize"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultPortDialogWidth:I

    .line 439
    iget v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultPortDialogWidth:I

    iput v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_MaxDefaultLandDialogWidth:I

    .line 436
    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->dismissDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;Z)V

    .line 208
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 202
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 221
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/DialogManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/DialogManagerImpl$2;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 230
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/DialogManagerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/DialogManagerImpl$3;-><init>(Lcom/oneplus/camera/DialogManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->updateDefaultDialogParams(Lcom/oneplus/base/ScreenSize;)V

    .line 214
    return-void
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_IsUpdatingDialogRotation:Z

    .line 255
    iget-object v0, p0, Lcom/oneplus/camera/DialogManagerImpl;->m_CurrentHandle:Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    iget-object v0, v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 246
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

    .line 265
    if-nez p1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/oneplus/camera/DialogManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showDialog() - No dialog"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-object v7

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManagerImpl;->verifyAccess()V

    .line 271
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/DialogManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    return-object v7

    .line 275
    :cond_1
    new-instance v0, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;

    .line 278
    if-nez p3, :cond_2

    move-object v4, v7

    .line 279
    :goto_0
    if-nez p4, :cond_3

    move-object v5, v7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 275
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;-><init>(Lcom/oneplus/camera/DialogManagerImpl;Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)V

    .line 282
    .local v0, "handle":Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    invoke-direct {p0, v0}, Lcom/oneplus/camera/DialogManagerImpl;->showDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    return-object v7

    .line 278
    .end local v0    # "handle":Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/camera/DialogManager$DialogParams;->clone()Lcom/oneplus/camera/DialogManager$DialogParams;

    move-result-object v4

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p4}, Lcom/oneplus/camera/DialogManager$DialogParams;->clone()Lcom/oneplus/camera/DialogManager$DialogParams;

    move-result-object v5

    goto :goto_1

    .line 286
    .restart local v0    # "handle":Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;
    :cond_4
    return-object v0
.end method
