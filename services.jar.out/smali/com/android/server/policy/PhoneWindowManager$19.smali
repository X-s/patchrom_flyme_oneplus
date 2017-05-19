.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5808
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5811
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5814
    monitor-exit v1

    .line 5819
    :goto_0
    return-void

    .line 5816
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2202(Lcom/android/server/policy/PhoneWindowManager;J)J

    .line 5817
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 5818
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
