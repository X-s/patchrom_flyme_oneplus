.class Lcom/android/server/wifi/WifiStateMachine$3;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1213
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    .line 1214
    const-string/jumbo v4, "wifi_suspend_optimizations_enabled"

    .line 1213
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1212
    return-void

    .line 1213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
