.class public Lcom/android/settings_ex/nfc/PaymentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/PaymentSettings$1;,
        Lcom/android/settings_ex/nfc/PaymentSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field public static final TAG:Ljava/lang/String; = "PaymentSettings"


# instance fields
.field private mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/nfc/PaymentSettings$1;-><init>()V

    .line 127
    sput-object v0, Lcom/android/settings_ex/nfc/PaymentSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v5, Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_ex/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 54
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    .line 57
    .local v2, "manager":Landroid/support/v7/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 59
    .local v4, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v5}, Lcom/android/settings_ex/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 62
    new-instance v3, Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-direct {v3, v5, v6}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V

    .line 63
    .local v3, "preference":Lcom/android/settings_ex/nfc/NfcPaymentPreference;
    const-string/jumbo v5, "payment"

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setKey(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 65
    new-instance v1, Lcom/android/settings_ex/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    .line 66
    iget-object v6, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 65
    invoke-direct {v1, v5, v6}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V

    .line 67
    .local v1, "foreground":Lcom/android/settings_ex/nfc/NfcForegroundPreference;
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 69
    .end local v1    # "foreground":Lcom/android/settings_ex/nfc/NfcForegroundPreference;
    .end local v3    # "preference":Lcom/android/settings_ex/nfc/NfcPaymentPreference;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/nfc/PaymentSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 97
    const v2, 0x7f0e0d81

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 98
    .local v1, "menuItem":Landroid/view/MenuItem;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/nfc/HowItWorks;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "howItWorksIntent":Landroid/content/Intent;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 100
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->onPause()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->onResume()V

    .line 83
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 77
    const v3, 0x7f0400b3

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "emptyView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/PaymentSettings;->setEmptyView(Landroid/view/View;)V

    .line 73
    return-void
.end method
