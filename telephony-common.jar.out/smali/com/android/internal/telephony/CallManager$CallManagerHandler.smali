.class Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 2378
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/CallManager$1;

    .prologue
    .line 2378
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 2383
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2520
    :cond_0
    :goto_0
    return-void

    .line 2386
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2392
    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2396
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2397
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 2398
    .local v5, "subId":I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall(I)Z
    invoke-static {v6, v5}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2401
    :cond_1
    :try_start_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silently drop incoming call: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2403
    :catch_0
    move-exception v2

    .line 2404
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CallManager"

    const-string v7, "new ringing connection"

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2407
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2412
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v5    # "subId":I
    :sswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2417
    :sswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2418
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2423
    :sswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2427
    :sswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2431
    :sswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2435
    :sswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2439
    :sswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2443
    :sswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2447
    :sswitch_b
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2451
    :sswitch_c
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2455
    :sswitch_d
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2459
    :sswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2463
    :sswitch_f
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2467
    :sswitch_10
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2471
    :sswitch_11
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2475
    :sswitch_12
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2479
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    # invokes: Lcom/android/internal/telephony/CallManager;->processServiceState(Landroid/os/AsyncResult;)V
    invoke-static {v7, v6}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2486
    :sswitch_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v6, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 2488
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v6, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v4

    .line 2489
    .local v4, "notifyMsg":Landroid/os/Message;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2490
    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 2491
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2486
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2496
    .end local v3    # "i":I
    .end local v4    # "notifyMsg":Landroid/os/Message;
    :sswitch_14
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2500
    :sswitch_15
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2510
    :sswitch_16
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v7, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2511
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v6, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2516
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/telephony/CallManager;->pollCallForWard(I)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    goto/16 :goto_0

    .line 2383
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_16
        0x7a -> :sswitch_15
        0x362 -> :sswitch_17
    .end sparse-switch
.end method
