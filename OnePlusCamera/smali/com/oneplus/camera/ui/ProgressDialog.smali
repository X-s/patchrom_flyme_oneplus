.class public Lcom/oneplus/camera/ui/ProgressDialog;
.super Ljava/lang/Object;
.source "ProgressDialog.java"


# instance fields
.field private final m_Activity:Lcom/oneplus/camera/CameraActivity;

.field private m_Dialog:Landroid/app/Dialog;

.field private m_DialogHandle:Lcom/oneplus/base/Handle;

.field private m_Progress:F

.field private m_ProgressBar:Landroid/widget/ProgressBar;

.field private m_Title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Activity:Lcom/oneplus/camera/CameraActivity;

    .line 33
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    .line 44
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 58
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 59
    const/4 p1, 0x0

    .line 62
    :cond_0
    :goto_0
    iput p1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Progress:F

    .line 63
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_ProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_ProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 56
    :cond_1
    return-void

    .line 60
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 61
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Title:Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method

.method public show()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 87
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Activity:Lcom/oneplus/camera/CameraActivity;

    const-class v3, Lcom/oneplus/camera/DialogManager;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/DialogManager;

    .line 92
    .local v0, "dialogManager":Lcom/oneplus/camera/DialogManager;
    if-nez v0, :cond_1

    .line 94
    const-class v1, Lcom/oneplus/camera/ui/ProgressDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show() - No DialogManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v5

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Activity:Lcom/oneplus/camera/CameraActivity;

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const v6, 0x7f0c001b

    .line 100
    .local v6, "styleId":I
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Activity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v1, v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 101
    iget-object v3, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Title:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 102
    const v3, 0x7f030007

    .line 100
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 104
    new-instance v3, Lcom/oneplus/camera/ui/ProgressDialog$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ProgressDialog$1;-><init>(Lcom/oneplus/camera/ui/ProgressDialog;)V

    .line 100
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Dialog:Landroid/app/Dialog;

    .line 115
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Dialog:Landroid/app/Dialog;

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/camera/DialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    .line 116
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Dialog:Landroid/app/Dialog;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_ProgressBar:Landroid/widget/ProgressBar;

    .line 117
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_ProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_Progress:F

    iget-object v3, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    iget-object v1, p0, Lcom/oneplus/camera/ui/ProgressDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    return v1

    .line 99
    .end local v6    # "styleId":I
    :cond_2
    const v6, 0x7f0c0019

    .restart local v6    # "styleId":I
    goto :goto_0
.end method
