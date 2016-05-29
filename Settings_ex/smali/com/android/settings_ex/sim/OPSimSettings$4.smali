.class Lcom/android/settings_ex/sim/OPSimSettings$4;
.super Ljava/lang/Object;
.source "OPSimSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/OPSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/OPSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$4;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$4;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # invokes: Lcom/android/settings_ex/sim/OPSimSettings;->updateAvailableSubInfos()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/OPSimSettings;->access$600(Lcom/android/settings_ex/sim/OPSimSettings;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$4;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/sim/OPSimSettings;->access$800(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings$4;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->updatePreferenceRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/sim/OPSimSettings;->access$700(Lcom/android/settings_ex/sim/OPSimSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$4;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->updateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/sim/OPSimSettings;->access$800(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/sim/OPSimSettings$4;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->updatePreferenceRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/sim/OPSimSettings;->access$700(Lcom/android/settings_ex/sim/OPSimSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method
