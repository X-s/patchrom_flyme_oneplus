.class public Lcom/android/settings_ex/applications/ManageDefaultApps;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final DELAY_UPDATE_BROWSER_MILLIS:J = 0x1f4L

.field private static final KEY_DEFAULT_BROWSER:Ljava/lang/String; = "default_browser"

.field private static final KEY_DEFAULT_EMERGENCY_APP:Ljava/lang/String; = "default_emergency_app"

.field private static final KEY_DEFAULT_PHONE_APP:Ljava/lang/String; = "default_phone_app"

.field private static final KEY_SMS_APPLICATION:Ljava/lang/String; = "default_sms_app"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private myUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/android/settings_ex/applications/ManageDefaultApps$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ManageDefaultApps$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/settings_ex/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$1;-><init>(Lcom/android/settings_ex/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/android/settings_ex/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$2;-><init>(Lcom/android/settings_ex/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ManageDefaultApps;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageDefaultApps;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ManageDefaultApps;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageDefaultApps;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ManageDefaultApps;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageDefaultApps;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ManageDefaultApps;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageDefaultApps;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->myUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageDefaultApps;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/ManageDefaultApps;)Lcom/android/settings_ex/applications/DefaultBrowserPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageDefaultApps;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method private updateDefaultBrowserPreference()V
    .locals 9

    .prologue
    const v8, 0x7f0c0d0c

    .line 98
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 102
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v5, "http:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->myUserId:I

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 112
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 113
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v3}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 115
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 117
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 120
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setSummary(I)V

    .line 121
    sget-object v5, Lcom/android/settings_ex/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string v6, "Cannot set empty default Browser value!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0xb5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->myUserId:I

    .line 134
    const-string v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    new-instance v2, Lcom/android/settings_ex/applications/ManageDefaultApps$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$3;-><init>(Lcom/android/settings_ex/applications/ManageDefaultApps;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->myUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    .line 161
    .local v0, "isRestrictedUser":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    const-string v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    const-string v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultEmergencyPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    const-string v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/applications/DefaultEmergencyPreference;->isCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 177
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 191
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 184
    return-void
.end method
