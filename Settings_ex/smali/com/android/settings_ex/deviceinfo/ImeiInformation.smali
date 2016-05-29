.class public Lcom/android/settings_ex/deviceinfo/ImeiInformation;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInformation.java"


# static fields
.field private static final KEY_ICC_ID:Ljava/lang/String; = "icc_id"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_IMEI_SV:Ljava/lang/String; = "imei_sv"

.field private static final KEY_MEID_NUMBER:Ljava/lang/String; = "meid_number"

.field private static final KEY_MIN_NUMBER:Ljava/lang/String; = "min_number"

.field private static final KEY_PRL_VERSION:Ljava/lang/String; = "prl_version"


# instance fields
.field private isMultiSIM:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    return-void
.end method

.method private initPreferenceScreen(I)V
    .locals 2
    .param p1, "slotCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 60
    if-le p1, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 61
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 62
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 63
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 64
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "slotId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    .restart local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 153
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 112
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 113
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 114
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 115
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, v3, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->updateTitle(Landroid/preference/Preference;I)V

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 71
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 73
    const-string v1, "meid_number"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "min_number"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "min_number"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0904c0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 80
    :cond_0
    const-string v1, "prl_version"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "imei_sv"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 85
    const-string v1, "icc_id"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "imei"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    const-string v1, "imei"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 91
    const-string v1, "icc_id"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v1, "imei"

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "imei_sv"

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "prl_version"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 101
    const-string v1, "meid_number"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 102
    const-string v1, "min_number"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 103
    const-string v1, "icc_id"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 138
    .local v0, "preference":Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 142
    :cond_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    :cond_1
    return-void
.end method

.method private updateTitle(Landroid/preference/Preference;I)V
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 125
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b27

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 52
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    .line 55
    return-void
.end method
