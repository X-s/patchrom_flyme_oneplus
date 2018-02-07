.class public Lcom/android/settings_ex/datausage/BillingCyclePreference;
.super Landroid/support/v7/preference/Preference;
.source "BillingCyclePreference.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/TemplatePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/BillingCyclePreference$1;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mServices:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/datausage/BillingCyclePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->updateEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lcom/android/settings_ex/datausage/BillingCyclePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference$1;-><init>(Lcom/android/settings_ex/datausage/BillingCyclePreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

    .line 36
    return-void
.end method

.method private updateEnabled()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mServices:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mServices:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mServices:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    .line 66
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 66
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 76
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/datausage/BillingCycleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    move v6, v4

    .line 78
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onAttached()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 41
    return-void
.end method

.method public onDetached()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 49
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 47
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .prologue
    const/4 v0, 0x1

    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 56
    iput p2, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mSubId:I

    .line 57
    iput-object p3, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mServices:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .line 58
    iget-object v1, p3, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 60
    iget-object v3, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/BillingCyclePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 59
    const v0, 0x7f0e0fe7

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/BillingCyclePreference;->setIntent(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
