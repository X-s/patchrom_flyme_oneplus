.class public abstract Lcom/android/settings_ex/datausage/DataUsageBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataUsageBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUsageBase"


# instance fields
.field protected final services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .line 33
    return-void
.end method

.method private isDataEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 78
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected isAdmin()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method protected isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DataUsageBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method protected isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # I

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p2}, Lcom/android/settings_ex/datausage/DataUsageBase;->isDataEnabled(I)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .line 46
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 45
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .line 48
    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 51
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    new-instance v2, Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/settings_exlib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageBase;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settings_exlib/NetworkPolicyEditor;->read()V

    .line 59
    return-void
.end method
