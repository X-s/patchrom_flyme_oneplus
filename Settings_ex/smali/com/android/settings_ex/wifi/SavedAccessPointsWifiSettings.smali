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

.field private mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v10, "resultsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 112
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    .line 114
    .local v12, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_4

    .line 116
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 117
    .local v13, "scanResultsSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_1

    .line 118
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 119
    .local v8, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 121
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v7, :cond_0

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .restart local v7    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v10, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v7    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 130
    .local v4, "configsSize":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 131
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 132
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v14, v2, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v14, :cond_2

    iget v14, v2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v14, :cond_2

    .line 130
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    :cond_2
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 136
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 138
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setShowSummary(Z)V

    .line 139
    if-eqz v9, :cond_3

    .line 140
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 141
    .local v11, "resultsSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v11, :cond_3

    .line 142
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 143
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 147
    .end local v6    # "j":I
    .end local v11    # "resultsSize":I
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "configsSize":I
    .end local v5    # "i":I
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v13    # "scanResultsSize":I
    :cond_4
    return-object v1
.end method

.method private initPreferences()V
    .locals 7

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 89
    .local v4, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 91
    .local v2, "context":Landroid/content/Context;
    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 92
    iget-object v5, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2, v5}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    .local v1, "accessPointsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 102
    const-string v5, "SavedAccessPointsWifiSettings"

    const-string v6, "Saved networks activity loaded, but there are no saved networks!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    .line 164
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 85
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iput-object v2, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 205
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    .line 66
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 176
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 168
    nop

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
    .line 209
    instance-of v0, p2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 210
    check-cast p2, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 211
    const/4 v0, 0x1

    .line 213
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
    .line 70
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    .line 72
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 193
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    :cond_0
    return-void
.end method
