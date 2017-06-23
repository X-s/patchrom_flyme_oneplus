.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method

.method private doEnter()V
    .locals 7

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 248
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v4, 0x43001

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 253
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v2, "AttachingState executeAll due to autoAttach"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "AttachingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 244
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mResponseMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$602(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 262
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 268
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 363
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AttachingState: nothandled msg.what=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 366
    const/4 v6, 0x0

    .line 369
    .local v6, "retVal":Z
    :goto_0
    return v6

    .line 270
    .end local v6    # "retVal":Z
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    .line 271
    .local v2, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 272
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string v7, "DcSwitchStateMachine.AttachingState: REQ_CONNECT"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 273
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AttachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 275
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 276
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v7, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v7

    if-nez v7, :cond_0

    .line 282
    :goto_1
    const/4 v6, 0x1

    .line 283
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 279
    .end local v6    # "retVal":Z
    :cond_0
    const-string v7, "DcSwitchStateMachine processing due to autoAttach"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_1

    .line 286
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v2    # "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    .end local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 287
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eq v7, v8, :cond_2

    .line 288
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_DATA_ALLOWED ignored arg1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", seq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 316
    :cond_1
    :goto_2
    const/4 v6, 0x1

    .line 317
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 291
    .end local v6    # "retVal":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mResponseMsg:Landroid/os/Message;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Landroid/os/Message;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 293
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mResponseMsg:Landroid/os/Message;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    .line 294
    .local v5, "responseMsg":Landroid/os/Message;
    new-instance v7, Landroid/os/AsyncResult;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v10, v8, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 299
    .end local v5    # "responseMsg":Landroid/os/Message;
    :cond_3
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 300
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_DATA_ALLOWED failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 302
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "EVENT_DATA_ALLOWED success"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 303
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mResponseMsg:Landroid/os/Message;
    invoke-static {v7, v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$602(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 308
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    .line 309
    .local v3, "dataState":I
    if-nez v3, :cond_1

    .line 310
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "AttachingState: Already attached, move to ATTACHED state"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 311
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 321
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "dataState":I
    :sswitch_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "AttachingState requested abort/reset"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 322
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 323
    const/4 v6, 0x1

    .line 324
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 328
    .end local v6    # "retVal":Z
    :sswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "AttachingState going to retry"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 330
    const/4 v6, 0x1

    .line 331
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 336
    .end local v6    # "retVal":Z
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "AttachingState: EVENT_DATA_ATTACHED"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 338
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 339
    const/4 v6, 0x1

    .line 340
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 345
    .end local v6    # "retVal":Z
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 347
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 348
    .restart local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v7, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 352
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v8, "releasingAll due to autoAttach"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 356
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 357
    const/4 v6, 0x1

    .line 358
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x43001 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44001 -> :sswitch_3
        0x44002 -> :sswitch_5
        0x44007 -> :sswitch_4
        0x4400b -> :sswitch_2
    .end sparse-switch
.end method
