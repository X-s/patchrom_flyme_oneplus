.class public Lcom/android/settings_ex/applications/DefaultSmsPreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "DefaultSmsPreference.java"

# interfaces
.implements Lcom/android/settings_ex/SelfAvailablePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->loadSmsApps()V

    .line 35
    return-void
.end method

.method private getDefaultPackage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 56
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    return-object v3
.end method

.method public static hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 84
    .local v2, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 85
    .local v0, "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x1

    return v3

    .line 89
    .end local v0    # "data":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSmsApps()V
    .locals 8

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    .line 45
    .local v6, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v0

    .line 46
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 47
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "i":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "smsApplicationData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 49
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    iget-object v7, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v7, v3, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 51
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 75
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 74
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    .line 77
    .local v0, "isRestrictedUser":Z
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 78
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultSmsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
