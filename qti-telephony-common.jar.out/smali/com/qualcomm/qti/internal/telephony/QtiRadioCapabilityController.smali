.class public Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
.super Landroid/os/Handler;
.source "QtiRadioCapabilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;
    }
.end annotation


# static fields
.field static final ALLOW_FLEX_MAPPING_ON_INACTIVE_SUB_PROPERTY:Ljava/lang/String; = "persist.radio.flex_map_inactive"

.field private static final DBG:Z = true

.field private static final EVENT_RADIO_CAPS_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x3

.field private static final FAILURE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRadioCapabilityController"

.field private static final SUCCESS:I = 0x1

.field private static final VDBG:Z

.field private static final mNumPhones:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sSetNwModeLock:Ljava/lang/Object;


# instance fields
.field private bothPhonesMappedToSameStack:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field mDDSSC:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

.field private mIsSetPrefNwModeInProgress:Z

.field private mNeedSetDds:Z

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

.field private mRadioAccessFamily:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    .line 79
    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 82
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 88
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    .line 89
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    .line 90
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    .line 92
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    .line 93
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 94
    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mDDSSC:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 137
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 117
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 120
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x1

    invoke-interface {v2, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2, p0, v3, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->make(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mDDSSC:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 134
    const-string/jumbo v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private areAllModemCapInfoReceived()Z
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "QtiRadioCapabilityController"

    const-string/jumbo v1, "QtiRadioCapabilityController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    .line 462
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 467
    .local v2, "subId":[I
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 468
    const-string/jumbo v4, "preferred_network_mode"

    .line 467
    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 474
    .local v0, "networkMode":I
    :goto_0
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    .line 474
    if-eqz v3, :cond_0

    .line 476
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " get sub based N/W mode, val["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 495
    :goto_1
    return v0

    .line 469
    .end local v0    # "networkMode":I
    :catch_0
    move-exception v1

    .line 470
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNwMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 471
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v0    # "networkMode":I
    goto :goto_0

    .line 482
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 483
    const-string/jumbo v4, "preferred_network_mode"

    .line 482
    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 493
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " get slot based N/W mode, val["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :catch_1
    move-exception v1

    .line 485
    .restart local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private getNumOfRafSupportedForNwMode(II)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, "supportedRafMaskForNwMode":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Modem Capabilites are null. Return!!, N/W mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 582
    return v1

    .line 585
    :cond_0
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 587
    .local v0, "nwModeRaf":I
    and-int v1, p2, v0

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " nwModeRaf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 590
    const-string/jumbo v3, "] raf = "

    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 591
    const-string/jumbo v3, " supportedRafMaskForNwMode:"

    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 592
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    return v2
.end method

.method private handleRadioCapsAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    const-string/jumbo v0, "handleRadioCapsAvailable... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 260
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    goto :goto_0
.end method

.method private handleUpdateBindingDone(I)V
    .locals 9
    .param p1, "result"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 201
    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    if-eqz v6, :cond_0

    if-ne p1, v5, :cond_0

    .line 202
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 205
    const-string/jumbo v6, "persist.radio.flexmap_type"

    const-string/jumbo v7, "nw_mode"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const-string/jumbo v6, "dds"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    const-string/jumbo v6, "handleUpdateBindingDone: set dds "

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 211
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 212
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v7

    .line 211
    invoke-virtual {v6, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 227
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    :cond_0
    if-ne p1, v5, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateNewNwModeToDB()V

    .line 234
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v6, :cond_4

    .line 235
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendSubscriptionSettings(I)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    .restart local v1    # "flexMapSupportType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 216
    .local v3, "resp":Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 217
    const-string/jumbo v6, "handleUpdateBindingDone: try initiate pending flex map req "

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    return-void

    .line 214
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v3    # "resp":Landroid/os/Message;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 241
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 244
    if-ne p1, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 247
    const/4 v2, 0x0

    :goto_2
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v4, :cond_8

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "errorCode":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 250
    .restart local v3    # "resp":Landroid/os/Message;
    if-eqz v3, :cond_7

    .line 251
    if-eq p1, v5, :cond_6

    .line 252
    const/4 v0, 0x2

    .line 254
    :cond_6
    invoke-direct {p0, v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 255
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 198
    .end local v0    # "errorCode":I
    .end local v3    # "resp":Landroid/os/Message;
    :cond_8
    return-void
.end method

.method private isAnyCallsInProgress()Z
    .locals 4

    .prologue
    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_1

    .line 633
    const/4 v1, 0x1

    .line 637
    :cond_0
    return v1

    .line 631
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyPhoneInEcmState()Z
    .locals 3

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, "isInEcmState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 644
    const/4 v1, 0x1

    .line 648
    :cond_0
    return v1

    .line 642
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isCardAbsent(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 663
    const/4 v0, -0x1

    .line 665
    .local v0, "provisionStatus":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 667
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provisionStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 671
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFlexMappingAllowedOnInactiveSub()Z
    .locals 2

    .prologue
    .line 195
    const-string/jumbo v0, "persist.radio.flex_map_inactive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 6
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 435
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v3, v4, [I

    .line 436
    .local v3, "numRafSupported":[I
    const/4 v2, 0x0

    .line 437
    .local v2, "maxNumRafSupported":I
    const/4 v1, 0x0

    .line 440
    .local v1, "isSupported":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 441
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    aget v4, v4, v0

    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNumOfRafSupportedForNwMode(II)I

    move-result v4

    aput v4, v3, v0

    .line 442
    aget v4, v3, v0

    if-ge v2, v4, :cond_0

    aget v2, v3, v0

    .line 440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    aget v4, v3, p2

    if-ne v4, v2, :cond_2

    const/4 v1, 0x1

    .line 448
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", on stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 449
    if-eqz v1, :cond_3

    const-string/jumbo v4, "Supported"

    .line 448
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 451
    return v1

    .line 449
    :cond_3
    const-string/jumbo v4, "Not Supported"

    goto :goto_1
.end method

.method private isUiccProvisionInProgress()Z
    .locals 4

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 655
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v0

    .line 657
    .local v0, "retVal":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUiccProvisionInProgress: retVal =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 659
    .end local v0    # "retVal":Z
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string/jumbo v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 792
    const-string/jumbo v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string/jumbo v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 795
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 98
    const-string/jumbo v0, "QtiRadioCapabilityController"

    const-string/jumbo v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 104
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0

    .line 102
    :cond_0
    const-string/jumbo v0, "QtiRadioCapabilityController"

    const-string/jumbo v1, "QtiRadioCapabilityController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyRadioCapsUpdated(Z)V
    .locals 4
    .param p1, "isCrossMapDone"    # Z

    .prologue
    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyRadioCapsUpdated: radio caps updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 611
    if-eqz p1, :cond_0

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 608
    return-void
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 269
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 625
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendSubscriptionSettings(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 596
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v3, p1

    .line 597
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    .line 598
    .local v2, "type":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 600
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 601
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    .line 601
    if-eqz v3, :cond_0

    .line 603
    iget-object v3, v0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 604
    iget-object v4, v0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v4

    .line 603
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataEnabled(Z)V

    .line 595
    :cond_0
    return-void
.end method

.method private setNWModeInProgressFlag(Z)V
    .locals 2
    .param p1, "newStatus"    # Z

    .prologue
    .line 675
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_0
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 674
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 279
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v2

    .line 282
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncCurrentStackInfo, current stackId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string/jumbo v2, " raf = "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aget v2, v2, v3

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 282
    goto :goto_1

    .line 275
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 3

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    aput v2, v1, v0

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method private updateNewNwModeToDB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 501
    const/4 v1, -0x1

    .line 502
    .local v1, "nwModeFromDB":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_2

    .line 503
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 507
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_1

    .line 508
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 510
    .local v2, "subId":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNewNwModeToDB: subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " new Nw mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v0

    .line 510
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 511
    const-string/jumbo v4, " old n/w mode = "

    .line 510
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 515
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    .line 513
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 518
    const-string/jumbo v4, "preferred_network_mode"

    .line 519
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    .line 517
    invoke-static {v3, v4, v0, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 502
    .end local v2    # "subId":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 500
    :cond_2
    return-void
.end method

.method private updatePreferredStackIds(Z)V
    .locals 4
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreferredStackIds: Modem Caps not Available, request ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 383
    return-void

    .line 386
    :cond_0
    if-nez p1, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncCurrentStackInfo()V

    .line 392
    const/4 v0, 0x0

    .local v0, "curPhoneId":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_8

    .line 394
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    const-string/jumbo v3, "]supports NwMode["

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    const-string/jumbo v3, "] on phoneId["

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 397
    const-string/jumbo v3, "]"

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 392
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreferredStackIds:  current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 401
    const-string/jumbo v3, "],  NwMode["

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 401
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 401
    const-string/jumbo v3, "] on phoneId["

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 402
    const-string/jumbo v3, "]"

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 406
    const/4 v1, 0x0

    .local v1, "otherPhoneId":I
    :goto_1
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 408
    if-ne v1, v0, :cond_5

    .line 406
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 409
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreferredStackIds:  other stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    const-string/jumbo v3, "],  NwMode["

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    const-string/jumbo v3, "] on phoneId["

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    const-string/jumbo v3, "]"

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 413
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    .line 414
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    .line 413
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 420
    :cond_6
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v1

    .line 421
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    .line 420
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    .line 419
    if-eqz v2, :cond_4

    .line 422
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    const-string/jumbo v3, "] and phoneId["

    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    const-string/jumbo v3, "]"

    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 427
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aput v3, v2, v1

    goto/16 :goto_2

    .line 380
    .end local v1    # "otherPhoneId":I
    :cond_8
    return-void
.end method

.method private declared-synchronized updateStackBindingIfRequired(Z)Z
    .locals 11
    .param p1, "isNwModeRequest"    # Z

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 296
    const/4 v4, 0x0

    .line 297
    .local v4, "isUpdateStackBindingRequired":Z
    const/4 v6, 0x0

    .line 298
    .local v6, "response":Z
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isAnyCallsInProgress()Z

    move-result v0

    .line 299
    .local v0, "callInProgress":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isAnyPhoneInEcmState()Z

    move-result v3

    .line 301
    .local v3, "isInEcmState":Z
    const-string/jumbo v8, "persist.radio.flexmap_type"

    const-string/jumbo v9, "nw_mode"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const-string/jumbo v8, "updateStackBindingIfRequired"

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 304
    sget v8, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const-string/jumbo v8, "nw_mode"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 310
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 315
    if-nez p1, :cond_5

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v8, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_5

    .line 317
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v7

    .line 321
    .local v7, "subId":[I
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v7, :cond_0

    array-length v8, v7

    if-gtz v8, :cond_3

    .line 323
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error: subId not generated yet "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 324
    return v10

    .line 305
    .end local v2    # "i":I
    .end local v7    # "subId":[I
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No need to update Stack Bindingm prop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 306
    const-string/jumbo v9, " ph count = "

    .line 305
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 306
    sget v9, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 305
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 307
    return v10

    .line 311
    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error: Call state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ecm state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 312
    return v10

    .line 322
    .restart local v2    # "i":I
    .restart local v7    # "subId":[I
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    const/4 v9, 0x0

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 331
    .end local v2    # "i":I
    .end local v7    # "subId":[I
    :cond_5
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isBothPhonesMappedToSameStack()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 332
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->initNormalMappingRequest()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    monitor-exit p0

    return v8

    .line 336
    :cond_6
    :try_start_4
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updatePreferredStackIds(Z)V

    .line 337
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget v8, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_7

    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " pref stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 339
    const-string/jumbo v9, " current stack["

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 339
    const-string/jumbo v9, "] = "

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 339
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v9, v9, v2

    .line 338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 340
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v8, v8, v2

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v9, v9, v2

    if-eq v8, v9, :cond_8

    .line 342
    const/4 v4, 0x1

    .line 347
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updateStackBindingIfRequired, required =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 348
    if-eqz v4, :cond_a

    .line 349
    sget v8, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v5, v8, [Landroid/telephony/RadioAccessFamily;

    .line 350
    .local v5, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    :goto_2
    sget v8, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_9

    .line 351
    new-instance v8, Landroid/telephony/RadioAccessFamily;

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v10, v10, v2

    aget v9, v9, v10

    invoke-direct {v8, v2, v9}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v8, v5, v2

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 337
    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 353
    .restart local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    .end local v6    # "response":Z
    :cond_a
    monitor-exit p0

    .line 355
    return v6

    .end local v0    # "callInProgress":Z
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "isInEcmState":Z
    .restart local v6    # "response":Z
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->handleRadioCapsAvailable()V

    goto :goto_0

    .line 161
    :pswitch_1
    const-string/jumbo v2, " EVENT_UPDATE_BINDING_DONE "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 162
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->handleUpdateBindingDone(I)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 169
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 170
    .local v1, "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 173
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :cond_0
    const-string/jumbo v2, "Invalid user obj"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    const-string/jumbo v2, "Invalid msg obj"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method initNormalMappingRequest()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 747
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v7

    .line 748
    .local v7, "maxRaf":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v8

    .line 750
    .local v8, "minRaf":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " initNormalMappingRequest  maxRaf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", minRaf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 758
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v3, :cond_2

    .line 759
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    if-nez v1, :cond_0

    move v4, v8

    .line 760
    :goto_1
    if-nez v1, :cond_1

    const-string/jumbo v5, "1"

    :goto_2
    move v3, v2

    .line 759
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 761
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_0
    move v4, v7

    .line 759
    goto :goto_1

    .line 760
    :cond_1
    const-string/jumbo v5, "0"

    goto :goto_2

    .line 764
    :cond_2
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v9, v3, [Landroid/telephony/RadioAccessFamily;

    .line 765
    .local v9, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v1, 0x0

    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v3, :cond_4

    .line 766
    new-instance v4, Landroid/telephony/RadioAccessFamily;

    if-nez v1, :cond_3

    move v3, v7

    :goto_4
    invoke-direct {v4, v1, v3}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v4, v9, v1

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " apply to raf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v3, v8

    .line 766
    goto :goto_4

    .line 774
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 775
    const-string/jumbo v3, " initNormalMappingRequest:  Fail, request in progress "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 777
    return v2

    .line 779
    :cond_5
    return v6
.end method

.method isBothPhonesMappedToSameStack()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "retVal":Z
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ProxyController;->isFlexMappingDoing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    const-string/jumbo v1, "do flexmapping and return"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 721
    return v3

    .line 724
    :cond_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-le v1, v4, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 727
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 726
    if-ne v1, v2, :cond_1

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: both Phones mapped same stackId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    const-string/jumbo v2, " raf = "

    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x1

    .line 731
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->bothPhonesMappedToSameStack:Z

    .line 734
    :cond_1
    return v0
.end method

.method public isSetNWModeInProgress()Z
    .locals 3

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, "retVal":Z
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "retVal":Z
    monitor-exit v1

    .line 686
    return v0

    .line 683
    .local v0, "retVal":Z
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 690
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "radioCapabilityUpdated: Invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " or SetNWModeInProgress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 691
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " radioCapabilityUpdated phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDdsIfRequired(Z)V
    .locals 5
    .param p1, "forceSetDds"    # Z

    .prologue
    .line 703
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 704
    .local v1, "ddsSubId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 705
    .local v0, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDdsIfRequired: ddsSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ddsPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    const-string/jumbo v3, " force = "

    .line 705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    const-string/jumbo v3, " needSetDds = "

    .line 705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 707
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 707
    if-eqz v2, :cond_1

    .line 709
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 710
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mNeedSetDds:Z

    .line 702
    :cond_1
    return-void
.end method

.method public declared-synchronized setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isUiccProvisionInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkType: In Progress, nwmode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 531
    const/4 v4, 0x2

    invoke-direct {p0, p3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 532
    return-void

    .line 534
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 535
    .local v3, "subId":[I
    const/4 v2, 0x0

    .line 537
    .local v2, "isSubActive":Z
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 538
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    .line 541
    .end local v2    # "isSubActive":Z
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkType: nwMode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const-string/jumbo v5, " isActive = "

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 545
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mDDSSC:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 546
    .local v0, "ddsPhoneId":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mDDSSC:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "iccid":Ljava/lang/String;
    if-ne p1, v0, :cond_3

    .line 549
    if-nez v1, :cond_3

    .line 551
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 555
    :cond_3
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 556
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 559
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aput p2, v4, p1

    .line 567
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingAllowedOnInactiveSub()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_5

    .line 568
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v4

    .line 567
    if-eqz v4, :cond_5

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkType: store msg, nwMode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 570
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 527
    return-void

    .line 572
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkType: sending nwMode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, p1

    invoke-interface {v4, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 574
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "ddsPhoneId":I
    .end local v1    # "iccid":Ljava/lang/String;
    .end local v3    # "subId":[I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
