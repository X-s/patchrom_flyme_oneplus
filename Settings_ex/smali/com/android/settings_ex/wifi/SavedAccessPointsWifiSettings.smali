.class public Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "SavedAccessPointsWifiSettings"


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 95
    .local v5, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 97
    .local v2, "context":Landroid/content/Context;
    const/4 v6, 0x0

    invoke-static {v2, v8, v6, v8}, Lcom/android/settings_exlib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    new-instance v6, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 111
    .local v1, "accessPointsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 112
    new-instance v4, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    invoke-direct {v4, v6, v2, v7, v8}, Lcom/android/settings_ex/wifi/AccessPointPreference;-><init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 114
    .local v4, "preference":Lcom/android/settings_ex/wifi/AccessPointPreference;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v4    # "preference":Lcom/android/settings_ex/wifi/AccessPointPreference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 119
    const-string v6, "SavedAccessPointsWifiSettings"

    const-string v7, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/settings_ex/wifi/AccessPointPreference;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPointPreference;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 133
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x6a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 91
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v2, 0x0

    .line 174
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    iput-object v2, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 179
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 71
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 72
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x0

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 149
    .local v7, "hideForgetButton":Z
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    const/4 v6, 0x1

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_exlib/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 183
    instance-of v0, p2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    .line 184
    check-cast p2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPointPreference;Z)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 78
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_0
    return-void
.end method
