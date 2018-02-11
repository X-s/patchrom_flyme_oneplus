.class public Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CellularDataCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/dashboard/conditional/CellularDataCondition;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings_ex/dashboard/conditional/Condition;

    move-result-object v0

    .line 110
    .local v0, "mCondition":Lcom/android/settings_ex/dashboard/conditional/Condition;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/conditional/Condition;->refreshState()V

    .line 105
    .end local v0    # "mCondition":Lcom/android/settings_ex/dashboard/conditional/Condition;
    :cond_0
    return-void
.end method
