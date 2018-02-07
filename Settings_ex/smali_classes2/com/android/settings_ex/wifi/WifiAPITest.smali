.class public Lcom/android/settings_ex/wifi/WifiAPITest;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_DISABLE_NETWORK:Ljava/lang/String; = "disable_network"

.field private static final KEY_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final KEY_ENABLE_NETWORK:Ljava/lang/String; = "enable_network"

.field private static final TAG:Ljava/lang/String; = "WifiAPITest"


# instance fields
.field private mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

.field private mWifiDisconnect:Landroid/support/v7/preference/Preference;

.field private mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netid:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/wifi/WifiAPITest;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->netid:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/wifi/WifiAPITest;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->netid:I

    return p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 72
    const v1, 0x7f04020a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAPITest;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v1, "disconnect"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiDisconnect:Landroid/support/v7/preference/Preference;

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiDisconnect:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string/jumbo v1, "disable_network"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    const-string/jumbo v1, "enable_network"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiDisconnect:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 155
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAPITest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "Input"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string/jumbo v2, "Enter Network ID"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAPITest;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string/jumbo v2, "Ok"

    new-instance v3, Lcom/android/settings_ex/wifi/WifiAPITest$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/wifi/WifiAPITest$1;-><init>(Lcom/android/settings_ex/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    const-string/jumbo v2, "Cancel"

    new-instance v3, Lcom/android/settings_ex/wifi/WifiAPITest$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiAPITest$2;-><init>(Lcom/android/settings_ex/wifi/WifiAPITest;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 134
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAPITest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .restart local v0    # "alert":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "Input"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    const-string/jumbo v2, "Enter Network ID"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiAPITest;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local v1    # "input":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string/jumbo v2, "Ok"

    new-instance v3, Lcom/android/settings_ex/wifi/WifiAPITest$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/wifi/WifiAPITest$3;-><init>(Lcom/android/settings_ex/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const-string/jumbo v2, "Cancel"

    new-instance v3, Lcom/android/settings_ex/wifi/WifiAPITest$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiAPITest$4;-><init>(Lcom/android/settings_ex/wifi/WifiAPITest;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 99
    const/4 v0, 0x0

    return v0
.end method
