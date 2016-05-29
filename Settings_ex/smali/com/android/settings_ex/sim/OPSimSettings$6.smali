.class Lcom/android/settings_ex/sim/OPSimSettings$6;
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
    .line 405
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 408
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1100(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/preference/ListPreference;

    move-result-object v5

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 409
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 410
    .local v3, "value":I
    move v0, v3

    .line 411
    .local v0, "SlotId":I
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 413
    .local v1, "dataSubId":I
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 414
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 415
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    aget v4, v2, v6

    if-lez v4, :cond_0

    .line 416
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$000(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 419
    .end local v2    # "subId":[I
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mSimPreferredData:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1100(Lcom/android/settings_ex/sim/OPSimSettings;)Landroid/preference/ListPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/sim/OPSimSettings$6;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mEntriesData:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1200(Lcom/android/settings_ex/sim/OPSimSettings;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    const/4 v4, 0x1

    return v4
.end method
