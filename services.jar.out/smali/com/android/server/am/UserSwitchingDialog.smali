.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 68
    invoke-static {p2}, Lcom/android/server/am/UserSwitchingDialog;->resolveContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v3, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 75
    invoke-virtual {p0, v6}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900fb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1040527

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 83
    if-eqz p5, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 87
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    return-void
.end method

.method private static resolveContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDarkModeTheme()Z

    move-result v0

    .line 57
    .local v0, "isDarkTheme":Z
    if-eqz v0, :cond_1

    const v1, 0x1030128

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 60
    .end local v0    # "isDarkTheme":Z
    :cond_0
    return-object p0

    .line 57
    .restart local v0    # "isDarkTheme":Z
    :cond_1
    const v1, 0x103013f

    goto :goto_0
.end method


# virtual methods
.method public onWindowShown()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 120
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 101
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isDarkModeTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 105
    const v2, 0x1060026

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void
.end method

.method startUser()V
    .locals 3

    .prologue
    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    .end local v0    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
