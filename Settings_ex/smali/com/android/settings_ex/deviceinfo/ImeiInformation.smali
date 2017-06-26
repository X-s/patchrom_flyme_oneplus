.class public Lcom/android/settings_ex/deviceinfo/ImeiInformation;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "ImeiInformation.java"


# static fields
.field private static final IMEI_14_DIGIT:I = 0xf

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
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    return-void
.end method

.method private initPreferenceScreen(I)V
    .locals 2
    .param p1, "slotCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 64
    if-le p1, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 65
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 66
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 68
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "slotId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .restart local v0    # "slotId":I
    :cond_1
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 173
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 130
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 131
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 132
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 133
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
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

    .line 136
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, v3, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->updateTitle(Landroid/preference/Preference;I)V

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 73
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 74
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v2}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    .line 75
    .local v2, "mConfigResUtil":Lcom/android/internal/telephony/ConfigResourceUtil;
    const/4 v1, 0x0

    .line 77
    .local v1, "imeiStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, "enable14DigitImei":Z
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "config_enable_display_14digit_imei"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    if-eqz v3, :cond_2

    .line 86
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-le v4, v5, :cond_0

    .line 88
    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 92
    const-string v4, "meid_number"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "min_number"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const-string v4, "min_number"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f0c0633

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 99
    :cond_1
    const-string v4, "prl_version"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "imei_sv"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 102
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 104
    const-string v4, "icc_id"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v4, "imei"

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    :goto_1
    return-void

    .line 109
    :cond_3
    const-string v4, "imei"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 110
    const-string v4, "icc_id"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_4
    const-string v4, "imei"

    invoke-direct {p0, v4, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "imei_sv"

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "prl_version"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 118
    const-string v4, "meid_number"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 119
    const-string v4, "min_number"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 120
    const-string v4, "icc_id"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 156
    .local v0, "preference":Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 160
    :cond_0
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    return-void
.end method

.method private updateTitle(Landroid/preference/Preference;I)V
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0cf9

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

    .line 149
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x29

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 56
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 57
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    .line 58
    return-void
.end method
