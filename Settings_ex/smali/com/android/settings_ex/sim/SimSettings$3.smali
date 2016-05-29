.class Lcom/android/settings_ex/sim/SimSettings$3;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/SimSettings;->createDropDown(Lcom/android/settings_ex/notification/DropDownPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;

.field final synthetic val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings;Lcom/android/settings_ex/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    iput-object p2, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 501
    if-nez p2, :cond_1

    move v0, v1

    .line 504
    .end local p2    # "value":Ljava/lang/Object;
    .local v0, "subId":I
    :goto_0
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling setCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_cellular_data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 530
    :cond_0
    :goto_1
    return v5

    .line 501
    .end local v0    # "subId":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, Landroid/telephony/SubscriptionInfo;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    .line 509
    .restart local v0    # "subId":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_calls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    if-nez v0, :cond_3

    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    goto :goto_1

    .line 514
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 515
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_1

    .line 519
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    if-nez v0, :cond_5

    .line 521
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    goto :goto_1

    .line 523
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v2}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 524
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v1}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_1
.end method
