.class public Lcom/oneplus/screenshot/longshot/app/LongshotDialog;
.super Landroid/app/Dialog;
.source "LongshotDialog.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.Dialog"


# instance fields
.field private mContentChanged:Z

.field private mContentLayout:I

.field private mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

.field private mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    const v0, 0x7f0d000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 30
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 31
    iput v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 32
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 39
    return-void
.end method

.method private initWindow()V
    .locals 4

    .prologue
    .line 131
    const v0, 0x1830500

    .line 137
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 138
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 139
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 141
    const/16 v3, 0x8ff

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 142
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 143
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 144
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "Longshot.Dialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss()V

    .line 103
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "Longshot.Dialog"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 93
    return-void
.end method

.method public onCloseSystemDialogs()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->dismiss()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v0, "Longshot.Dialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->initWindow()V

    .line 50
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 51
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "Longshot.Dialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 58
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "layoutRes"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    if-eq v0, p1, :cond_0

    .line 115
    iput p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 118
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 64
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 126
    return-void
.end method

.method public setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 122
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "Longshot.Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "Longshot.Dialog"

    const-string v1, "show : GONE=>VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 84
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    invoke-interface {v0, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;->onShow(Landroid/app/Dialog;)V

    goto :goto_0

    .line 80
    :cond_3
    const-string v0, "Longshot.Dialog"

    const-string v1, "show : CREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method
