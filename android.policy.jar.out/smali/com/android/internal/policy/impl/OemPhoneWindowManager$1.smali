.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 654
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "action":Ljava/lang/String;
    const-string v1, "oem.intent.action.SCREEN_SHOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const-string v1, "WindowManager"

    const-string v2, "ACTION_SCREEN_SHOT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const-string v4, "direction"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->shotScreen(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 661
    :cond_0
    return-void
.end method
