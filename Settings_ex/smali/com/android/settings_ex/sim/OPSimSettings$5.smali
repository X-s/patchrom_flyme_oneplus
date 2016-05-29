.class Lcom/android/settings_ex/sim/OPSimSettings$5;
.super Ljava/lang/Object;
.source "OPSimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/OPSimSettings;->createPreferences()V
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
    .line 379
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 382
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$900(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/preference/ListPreference;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 383
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 384
    .local v2, "value":I
    if-nez v2, :cond_1

    .line 385
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 386
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 398
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredCallSms:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$900(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesCallSms:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1000(Lcom/android/settings_ex/sim/OPSimSettings;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    return v6

    .line 388
    :cond_1
    add-int/lit8 v0, v2, -0x1

    .line 389
    .local v0, "SlotId":I
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 390
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 391
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 392
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    aget v3, v1, v5

    if-lez v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 394
    iget-object v3, p0, Lcom/android/settings_ex/sim/OPSimSettings$5;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_0
.end method
