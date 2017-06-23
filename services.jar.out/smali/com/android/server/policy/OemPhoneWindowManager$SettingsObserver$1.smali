.class Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1338
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    if-eqz v0, :cond_0

    .line 1339
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "mUpdateSwapkeyTask..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->mUpdateSwapkeyTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->access$2300(Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->updateSwapKeyLocked()V
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->access$2400(Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;)V

    goto :goto_0
.end method
