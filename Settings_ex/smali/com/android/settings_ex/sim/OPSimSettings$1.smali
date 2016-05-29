.class Lcom/android/settings_ex/sim/OPSimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OPSimSettings.java"


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
    .line 213
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "action":Ljava/lang/String;
    const-string v4, "OPSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 221
    .local v1, "preferredDataSubscription":I
    int-to-long v4, v1

    iget-object v6, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mPreferredDataSubscription:J
    invoke-static {v6}, Lcom/android/settings_ex/sim/OPSimSettings;->access$100(Lcom/android/settings_ex/sim/OPSimSettings;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 224
    .local v2, "simNum":I
    if-lez v2, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    int-to-long v6, v1

    # setter for: Lcom/android/settings_ex/sim/OPSimSettings;->mPreferredDataSubscription:J
    invoke-static {v4, v6, v7}, Lcom/android/settings_ex/sim/OPSimSettings;->access$102(Lcom/android/settings_ex/sim/OPSimSettings;J)J

    .line 227
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b24

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "status":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mActivity:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$200(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 236
    .end local v1    # "preferredDataSubscription":I
    .end local v2    # "simNum":I
    .end local v3    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string v4, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$1;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # invokes: Lcom/android/settings_ex/sim/OPSimSettings;->startUpdate()V
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$300(Lcom/android/settings_ex/sim/OPSimSettings;)V

    goto :goto_0
.end method
