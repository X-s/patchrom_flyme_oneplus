.class public Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;
.super Ljava/lang/Object;
.source "QtiEmergencyCallHelper.java"


# static fields
.field private static final ALLOW_ECALL_ENHANCEMENT_PROPERTY:Ljava/lang/String; = "persist.radio.enhance_ecall"

.field private static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiEmergencyCallHelper"

.field private static final PRIMARY_STACK_MODEMID:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static emerNum:Ljava/lang/String;

.field private static isDeviceInDualStandBy:Z

.field private static isEmergencyCallHelperInUse:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInDualStandBy:Z

    .line 27
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyCallHelperInUse:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneIdForECall()I
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 47
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    .line 49
    .local v4, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v9

    .line 50
    .local v9, "voicePhoneId":I
    const/4 v3, -0x1

    .line 52
    .local v3, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 53
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 55
    .local v2, "phoneCount":I
    sget-boolean v10, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInDualStandBy:Z

    if-eqz v10, :cond_1

    .line 56
    const/4 v0, 0x0

    .local v0, "phId":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 57
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 58
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 59
    .local v6, "subId":I
    sget-object v10, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyNumInternal(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 60
    return v9

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "phId":I
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "subId":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "phId":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 66
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 67
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 68
    .local v5, "ss":I
    if-nez v5, :cond_6

    .line 69
    move v3, v0

    .line 70
    if-ne v0, v9, :cond_6

    .line 73
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "ss":I
    :cond_2
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Voice phoneId in service = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-ne v3, v13, :cond_3

    .line 76
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    .line 77
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 78
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 79
    .restart local v5    # "ss":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 80
    move v3, v0

    .line 81
    if-ne v0, v9, :cond_7

    .line 85
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "ss":I
    :cond_3
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Voice phoneId in Limited service = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-ne v3, v13, :cond_5

    .line 88
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 91
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v8

    .line 93
    .local v8, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v7, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_8

    .line 95
    invoke-virtual {v8, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v10

    .line 96
    const/4 v11, 0x1

    .line 95
    if-ne v10, v11, :cond_8

    .line 97
    move v3, v0

    .line 98
    if-ne v0, v9, :cond_8

    .line 101
    .end local v8    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_4
    if-ne v3, v13, :cond_5

    .line 102
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v3

    .line 105
    :cond_5
    const-string/jumbo v10, "QtiEmergencyCallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Voice phoneId in service = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 106
    const-string/jumbo v12, " preferred phoneId ="

    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v3

    .line 65
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v5    # "ss":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 76
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 88
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "ss":I
    .restart local v8    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getPrimaryStackPhoneId()I
    .locals 7

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "modemUuId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 114
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, -0x1

    .line 116
    .local v3, "primayStackPhoneId":I
    const/4 v0, 0x0

    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 118
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 119
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Logical Modem id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "modemUuId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    .line 123
    if-nez v4, :cond_0

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 131
    move v3, v0

    .line 132
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primay Stack phone id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " selected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 139
    const-string/jumbo v4, "QtiEmergencyCallHelper"

    const-string/jumbo v5, "Returning default phone id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v3, 0x0

    .line 143
    :cond_3
    return v3
.end method

.method public static isDeviceInSingleStandby()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 147
    const-string/jumbo v4, "persist.radio.enhance_ecall"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    return v6

    .line 151
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 152
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 156
    .local v0, "phoneCnt":I
    if-ne v0, v7, :cond_1

    .line 157
    return v7

    .line 159
    :cond_1
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 161
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    .line 163
    .local v3, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 164
    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 166
    :cond_2
    sput-boolean v6, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInDualStandBy:Z

    .line 167
    return v7

    .line 159
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v3    # "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    :cond_4
    return v6
.end method

.method public static isEmergencyNumInternal(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "isEmergencyNum":Z
    const/4 v4, -0x1

    .line 177
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 178
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 179
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    const-string/jumbo v5, "QtiEmergencyCallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " phones."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->emerNum:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 183
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 184
    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 182
    .local v0, "isEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 187
    invoke-static {v5, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 191
    .end local v0    # "isEmergencyNum":Z
    :cond_1
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "isLocalEmergencyNum":Z
    const/4 v4, -0x1

    .line 197
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 198
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 199
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    const-string/jumbo v5, "QtiEmergencyCallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " phones."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isLocalEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 203
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 205
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 204
    or-int/2addr v0, v7

    .line 202
    .local v0, "isLocalEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isLocalEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 208
    invoke-static {p0, v5, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 212
    .end local v0    # "isLocalEmergencyNum":Z
    :cond_1
    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "isPotentialEmergencyNum":Z
    const/4 v4, -0x1

    .line 218
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 219
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 220
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    const-string/jumbo v5, "QtiEmergencyCallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " phones."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isPotentialEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 224
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 226
    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v7

    .line 225
    or-int/2addr v0, v7

    .line 223
    .local v0, "isPotentialEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isPotentialEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 229
    invoke-static {v5, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    .line 233
    .end local v0    # "isPotentialEmergencyNum":Z
    :cond_1
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "isPotentialLocalEmergencyNum":Z
    const/4 v4, -0x1

    .line 239
    .local v4, "subscriptionId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    .line 240
    .local v3, "scontrol":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 241
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    const-string/jumbo v5, "QtiEmergencyCallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " phones."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    const/4 v5, 0x0

    array-length v6, v2

    .end local v0    # "isPotentialLocalEmergencyNum":Z
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 245
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 247
    invoke-static {p0, v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 246
    or-int/2addr v0, v7

    .line 244
    .local v0, "isPotentialLocalEmergencyNum":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "isPotentialLocalEmergencyNum":Z
    :cond_0
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v5

    .line 251
    invoke-static {p0, v5, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 255
    .end local v0    # "isPotentialLocalEmergencyNum":Z
    :cond_1
    return v0
.end method
