.class Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionChanged()V
    .locals 3

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    const-string v2, "Received onSubscriptionChanged"

    # invokes: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$600(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$400(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 501
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$4;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->processSetUiccDone()V
    invoke-static {v1}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$700(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    .line 505
    :cond_2
    return-void
.end method
