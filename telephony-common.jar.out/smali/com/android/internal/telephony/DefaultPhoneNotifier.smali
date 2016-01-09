.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;,
        Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPhoneNotifier"

.field private static final OP_REJECT_SUPPORT:Z = true


# instance fields
.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 70
    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 341
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 347
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 343
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 356
    packed-switch p0, :pswitch_data_0

    .line 362
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    :goto_0
    return-object v0

    .line 358
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 360
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Phone$DataActivityState;

    .prologue
    .line 405
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 415
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 407
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 411
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 413
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 424
    packed-switch p0, :pswitch_data_0

    .line 434
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 426
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 428
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 430
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 432
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 371
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 373
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 377
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 388
    packed-switch p0, :pswitch_data_0

    .line 396
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    return-object v0

    .line 390
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 392
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 394
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 443
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 461
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 445
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 449
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 451
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 453
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 455
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 457
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 459
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static convertPreciseCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 470
    packed-switch p0, :pswitch_data_0

    .line 488
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    :goto_0
    return-object v0

    .line 472
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 474
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 476
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 478
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 480
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 482
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 484
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 486
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 16
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 184
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 185
    .local v3, "subId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v13

    .line 191
    .local v13, "dds":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    .line 192
    .local v15, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v9, 0x0

    .line 193
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    const/4 v10, 0x0

    .line 194
    .local v10, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v12, 0x0

    .line 196
    .local v12, "roaming":Z
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 197
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v9

    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    .line 200
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    .line 201
    .local v14, "ss":Landroid/telephony/ServiceState;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v12

    .line 204
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v15, :cond_3

    invoke-virtual {v15, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v11

    :goto_0
    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_2
    :goto_1
    return-void

    .line 205
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "DefaultPhoneNotifier"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private opIsBlackNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move v0, v8

    .line 531
    :goto_0
    return v0

    .line 509
    :cond_0
    const/4 v6, 0x0

    .line 510
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "oneplus_blacklist"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 511
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v8

    .line 513
    .local v2, "BLACK_PROJECTION":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 519
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 520
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor.getCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-eqz v6, :cond_1

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    goto :goto_0

    .line 526
    :cond_2
    if-eqz v6, :cond_3

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v0, v8

    .line 531
    goto :goto_0

    .line 523
    :catch_0
    move-exception v7

    .line 524
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    if-eqz v6, :cond_3

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 526
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private opIsDisturbNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 538
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move v0, v9

    .line 583
    :goto_0
    return v0

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_zen_mode_enable"

    invoke-static {v0, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v10, v0, :cond_1

    move v0, v9

    .line 542
    goto :goto_0

    .line 545
    :cond_1
    const/4 v6, 0x0

    .line 546
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 547
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 549
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 550
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_agree_incall_people"

    const/4 v5, 0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 551
    .local v8, "mode":I
    packed-switch v8, :pswitch_data_0

    move v0, v9

    .line 562
    goto :goto_0

    .line 553
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(data1, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", 0)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "starred"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 572
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_4

    .line 578
    :cond_2
    if-eqz v6, :cond_3

    .line 579
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v10

    goto :goto_0

    .line 557
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(data1, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", 0)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    goto :goto_1

    :pswitch_2
    move v0, v10

    .line 560
    goto/16 :goto_0

    .line 578
    :cond_4
    if-eqz v6, :cond_5

    .line 579
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    move v0, v9

    .line 583
    goto/16 :goto_0

    .line 575
    :catch_0
    move-exception v7

    .line 576
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    if-eqz v6, :cond_5

    .line 579
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 578
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 579
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 152
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 154
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 251
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 235
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 236
    .local v1, "subId":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "data":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 167
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 180
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 225
    .local v0, "subId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDisconnectCause(II)V
    .locals 1
    .param p1, "cause"    # I
    .param p2, "preciseCause"    # I

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 137
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 138
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 141
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOemHookRawEventForSubscriber(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "otaspMode"    # I

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 74
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 75
    .local v1, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 76
    .local v2, "subId":I
    const-string v0, ""

    .line 77
    .local v0, "incomingNumber":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->opIsBlackNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v4

    invoke-interface {v3, v2, v4, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForSubscriber(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 283
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 284
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 285
    .local v1, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 286
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "failCause"    # Ljava/lang/String;

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 103
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 104
    .local v0, "phoneId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 106
    .local v2, "subId":I
    const-string v3, "DefaultPhoneNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nofityServiceState: mRegistry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phondId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/telephony/ServiceState;

    .end local v1    # "ss":Landroid/telephony/ServiceState;
    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .line 110
    .restart local v1    # "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 113
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 123
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 124
    .local v0, "subId":I
    const-string v1, "DefaultPhoneNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySignalStrength: mRegistry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method
