.class Lcom/android/settings_ex/sim/SimSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$000(Lcom/android/settings_ex/sim/SimSettings;)V

    .line 172
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    .line 173
    .local v2, "preferredDataSubscription":I
    int-to-long v6, v2

    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mPreferredDataSubscription:J
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    int-to-long v6, v2

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mPreferredDataSubscription:J
    invoke-static {v5, v6, v7}, Lcom/android/settings_ex/sim/SimSettings;->access$202(Lcom/android/settings_ex/sim/SimSettings;J)J

    .line 175
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090b24

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v8}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "status":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 195
    .end local v2    # "preferredDataSubscription":I
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v5, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$300(Lcom/android/settings_ex/sim/SimSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 182
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I
    invoke-static {v5, v10}, Lcom/android/settings_ex/sim/SimSettings;->access$402(Lcom/android/settings_ex/sim/SimSettings;I)I

    .line 183
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mSubInfoList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/android/settings_ex/sim/SimSettings;->access$502(Lcom/android/settings_ex/sim/SimSettings;Ljava/util/List;)Ljava/util/List;

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mNumSlots:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$600()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 185
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    invoke-static {v5, v1}, Lcom/android/settings_ex/sim/SimSettings;->access$700(Lcom/android/settings_ex/sim/SimSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 187
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_3

    iget v5, v3, Landroid/telephony/SubscriptionInfo;->mStatus:I

    iget-object v6, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    if-ne v5, v11, :cond_3

    .line 188
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # operator++ for: Lcom/android/settings_ex/sim/SimSettings;->mNumSims:I
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$408(Lcom/android/settings_ex/sim/SimSettings;)I

    .line 189
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$300(Lcom/android/settings_ex/sim/SimSettings;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->updateAllOptions()V
    invoke-static {v5}, Lcom/android/settings_ex/sim/SimSettings;->access$800(Lcom/android/settings_ex/sim/SimSettings;)V

    goto :goto_0
.end method
