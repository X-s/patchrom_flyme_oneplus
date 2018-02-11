.class public Lcom/android/settings_ex/dashboard/conditional/OPOTACondition$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPOTACondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string/jumbo v0, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 94
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->-wrap0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    move-result-object v0

    .line 96
    const-class v1, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/OPOTACondition;->setSilenced()V

    .line 91
    :cond_1
    return-void
.end method
