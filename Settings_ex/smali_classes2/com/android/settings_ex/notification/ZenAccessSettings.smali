.class public Lcom/android/settings_ex/notification/ZenAccessSettings;
.super Lcom/android/settings_ex/notification/EmptyTextSettings;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenAccessSettings$FriendlyWarningDialogFragment;,
        Lcom/android/settings_ex/notification/ZenAccessSettings$ScaryWarningDialogFragment;,
        Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;
    }
.end annotation


# static fields
.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;

.field private mPkgMan:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/ZenAccessSettings;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/ZenAccessSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "access"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;-><init>()V

    .line 56
    new-instance v0, Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;-><init>(Lcom/android/settings_ex/notification/ZenAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mObserver:Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;

    .line 54
    return-void
.end method

.method private static deleteRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Lcom/android/settings_ex/notification/ZenAccessSettings$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/notification/ZenAccessSettings$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method private getEnabledNotificationListeners()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 154
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 155
    const-string/jumbo v6, "enabled_notification_listeners"

    .line 154
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "settingValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "restored":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 159
    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 160
    .local v4, "value":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    .end local v2    # "restored":[Ljava/lang/String;
    .end local v4    # "value":Landroid/content/ComponentName;
    :cond_1
    return-object v1
.end method

.method private hasAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private reloadList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    .line 104
    .local v9, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v10, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Landroid/app/NotificationManager;->getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;

    move-result-object v8

    .line 107
    .local v8, "requesting":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 108
    iget-object v10, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 109
    .local v4, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_1

    .line 110
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 111
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getEnabledNotificationListeners()Landroid/util/ArraySet;

    move-result-object v3

    .line 118
    .local v3, "autoApproved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 119
    new-instance v10, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v11, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 121
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v6, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 123
    .local v5, "label":Ljava/lang/CharSequence;
    new-instance v7, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 124
    .local v7, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 125
    iget-object v10, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0, v6}, Lcom/android/settings_ex/notification/ZenAccessSettings;->hasAccess(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 128
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 129
    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 130
    const v10, 0x7f0e0f71

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    :cond_2
    new-instance v10, Lcom/android/settings_ex/notification/ZenAccessSettings$1;

    invoke-direct {v10, p0, v6, v5}, Lcom/android/settings_ex/notification/ZenAccessSettings$1;-><init>(Lcom/android/settings_ex/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 102
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_3
    return-void
.end method

.method private static setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "access"    # Z

    .prologue
    .line 173
    new-instance v0, Lcom/android/settings_ex/notification/ZenAccessSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings_ex/notification/ZenAccessSettings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xb4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mObserver:Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->reloadList()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mObserver:Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "enabled_notification_listeners"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenAccessSettings;->mObserver:Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;

    .line 91
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0e0e64

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->setEmptyText(I)V

    .line 79
    return-void
.end method
