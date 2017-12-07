.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field public static final MAX_ACTIVE_PHONES:I = 0x1

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static mOPOLCONFAPN:Lcom/android/internal/telephony/OPOnlineConfigApn;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z

.field private static sPhone:Lcom/android/internal/telephony/Phone;

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private static sPhones:[Lcom/android/internal/telephony/Phone;

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

.field private static sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 69
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 70
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 77
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 78
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 94
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->mOPOLCONFAPN:Lcom/android/internal/telephony/OPOnlineConfigApn;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 383
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 384
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 387
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 382
    return-void
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .prologue
    .line 318
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 319
    .local v1, "phoneId":I
    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 321
    .local v2, "phoneIdNetworkType":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 322
    const-string/jumbo v5, "preferred_network_mode"

    .line 321
    invoke-static {v4, v5, v1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 326
    :goto_0
    move v0, v2

    .line 327
    .local v0, "networkType":I
    const-string/jumbo v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculatePreferredNetworkType: phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 328
    const-string/jumbo v6, " phoneIdNetworkType = "

    .line 327
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 338
    :goto_1
    const-string/jumbo v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 339
    const-string/jumbo v6, " networkType = "

    .line 338
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v0

    .line 323
    .end local v0    # "networkType":I
    :catch_0
    move-exception v3

    .line 324
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "PhoneFactory"

    const-string/jumbo v5, "Settings Exception Reading Valuefor phoneID"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "networkType":I
    :cond_0
    const-string/jumbo v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    const-string/jumbo v6, " is not a active SubId"

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "printwriter"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 410
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v7, "  "

    invoke-direct {v6, p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 411
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v7, "PhoneFactory:"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " sMadeDefaults="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 414
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 415
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 418
    .local v5, "phones":[Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_0

    .line 419
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 420
    aget-object v4, v5, v1

    .line 423
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-virtual {v4, p0, v6, p2}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 430
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v7, v7, v1

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 434
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 435
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 443
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 444
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 418
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 439
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 440
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string/jumbo v7, "SubscriptionMonitor:"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 450
    :try_start_2
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/SubscriptionMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 454
    :goto_3
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 455
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v7, "UiccController:"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 460
    :try_start_3
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 464
    :goto_4
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 465
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 466
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v7, "SubscriptionController:"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 471
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 475
    :goto_5
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 476
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 477
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v7, "SubInfoRecordUpdater:"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 482
    :try_start_5
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v7, p0, v6, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 486
    :goto_6
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 487
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 488
    const-string/jumbo v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    const-string/jumbo v7, "LocalLogs:"

    invoke-virtual {v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 492
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v8

    .line 493
    :try_start_6
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 494
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 496
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/LocalLog;

    invoke-virtual {v7, p0, v6, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 497
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 492
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 451
    :catch_2
    move-exception v0

    .line 452
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 462
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 484
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v8

    .line 501
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 409
    return-void
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 259
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 263
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 269
    const-string/jumbo v0, ""

    .line 271
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v2, :cond_0

    .line 273
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 275
    :cond_0
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    .line 277
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 288
    return-object v1

    .line 280
    :cond_1
    if-ltz p0, :cond_2

    .line 281
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 282
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v2, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v1, 0x0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 293
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 297
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 353
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 354
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 353
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 358
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 359
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 402
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 405
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 400
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 33
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "new OPOnlineConfigApn"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v3, Lcom/android/internal/telephony/OPOnlineConfigApn;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/OPOnlineConfigApn;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->mOPOLCONFAPN:Lcom/android/internal/telephony/OPOnlineConfigApn;

    .line 115
    sget-object v32, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v32

    .line 116
    :try_start_0
    sget-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v3, :cond_9

    .line 117
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/16 v31, 0x0

    .line 124
    .local v31, "retryCount":I
    :goto_0
    const/16 v26, 0x0

    .line 125
    .local v26, "hasException":Z
    add-int/lit8 v31, v31, 0x1

    .line 130
    :try_start_1
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string/jumbo v4, "com.android.internal.telephony"

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_1
    if-nez v26, :cond_0

    .line 147
    :try_start_2
    new-instance v3, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 149
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    .line 151
    .local v2, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v22

    .line 152
    .local v22, "cdmaSubscription":I
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cdma Subscription set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    .line 158
    .local v9, "numPhones":I
    new-array v0, v9, [I

    move-object/from16 v27, v0

    .line 159
    .local v27, "networkModes":[I
    new-array v3, v9, [Lcom/android/internal/telephony/Phone;

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 160
    new-array v3, v9, [Lcom/android/internal/telephony/RIL;

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 161
    new-array v3, v9, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_2

    .line 166
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v3, v27, v6

    .line 168
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network Mode set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v27, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v4, Lcom/android/internal/telephony/RIL;

    aget v5, v27, v6

    .line 170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v4, v0, v5, v1, v7}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v4, v3, v6

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 131
    .end local v2    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v6    # "i":I
    .end local v9    # "numPhones":I
    .end local v22    # "cdmaSubscription":I
    .end local v27    # "networkModes":[I
    :catch_0
    move-exception v25

    .line 132
    .local v25, "ex":Ljava/io/IOException;
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 137
    .end local v25    # "ex":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x3

    move/from16 v0, v31

    if-le v0, v3, :cond_1

    .line 138
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PhoneFactory probably already running"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v26    # "hasException":Z
    .end local v31    # "retryCount":I
    :catchall_0
    move-exception v3

    monitor-exit v32

    throw v3

    .line 141
    .restart local v26    # "hasException":Z
    .restart local v31    # "retryCount":I
    :cond_1
    const-wide/16 v4, 0x7d0

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 142
    :catch_1
    move-exception v24

    .local v24, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .line 172
    .end local v24    # "er":Ljava/lang/InterruptedException;
    .restart local v2    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .restart local v6    # "i":I
    .restart local v9    # "numPhones":I
    .restart local v22    # "cdmaSubscription":I
    .restart local v27    # "networkModes":[I
    :cond_2
    :try_start_4
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Creating SubscriptionController"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    .line 177
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 179
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_5

    .line 180
    const/16 v29, 0x0

    .line 181
    .local v29, "phone":Lcom/android/internal/telephony/Phone;
    aget v3, v27, v6

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v30

    .line 182
    .local v30, "phoneType":I
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_4

    .line 184
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v3, v6

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 185
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object v8, v2

    .line 183
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 193
    .end local v29    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_4
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Creating Phone with type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aput-object v29, v3, v6

    .line 179
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 187
    .restart local v29    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, v30

    if-ne v0, v3, :cond_3

    .line 189
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v3, v6

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 190
    const/4 v7, 0x6

    move-object/from16 v3, p0

    move-object v8, v2

    .line 188
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .local v29, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_4

    .line 201
    .end local v29    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v30    # "phoneType":I
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 202
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 207
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v23

    .line 208
    .local v23, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v28, "NONE"

    .line 209
    .local v28, "packageName":Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 210
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 212
    :cond_6
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "defaultSmsApplication: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 217
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 219
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Creating SubInfoRecordUpdater "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/Phone;)V

    .line 227
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v9, :cond_7

    .line 228
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->startMonitoringImsService()V

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 232
    :cond_7
    const-string/jumbo v3, "telephony.registry"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 231
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v13

    .line 233
    .local v13, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    .line 235
    .local v11, "sc":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v3, Lcom/android/internal/telephony/SubscriptionMonitor;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-direct {v3, v13, v4, v11, v9}, Lcom/android/internal/telephony/SubscriptionMonitor;-><init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 239
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v12

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 240
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 238
    const/4 v8, 0x1

    move-object v7, v2

    .line 237
    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 242
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 243
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 242
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v7}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 245
    new-array v3, v9, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 246
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v9, :cond_8

    .line 247
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    new-instance v14, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 248
    sget-object v15, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    sget-object v17, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v18

    .line 249
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v6

    iget-object v0, v4, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v21, v0

    move-object/from16 v16, v11

    move/from16 v20, v6

    .line 247
    invoke-direct/range {v14 .. v21}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Landroid/content/Context;ILcom/android/internal/telephony/dataconnection/DcTracker;)V

    aput-object v14, v3, v6

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 253
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 252
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .end local v6    # "i":I
    .end local v9    # "numPhones":I
    .end local v11    # "sc":Lcom/android/internal/telephony/SubscriptionController;
    .end local v13    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v22    # "cdmaSubscription":I
    .end local v23    # "componentName":Landroid/content/ComponentName;
    .end local v26    # "hasException":Z
    .end local v27    # "networkModes":[I
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v31    # "retryCount":I
    :cond_9
    monitor-exit v32

    .line 107
    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 369
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 307
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static oemGetPhoneSwitcher()Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    return-object v0
.end method
