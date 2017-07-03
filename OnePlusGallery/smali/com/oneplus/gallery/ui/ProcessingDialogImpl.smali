.class final Lcom/oneplus/gallery/ui/ProcessingDialogImpl;
.super Lcom/oneplus/gallery/GalleryComponent;
.source "ProcessingDialogImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/ui/ProcessingDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;
    }
.end annotation


# instance fields
.field private final m_DialogHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/Gallery;)V
    .locals 2
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 62
    const-string v0, "Processing dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/gallery/GalleryComponent;-><init>(Ljava/lang/String;Lcom/oneplus/gallery/Gallery;Z)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/LinkedList;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/ui/ProcessingDialogImpl;Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/ui/ProcessingDialogImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->dismissProcessingDialog(Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;)V

    return-void
.end method

.method private dismissProcessingDialog(Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->verifyAccess()V

    .line 71
    iget-object v0, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onInitialize()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryComponent;->onInitialize()V

    .line 89
    return-void
.end method

.method public showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->verifyAccess()V

    .line 98
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->isRunningOrInitializing(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    :goto_0
    return-object v2

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 103
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-nez v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->TAG:Ljava/lang/String;

    const-string v4, "showProcessingDialog() - No activity to show dialog"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/GalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    if-eq v3, v4, :cond_2

    .line 110
    iget-object v3, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->TAG:Ljava/lang/String;

    const-string v4, "showProcessingDialog() - activity state is not running"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 118
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 119
    const v3, 0x7f030009

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 120
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 121
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    new-instance v3, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$1;-><init>(Lcom/oneplus/gallery/ui/ProcessingDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 132
    new-instance v2, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;-><init>(Lcom/oneplus/gallery/ui/ProcessingDialogImpl;Landroid/app/Dialog;)V

    .line 133
    .local v2, "handle":Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;
    iget-object v3, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 136
    iget-object v3, v2, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    iget-object v4, v2, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->dialogFragmentTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/gallery/GalleryDialogFragment;->show(Lcom/oneplus/base/BaseActivity;Ljava/lang/String;)V

    .line 139
    if-eqz p1, :cond_3

    .line 140
    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_3
    sget-object v3, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
