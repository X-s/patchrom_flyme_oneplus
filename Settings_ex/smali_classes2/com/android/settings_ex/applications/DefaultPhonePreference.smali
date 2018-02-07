.class public Lcom/android/settings_ex/applications/DefaultPhonePreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "DefaultPhonePreference.java"

# interfaces
.implements Lcom/android/settings_ex/SelfAvailablePreference;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/DefaultPhonePreference;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->loadDialerApps()V

    .line 36
    return-void
.end method

.method private getDefaultPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/applications/DefaultPhonePreference;->mUserId:I

    invoke-static {v0, v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSystemPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 69
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "dialerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPhoneDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 92
    invoke-static {p1, v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "def":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDialerApps()V
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/applications/DefaultPhonePreference;->mUserId:I

    invoke-static {v3, v4}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "dialerPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 57
    .local v1, "dialers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getSystemPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 76
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    return v2

    .line 81
    :cond_0
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 82
    .local v1, "um":Landroid/os/UserManager;
    const-string/jumbo v3, "no_outgoing_calls"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getDefaultPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/DefaultPhonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/applications/DefaultPhonePreference;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0
.end method
