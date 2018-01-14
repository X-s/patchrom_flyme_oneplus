.class public Lcom/qualcomm/qcrilhook/PresenceOemHook;
.super Ljava/lang/Object;
.source "PresenceOemHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;,
        Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;,
        Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;
    }
.end annotation


# static fields
.field public static final IMS_ENABLER_RESPONSE:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final OEM_HOOK_UNSOL_IND:I = 0x1

.field private static final PRESENCE_SERVICE_ID:S = 0x3s

.field public static final QCRILHOOK_PRESENCE_IMS_ENABLER_STATE_REQ:S = 0x24s

.field public static final QCRILHOOK_PRESENCE_IMS_GET_EVENT_REPORT_REQ:S = 0x2es

.field public static final QCRILHOOK_PRESENCE_IMS_GET_NOTIFY_FMT_REQ:S = 0x2cs

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_REQ:S = 0x25s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_XML_REQ:S = 0x26s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_REQ:S = 0x28s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_XML_REQ:S = 0x29s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_UNPUBLISH_REQ:S = 0x27s

.field public static final QCRILHOOK_PRESENCE_IMS_SEND_UNSUBSCRIBE_REQ:S = 0x2as

.field public static final QCRILHOOK_PRESENCE_IMS_SET_EVENT_REPORT_REQ:S = 0x2ds

.field public static final QCRILHOOK_PRESENCE_IMS_SET_NOTIFY_FMT_REQ:S = 0x2bs

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_ENABLER_STATE:S = 0x23s

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_UPDATE:S = 0x22s

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_XML_UPDATE:S = 0x21s

.field public static final QCRILHOOK_PRESENCE_IMS_UNSOL_PUBLISH_TRIGGER:S = 0x20s

.field private static mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

.field private static mRefCount:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const-string/jumbo v0, "PresenceOemHook"

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "UNKNOWN"

    aput-object v1, v0, v3

    .line 56
    const-string/jumbo v1, "UNINITIALIZED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "INITIALIZED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "AIRPLANE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "REGISTERED"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->IMS_ENABLER_RESPONSE:[Ljava/lang/String;

    .line 74
    sput v3, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenerLooper"    # Landroid/os/Looper;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 86
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/qualcomm/qcrilhook/PresenceOemHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listenerHandler"    # Landroid/os/Handler;

    .prologue
    .line 102
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    .line 109
    const/4 v0, 0x3

    .line 110
    const/4 v1, 0x1

    .line 109
    invoke-static {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerService(SLandroid/os/Handler;I)V

    .line 113
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Registered PresenceOemHook with QmiOemHook"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    sget v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    .line 118
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;

    iput-object p0, v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static handleMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 636
    iget v2, p0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 646
    sget-object v2, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recieved msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-object v5

    .line 638
    :pswitch_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 639
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 640
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 641
    sget-object v2, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Hashmap async userobj is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-object v5

    .line 644
    :cond_0
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static receive(Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 352
    .local v8, "requestId":I
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 353
    .local v11, "responseSize":I
    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 354
    .local v14, "successStatus":I
    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Short;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 358
    .local v4, "messageId":S
    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    .line 360
    .local v10, "respType":Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 361
    .local v5, "msg":Landroid/os/Message;
    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 363
    .local v9, "respByteBuf":Ljava/nio/ByteBuffer;
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "receive respByteBuf = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " responseSize="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " successStatus="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 365
    const-string/jumbo v19, " messageId= "

    .line 364
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 369
    .local v12, "returnObject":Ljava/lang/Object;
    packed-switch v4, :pswitch_data_0

    .line 628
    :goto_0
    return-object v12

    .line 372
    :pswitch_0
    const/4 v2, 0x0

    .line 373
    .local v2, "enablerState":I
    new-instance v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v6}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 375
    .local v6, "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    if-nez v14, :cond_0

    .line 377
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseEnablerState(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 379
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Enabler state = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 383
    move-object v12, v6

    .line 385
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->IMS_ENABLER_RESPONSE:[Ljava/lang/String;

    aget-object v13, v17, v2

    .line 387
    .local v13, "state":Ljava/lang/String;
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 388
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_ENABLER_STATE_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 387
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v13    # "state":Ljava/lang/String;
    :cond_0
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 393
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "OemHookError: QCRILHOOK_PRESENCE_IMS_ENABLER_STATE_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 392
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 397
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 399
    return-object v6

    .line 405
    .end local v2    # "enablerState":I
    .end local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_1
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 412
    :pswitch_2
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 413
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SEND_PUBLISH_XML_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 412
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    :pswitch_3
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 421
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 420
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 429
    :pswitch_4
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 430
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SEND_SUBSCRIBE_XML_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 429
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    :pswitch_5
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 439
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SEND_UNPUBLISH_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 438
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 446
    :pswitch_6
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 447
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SEND_UNSUBSCRIBE_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 446
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :pswitch_7
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Ind: QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_UPDATE="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 458
    .local v7, "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v17, 0x22

    move/from16 v0, v17

    iput v0, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 459
    invoke-static {v9, v11, v14}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseNotifyUpdate(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 464
    move-object v12, v7

    .line 466
    goto/16 :goto_0

    .line 471
    .end local v7    # "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    :pswitch_8
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 472
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Ind: QCRILHOOK_PRESENCE_IMS_UNSOL_NOTIFY_XML_UPDATE="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 471
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseNotifyUpdateXML(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v16

    .line 486
    .local v16, "xml":Ljava/lang/String;
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v7}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 487
    .restart local v7    # "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v17, 0x21

    move/from16 v0, v17

    iput v0, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 488
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 490
    move-object v12, v7

    .line 492
    goto/16 :goto_0

    .line 497
    .end local v7    # "presenceUnSolInd":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    .end local v16    # "xml":Ljava/lang/String;
    :pswitch_9
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 498
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SET_NOTIFY_FMT_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 497
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v6}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 502
    .restart local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 503
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 505
    move-object v12, v6

    .line 506
    goto/16 :goto_0

    .line 511
    .end local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_a
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 512
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_GET_NOTIFY_FMT_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 511
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v6}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 517
    .restart local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    if-nez v14, :cond_1

    .line 519
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseGetNotifyReq(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 521
    .local v15, "val":I
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 522
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 524
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 525
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_GET_NOTIFY_FMT_REQ update_with_struct_info="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 524
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v15    # "val":I
    :goto_1
    move-object v12, v6

    .line 535
    goto/16 :goto_0

    .line 529
    :cond_1
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 530
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    goto :goto_1

    .line 540
    .end local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_b
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 541
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_SET_EVENT_REPORT_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 540
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v6}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 545
    .restart local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 546
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 548
    move-object v12, v6

    .line 550
    goto/16 :goto_0

    .line 555
    .end local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_c
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 556
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_GET_EVENT_REPORT_REQ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 555
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;

    invoke-direct {v6}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;-><init>()V

    .line 561
    .restart local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    if-nez v14, :cond_2

    .line 563
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseGetEventReport(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 565
    .restart local v15    # "val":I
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 566
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    .line 568
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 569
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_GET_EVENT_REPORT_REQ event_report_bit_masks="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 568
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v15    # "val":I
    :goto_2
    move-object v12, v6

    .line 580
    goto/16 :goto_0

    .line 574
    :cond_2
    iput v14, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->result:I

    .line 575
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;->data:Ljava/lang/Object;

    goto :goto_2

    .line 585
    .end local v6    # "presenceSolResp":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceSolResponse;
    :pswitch_d
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 586
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_PUBLISH_TRIGGER="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 585
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parsePublishTrigger(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 591
    .restart local v15    # "val":I
    new-instance v3, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v3}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 592
    .local v3, "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v17, 0x20

    move/from16 v0, v17

    iput v0, v3, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 593
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 595
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 596
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_PUBLISH_TRIGGER result="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 598
    const-string/jumbo v19, " publish_trigger="

    .line 596
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 595
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object v12, v3

    .line 601
    goto/16 :goto_0

    .line 606
    .end local v3    # "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    .end local v15    # "val":I
    :pswitch_e
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 607
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_ENABLER_STATE="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 606
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->parseEnablerStateInd(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 613
    .restart local v15    # "val":I
    new-instance v3, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;

    invoke-direct {v3}, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;-><init>()V

    .line 614
    .restart local v3    # "ind":Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
    const/16 v17, 0x23

    move/from16 v0, v17

    iput v0, v3, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->oemHookMesgId:I

    .line 615
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;->obj:Ljava/lang/Object;

    .line 617
    sget-object v17, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    .line 618
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Response: QCRILHOOK_PRESENCE_IMS_UNSOL_ENABLER_STATE result="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 620
    const-string/jumbo v19, " enabler_state="

    .line 618
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 617
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object v12, v3

    .line 623
    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    .line 123
    sget v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispose(): Unregistering service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterService(I)V

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mInstance:Lcom/qualcomm/qcrilhook/PresenceOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 121
    return-void

    .line 130
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispose mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 652
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "finalize() hit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method public imsp_get_enabler_state_req()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 136
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;

    invoke-direct {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;-><init>()V

    .line 139
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 142
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;->getTypes()[S

    move-result-object v4

    .line 143
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 140
    const/4 v6, 0x3

    .line 141
    const/16 v7, 0x24

    .line 139
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 144
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 145
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_get_event_report_req()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 319
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;

    invoke-direct {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;-><init>()V

    .line 322
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 323
    const/4 v4, 0x3

    .line 324
    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 322
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 325
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 326
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    return-object v8
.end method

.method public imsp_get_notify_fmt_req()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 287
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;

    invoke-direct {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;-><init>()V

    .line 290
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 291
    const/4 v4, 0x3

    .line 292
    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 290
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 293
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 294
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 296
    return-object v8
.end method

.method public imsp_send_publish_req(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/Integer;
    .locals 12
    .param p1, "publish_status"    # I
    .param p2, "contact_uri"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "ver"    # Ljava/lang/String;
    .param p5, "service_id"    # Ljava/lang/String;
    .param p6, "is_audio_supported"    # I
    .param p7, "audio_capability"    # I
    .param p8, "is_video_supported"    # I
    .param p9, "video_capability"    # I

    .prologue
    .line 161
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 172
    .local v0, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 174
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->getTypes()[S

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v3

    .line 173
    const/4 v4, 0x3

    .line 174
    const/16 v5, 0x25

    .line 172
    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v11

    .line 176
    .local v11, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v11}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    .end local v11    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v10

    .line 178
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    const/4 v1, 0x0

    return-object v1
.end method

.method public imsp_send_publish_xml_req(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;

    invoke-direct {v2, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 189
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;->getTypes()[S

    move-result-object v4

    .line 190
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishXMLRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 188
    const/4 v6, 0x3

    .line 189
    const/16 v7, 0x26

    .line 187
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 191
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 192
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_send_subscribe_req(Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 8
    .param p1, "subscriptionType"    # Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;

    invoke-direct {v2, p1, p2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;-><init>(Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;Ljava/util/ArrayList;)V

    .line 221
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 224
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->getTypes()[S

    move-result-object v4

    .line 225
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 222
    const/4 v6, 0x3

    .line 223
    const/16 v7, 0x28

    .line 221
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 226
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 227
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_send_subscribe_xml_req(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;

    invoke-direct {v2, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 241
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;->getTypes()[S

    move-result-object v4

    .line 242
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeXMLRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 239
    const/4 v6, 0x3

    .line 240
    const/16 v7, 0x29

    .line 238
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 243
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 244
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_send_unpublish_req()Ljava/lang/Integer;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 201
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;

    invoke-direct {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;-><init>()V

    .line 204
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 205
    const/4 v4, 0x3

    .line 206
    const/16 v5, 0x27

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 204
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 207
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 208
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    return-object v8
.end method

.method public imsp_send_unsubscribe_req(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p1, "peerURI"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;

    invoke-direct {v2, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 259
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->getTypes()[S

    move-result-object v4

    .line 260
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 257
    const/4 v6, 0x3

    .line 258
    const/16 v7, 0x2a

    .line 256
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 261
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 262
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_set_event_report_req(I)Ljava/lang/Object;
    .locals 8
    .param p1, "mask"    # I

    .prologue
    .line 302
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;

    invoke-direct {v2, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;-><init>(I)V

    .line 305
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 308
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;->getTypes()[S

    move-result-object v4

    .line 309
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 306
    const/4 v6, 0x3

    .line 307
    const/16 v7, 0x2d

    .line 305
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 310
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 311
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    const/4 v3, 0x0

    return-object v3
.end method

.method public imsp_set_notify_fmt_req(I)Ljava/lang/Object;
    .locals 8
    .param p1, "flag"    # I

    .prologue
    .line 270
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;

    .line 271
    int-to-short v3, p1

    .line 270
    invoke-direct {v2, v3}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;-><init>(S)V

    .line 273
    .local v2, "req":Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 276
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;->getTypes()[S

    move-result-object v4

    .line 277
    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    .line 274
    const/4 v6, 0x3

    .line 275
    const/16 v7, 0x2b

    .line 273
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 278
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 279
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    const/4 v3, 0x0

    return-object v3
.end method
