.class Lcom/android/settings_ex/dashboard/DashboardSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 121
    if-eqz v3, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v3, "DashboardSummary"

    const-string/jumbo v4, "Received ACTION_SIM_STATE_CHANGED or ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-static {v3}, Lcom/android/settings_ex/dashboard/DashboardSummary;->-get1(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/DashboardAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->updateLte4GEnabler()V

    .line 127
    :cond_1
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    const-string/jumbo v3, "phone"

    .line 128
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 130
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 131
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 119
    .end local v1    # "state":I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    return-void

    .line 134
    .restart local v1    # "state":I
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-static {v3}, Lcom/android/settings_ex/dashboard/DashboardSummary;->-get2(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/conditional/ConditionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/dashboard/conditional/ConditionManager;->refreshAll()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
