.class Lcom/android/settings_ex/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/IccLockSettings;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-static {v6}, Lcom/android/settings_ex/IccLockSettings;->-get0(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-static {v7}, Lcom/android/settings_ex/IccLockSettings;->-get0(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :cond_0
    const-string/jumbo v6, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 145
    const-string/jumbo v7, "phone"

    .line 144
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 146
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 147
    .local v2, "numSims":I
    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    .line 148
    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-static {v6}, Lcom/android/settings_ex/IccLockSettings;->-get1(Lcom/android/settings_ex/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 150
    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 149
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 151
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 152
    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 154
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-static {v6}, Lcom/android/settings_ex/IccLockSettings;->-get1(Lcom/android/settings_ex/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 157
    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 156
    const v11, 0x7f0e0dc6

    .line 155
    invoke-virtual {v6, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 154
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v9, v6}, Lcom/android/settings_ex/IccLockSettings;->-wrap0(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    .line 137
    .end local v1    # "i":I
    .end local v2    # "numSims":I
    .end local v3    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void
.end method
