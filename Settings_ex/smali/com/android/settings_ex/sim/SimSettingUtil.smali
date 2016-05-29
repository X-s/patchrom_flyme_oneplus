.class public Lcom/android/settings_ex/sim/SimSettingUtil;
.super Ljava/lang/Object;
.source "SimSettingUtil.java"


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/sim/SimSettingUtil;->DBG:Z

    .line 22
    const-string v0, "SimSettingUtil"

    sput-object v0, Lcom/android/settings_ex/sim/SimSettingUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changShortToLongCarrierName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortName"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    const-string v0, "CMCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "China Mobile"

    .line 211
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const-string v0, "CUCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "China Unicom"

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "CTCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "China Telecom"

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShortCarrierName(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    sget-boolean v0, Lcom/android/settings_ex/sim/SimSettingUtil;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/sim/SimSettingUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/sim/SimSettingUtil;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/sim/SimSettingUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static shortNameConvert(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    const v8, 0x7f090018

    const v7, 0x7f090017

    const v6, 0x7f090016

    .line 231
    invoke-static {p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    .end local p1    # "name":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .line 234
    .restart local p1    # "name":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    .local v1, "resources":Landroid/content/res/Resources;
    const v5, 0x7f090019

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "sCMCC":Ljava/lang/String;
    const v5, 0x7f09001a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "sCUCC":Ljava/lang/String;
    const v5, 0x7f09001b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "sCTCC":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "carrierName":Ljava/lang/String;
    const v5, 0x7f090013

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 249
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_4
    const v5, 0x7f090014

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 251
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 252
    :cond_5
    const v5, 0x7f090015

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 253
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 255
    :cond_6
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static showCarrierName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 163
    const-string v0, ""

    .line 164
    .local v0, "carr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCarrierName() - carr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 172
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CMCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    :cond_1
    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .end local v0    # "carr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 176
    .restart local v0    # "carr":Ljava/lang/String;
    :cond_3
    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CUCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    :cond_4
    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_5
    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "CTCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    :cond_6
    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static showDefaultName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotID"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a61

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 27
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v4, "-----------------------------------------------------------------"

    invoke-static {v4, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showDisplayName() - TelephonyManager.hasIccCard(0): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showDisplayName() - TelephonyManager.hasIccCard(1): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 33
    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 36
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v2, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 38
    .local v0, "subinfo01":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 41
    .local v1, "subinfo02":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDisplayNameForMulti(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 49
    .end local v0    # "subinfo01":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subinfo02":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :goto_0
    return-object v4

    .line 44
    .restart local v0    # "subinfo01":Landroid/telephony/SubscriptionInfo;
    .restart local v1    # "subinfo02":Landroid/telephony/SubscriptionInfo;
    .restart local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDisplayNameForOne(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 46
    .end local v0    # "subinfo01":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subinfo02":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :cond_1
    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDisplayNameForOne(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDefaultName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static showDisplayNameForMulti(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 105
    .local v2, "currentSlotIndex":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 107
    .local v5, "mSubscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - sir.getNameSource(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 110
    const/4 v10, -0x1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 111
    invoke-static {p0, v2}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDefaultName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 153
    :goto_0
    return-object v10

    .line 114
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 116
    .local v8, "subinfo01":Landroid/telephony/SubscriptionInfo;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 119
    .local v9, "subinfo02":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    .local v0, "carrierName1":Ljava/lang/CharSequence;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 121
    .local v1, "carrierName2":Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - carrierName1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 122
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - carrierName2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 127
    invoke-static {p0, v8}, Lcom/android/settings_ex/sim/SimSettingUtil;->showCarrierName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0, v9}, Lcom/android/settings_ex/sim/SimSettingUtil;->showCarrierName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 131
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->showCarrierName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "number01":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "number02":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - number01: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - number02: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 140
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 141
    invoke-static {p0, v6}, Lcom/android/settings_ex/sim/SimSettingUtil;->showPhoneLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "locale1":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/android/settings_ex/sim/SimSettingUtil;->showPhoneLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "locale2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - locale1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showDisplayNameForMulti() - locale2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 149
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/settings_ex/sim/SimSettingUtil;->showPhoneLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 153
    .end local v3    # "locale1":Ljava/lang/String;
    .end local v4    # "locale2":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDisplayNameForOne(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public static showDisplayNameForOne(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showDisplayNameForOne() - sir.getNameSource(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 57
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/settings_ex/sim/SimSettingUtil;->showDefaultName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "defaultName":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 97
    .end local v0    # "defaultName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "defaultName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    .local v1, "name":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showDisplayNameForOne() - name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 81
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 82
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v11}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    invoke-virtual {v6, v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 85
    .local v4, "subinfo01":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6, v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 88
    .local v5, "subinfo02":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 89
    .local v2, "name1":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 90
    .local v3, "name2":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showDisplayNameForOne() - name1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showDisplayNameForOne() - name2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/settings_ex/sim/SimSettingUtil;->log(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)V

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    .end local v2    # "name1":Ljava/lang/CharSequence;
    .end local v3    # "name2":Ljava/lang/CharSequence;
    .end local v4    # "subinfo01":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subinfo02":Landroid/telephony/SubscriptionInfo;
    :cond_2
    move-object v0, v1

    .line 97
    goto/16 :goto_0
.end method

.method public static showPhoneLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;

    move-result-object v0

    .line 217
    .local v0, "defaultCallLogInsertionHelper":Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/settings_ex/sim/DefaultCallLogInsertionHelper;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "location":Ljava/lang/String;
    return-object v1
.end method
