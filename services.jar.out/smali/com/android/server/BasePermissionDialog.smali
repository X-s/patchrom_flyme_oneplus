.class public Lcom/android/server/BasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "BasePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BasePermissionDialog$1;
    }
.end annotation


# instance fields
.field private mInfoHandler:Landroid/os/Handler;

.field private mState:Z


# direct methods
.method static synthetic -set0(Lcom/android/server/BasePermissionDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BasePermissionDialog;->mState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BasePermissionDialog;Z)V
    .locals 0
    .param p1, "setState"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "dialogCon"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x20000

    .line 42
    const v1, 0x103047f

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    new-instance v1, Lcom/android/server/BasePermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/BasePermissionDialog$1;-><init>(Lcom/android/server/BasePermissionDialog;)V

    iput-object v1, p0, Lcom/android/server/BasePermissionDialog;->mInfoHandler:Landroid/os/Handler;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BasePermissionDialog;->mState:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 47
    .local v0, "permInfo":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "Permission Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/BasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    const v1, 0x1010355

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->setIconAttribute(I)V

    .line 41
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "setState"    # Z

    .prologue
    .line 75
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    :cond_0
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 80
    .restart local v0    # "btn":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    :cond_1
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/BasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 84
    .restart local v0    # "btn":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/BasePermissionDialog;->mState:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 61
    invoke-direct {p0, v2}, Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/server/BasePermissionDialog;->mInfoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BasePermissionDialog;->mInfoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void
.end method
