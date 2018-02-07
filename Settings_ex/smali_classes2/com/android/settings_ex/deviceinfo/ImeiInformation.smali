.class public Lcom/android/settings_ex/deviceinfo/ImeiInformation;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ImeiInformation.java"


# static fields
.field private static final IMEI_14_DIGIT:I = 0xe

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
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 40
    return-void
.end method

.method private initPreferenceScreen(I)V
    .locals 2
    .param p1, "slotCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 67
    if-le p1, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    .line 68
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 69
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setPreferenceValue(I)V

    .line 71
    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setNewKey(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
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
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 203
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 201
    :cond_0
    return-void
.end method

.method private setNewKey(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 149
    .local v4, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 150
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 152
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_"

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

    .line 155
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v3, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->updateTitle(Landroid/support/v7/preference/Preference;I)V

    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method private setPreferenceValue(I)V
    .locals 11
    .param p1, "phoneId"    # I

    .prologue
    const/16 v10, 0xe

    const/4 v9, 0x0

    .line 76
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 77
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .line 78
    .local v4, "imeiStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, "enable14DigitImei":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 82
    const-string/jumbo v8, "carrier_config"

    .line 81
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 83
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 84
    .local v6, "subIds":[I
    if-eqz v0, :cond_0

    .line 85
    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 87
    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 88
    const-string/jumbo v8, "config_enable_display_14digit_imei"

    .line 87
    invoke-virtual {v7, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    .end local v0    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "enable14DigitImei":Z
    .end local v6    # "subIds":[I
    :cond_0
    :goto_0
    if-eqz v5, :cond_3

    .line 95
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "imeiStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 97
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 98
    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 102
    const-string/jumbo v7, "meid_number"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v7, "min_number"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    const-string/jumbo v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    const v8, 0x7f0e0853

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 109
    :cond_2
    const-string/jumbo v7, "prl_version"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 113
    const-string/jumbo v7, "icc_id"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v7, "imei"

    invoke-direct {p0, v7, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v7, "imei"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v7, "imei_sv"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v4    # "imeiStr":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 120
    .restart local v4    # "imeiStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 126
    const v8, 0x7f0c0033

    .line 125
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 127
    .local v1, "displayIccId":Z
    if-eqz v1, :cond_6

    .line 128
    const-string/jumbo v7, "icc_id"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_2
    const-string/jumbo v7, "imei"

    invoke-direct {p0, v7, v4}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v7, "imei_sv"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v7, "imei"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v7, "imei_sv"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_6
    const-string/jumbo v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 90
    .end local v1    # "displayIccId":Z
    .restart local v2    # "enable14DigitImei":Z
    .local v4, "imeiStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/RuntimeException;
    goto/16 :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "forceDigit"    # Z

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 183
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 192
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    :cond_1
    return-void

    .line 185
    :cond_2
    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 187
    .local v2, "spannable":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 188
    .local v1, "span":Landroid/text/style/TtsSpan;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-interface {v2, v1, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 189
    move-object p2, v2

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 172
    return-void
.end method

.method private setSummaryTextAsDigit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 176
    return-void
.end method

.method private updateTitle(Landroid/support/v7/preference/Preference;I)V
    .locals 6
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0edf

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x29

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 60
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 61
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    .line 54
    return-void
.end method
