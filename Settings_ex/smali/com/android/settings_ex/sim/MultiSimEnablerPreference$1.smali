.class Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;
.super Ljava/lang/Thread;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V
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
    .line 352
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mCurrentState:Z
    invoke-static {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    goto :goto_0
.end method
