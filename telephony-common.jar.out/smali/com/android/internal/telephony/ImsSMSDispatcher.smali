.class public final Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_ImsSms"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIms:Z

.field private mImsSmsEnabled:Z

.field private mImsSmsFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-direct {p0, p1, p3, v5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 52
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEnabled:Z

    .line 64
    const-string v1, "RIL_ImsSms"

    const-string v2, "ImsSMSDispatcher created"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v1, p1, p3, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v2, p2, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 73
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v1, p1, p3, p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    .local v0, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method private isCdmaFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCdmaMo()Z
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private setImsSmsFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 149
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    .line 152
    :goto_0
    return-void

    .line 143
    :pswitch_0
    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 146
    :pswitch_1
    const-string v0, "3gpp2"

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 158
    .local v0, "responseArray":[I
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 159
    const-string v1, "RIL_ImsSms"

    const-string v2, "wrong IMS restration indication, skip"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 165
    aget v1, v0, v3

    if-ne v1, v4, :cond_2

    .line 166
    const-string v1, "RIL_ImsSms"

    const-string v2, "IMS is registered!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-boolean v4, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 172
    :goto_1
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->setImsSmsFormat(I)V

    .line 174
    const-string v1, "unknown"

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "RIL_ImsSms"

    const-string v2, "IMS format was unknown!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    goto :goto_0

    .line 169
    :cond_2
    const-string v1, "RIL_ImsSms"

    const-string v2, "IMS is NOT registered!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 381
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    .line 100
    return-void
.end method

.method public enableSendSmsOverIms(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEnabled:Z

    .line 439
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    const-string v0, "RIL_ImsSms"

    const-string v1, "getFormat should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, "unknown"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "format"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p13, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p14, "messageUri"    # Landroid/net/Uri;
    .param p15, "fullMessageText"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v0, "RIL_ImsSms"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 120
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 122
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "RIL_ImsSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS State query failed with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 240
    const-string v3, "RIL_ImsSms"

    const-string v4, "ImsSMSDispatcher:injectSmsPdu"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 248
    .local v2, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v3, v4, :cond_1

    .line 249
    if-eqz p3, :cond_0

    .line 250
    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->send(I)V

    .line 277
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v0, p3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 256
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v3, "3gpp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsSMSDispatcher:injectSmsText Sending msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to mGsmInboundSmsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "msg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RIL_ImsSms"

    const-string v4, "injectSmsPdu failed: "

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    if-eqz p3, :cond_0

    .line 274
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v3

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    :try_start_2
    const-string v3, "3gpp2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsSMSDispatcher:injectSmsText Sending msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to mCdmaInboundSmsHandler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 266
    :cond_3
    const-string v3, "RIL_ImsSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pdu format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz p3, :cond_0

    .line 268
    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    return v0
.end method

.method public isImsSmsEnabled()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEnabled:Z

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 281
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 284
    .local v6, "oldFormat":Ljava/lang/String;
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v11

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "newFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 291
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 292
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format matched new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    .line 294
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 364
    :goto_1
    return-void

    .line 284
    .end local v5    # "newFormat":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 297
    .restart local v5    # "newFormat":Ljava/lang/String;
    :cond_1
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format matched new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 309
    .local v4, "map":Ljava/util/HashMap;
    const-string v10, "scAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "destAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "destPort"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 313
    :cond_3
    const-string v10, "RIL_ImsSms"

    const-string v11, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v10, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1, v10, v11, v12}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_1

    .line 317
    :cond_4
    const-string v10, "scAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 318
    .local v8, "scAddr":Ljava/lang/String;
    const-string v10, "destAddr"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "destAddr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 322
    .local v7, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 323
    const-string v10, "RIL_ImsSms"

    const-string v11, "sms failed was text"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v10, "text"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 326
    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 327
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    .line 356
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    :goto_3
    const-string v10, "smsc"

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v10, "pdu"

    iget-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 362
    .local v3, "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 363
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 328
    .end local v3    # "dispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v9    # "text":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 332
    :cond_7
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_5
    const/4 v11, 0x0

    invoke-static {v8, v1, v9, v10, v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .line 336
    .end local v9    # "text":Ljava/lang/String;
    :cond_9
    const-string v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 337
    const-string v10, "RIL_ImsSms"

    const-string v11, "sms failed was data"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v10, "data"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    .line 339
    .local v0, "data":[B
    const-string v10, "destPort"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 341
    .local v2, "destPort":Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 342
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (gsm) ==> new format (cdma)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_6
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->shouldSendSmsOverIms()Z

    goto :goto_3

    .line 343
    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    .line 348
    :cond_b
    const-string v10, "RIL_ImsSms"

    const-string v11, "old format (cdma) ==> new format (gsm)"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    invoke-static {v8, v1, v11, v0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    goto/16 :goto_3

    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 359
    .end local v0    # "data":[B
    .end local v2    # "destPort":Ljava/lang/Integer;
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_4
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 213
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 219
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendSmsByPstn should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 369
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "isExpectMore"    # Z
    .param p11, "validityPeriod"    # I

    .prologue
    .line 226
    const-string v0, "RIL_ImsSms"

    const-string v1, "sendText"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    goto :goto_0
.end method

.method public shouldSendSmsOverIms()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 458
    iget-object v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 460
    .local v3, "sendSmsOn1x":Z
    iget-object v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 461
    .local v0, "currentCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 462
    .local v2, "currentVoiceNetwork":I
    iget-object v5, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 464
    .local v1, "currentDataNetwork":I
    const-string v5, "RIL_ImsSms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " voice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-eqz v3, :cond_0

    .line 470
    const/16 v5, 0xe

    if-ne v1, v5, :cond_0

    const/4 v5, 0x7

    if-ne v2, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v5, :cond_0

    .line 473
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ImsSMSDispatcher;->enableSendSmsOverIms(Z)V

    .line 477
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 85
    const-string v0, "RIL_ImsSms"

    const-string v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 91
    return-void
.end method
