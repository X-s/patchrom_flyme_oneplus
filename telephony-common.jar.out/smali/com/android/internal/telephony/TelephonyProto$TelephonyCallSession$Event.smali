.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$CallState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$ImsCommand;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$PhoneState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilRequest;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilSrvccState;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;


# instance fields
.field private bitField0_:I

.field private callIndex_:I

.field private callState_:I

.field public calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private error_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field private imsCommand_:I

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private mergedCallIndex_:I

.field private nitzTimestampMillis_:J

.field private phoneState_:I

.field public reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

.field private rilRequestId_:I

.field private rilRequest_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private srcAccessTech_:I

.field private srvccState_:I

.field private targetAccessTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4741
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4742
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 4741
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    .prologue
    .line 4439
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_1

    .line 4440
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4442
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_0

    .line 4443
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4447
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0

    .line 4440
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5365
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5359
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4746
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4747
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4748
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 4749
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 4750
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 4751
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 4752
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 4753
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 4754
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 4755
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 4756
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 4757
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 4758
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 4759
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 4760
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 4761
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 4762
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 4763
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 4764
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 4765
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 4766
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 4767
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 4768
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 4769
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->cachedSize:I

    .line 4770
    return-object p0
.end method

.method public clearCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 4558
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4559
    return-object p0
.end method

.method public clearCallState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4538
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 4539
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4540
    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 4486
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4487
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4598
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 4599
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4600
    return-object p0
.end method

.method public clearImsCommand()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4674
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 4675
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4676
    return-object p0
.end method

.method public clearMergedCallIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4576
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 4577
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4578
    return-object p0
.end method

.method public clearNitzTimestampMillis()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 2

    .prologue
    .line 4734
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 4735
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4736
    return-object p0
.end method

.method public clearPhoneState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4519
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 4520
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4521
    return-object p0
.end method

.method public clearRilRequest()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4617
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 4618
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4619
    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4636
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 4637
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4638
    return-object p0
.end method

.method public clearSrcAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4696
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 4697
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4698
    return-object p0
.end method

.method public clearSrvccState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4655
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 4656
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4657
    return-object p0
.end method

.method public clearTargetAccessTech()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 4716
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4717
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 4466
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4467
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4468
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 4854
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 4855
    .local v3, "size":I
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 4857
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    const/4 v5, 0x1

    .line 4856
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4859
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 4861
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    const/4 v5, 0x2

    .line 4860
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4863
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v4, :cond_2

    .line 4865
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v5, 0x3

    .line 4864
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4867
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v4, :cond_3

    .line 4869
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v5, 0x4

    .line 4868
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4871
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v4, :cond_4

    .line 4873
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v5, 0x5

    .line 4872
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4875
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v4, :cond_5

    .line 4877
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v5, 0x6

    .line 4876
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4879
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v4, v4

    if-lez v4, :cond_7

    .line 4880
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 4881
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v4, v2

    .line 4882
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 4884
    const/4 v4, 0x7

    .line 4883
    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4880
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4888
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_8

    .line 4890
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    const/16 v5, 0x8

    .line 4889
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4892
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    .line 4894
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    const/16 v5, 0x9

    .line 4893
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4896
    :cond_9
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    .line 4898
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    const/16 v5, 0xa

    .line 4897
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4900
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_b

    .line 4902
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    const/16 v5, 0xb

    .line 4901
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4904
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v4, v4

    if-lez v4, :cond_d

    .line 4905
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v4, v4

    if-ge v2, v4, :cond_d

    .line 4906
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    aget-object v1, v4, v2

    .line 4907
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    .line 4909
    const/16 v4, 0xc

    .line 4908
    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4905
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4913
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_e

    .line 4915
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    const/16 v5, 0xd

    .line 4914
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4917
    :cond_e
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_f

    .line 4919
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    const/16 v5, 0xe

    .line 4918
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4921
    :cond_f
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_10

    .line 4923
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    const/16 v5, 0xf

    .line 4922
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4925
    :cond_10
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_11

    .line 4927
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    const/16 v5, 0x10

    .line 4926
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4929
    :cond_11
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_12

    .line 4931
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    const/16 v5, 0x11

    .line 4930
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4933
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v4, :cond_13

    .line 4935
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/16 v5, 0x12

    .line 4934
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4937
    :cond_13
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_14

    .line 4939
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    const/16 v5, 0x13

    .line 4938
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4941
    :cond_14
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_15

    .line 4943
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const/16 v5, 0x14

    .line 4942
    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4945
    :cond_15
    iget v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_16

    .line 4947
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    const/16 v6, 0x15

    .line 4946
    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 4949
    :cond_16
    return v3
.end method

.method public getCallIndex()I
    .locals 1

    .prologue
    .line 4546
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 4527
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 4474
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 4587
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    return v0
.end method

.method public getImsCommand()I
    .locals 1

    .prologue
    .line 4663
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    return v0
.end method

.method public getMergedCallIndex()I
    .locals 1

    .prologue
    .line 4565
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    return v0
.end method

.method public getNitzTimestampMillis()J
    .locals 2

    .prologue
    .line 4723
    iget-wide v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    return-wide v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 4508
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    return v0
.end method

.method public getRilRequest()I
    .locals 1

    .prologue
    .line 4606
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    .prologue
    .line 4625
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    return v0
.end method

.method public getSrcAccessTech()I
    .locals 1

    .prologue
    .line 4685
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    return v0
.end method

.method public getSrvccState()I
    .locals 1

    .prologue
    .line 4644
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    return v0
.end method

.method public getTargetAccessTech()I
    .locals 1

    .prologue
    .line 4704
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4455
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    return v0
.end method

.method public hasCallIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4554
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasCallState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4535
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4482
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4595
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasImsCommand()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4671
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMergedCallIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4573
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasNitzTimestampMillis()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4731
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPhoneState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4516
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4614
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequestId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4633
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSrcAccessTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4693
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSrvccState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4652
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTargetAccessTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4712
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4463
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4953
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4957
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 4958
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 4962
    invoke-super {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4963
    return-object p0

    .line 4960
    :sswitch_0
    return-object p0

    .line 4968
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 4969
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 4970
    .local v6, "value":I
    packed-switch v6, :pswitch_data_0

    .line 4997
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4998
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4993
    :pswitch_0
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4994
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto :goto_0

    .line 5004
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5005
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5006
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_1

    .line 5031
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5032
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5027
    :pswitch_1
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 5028
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto :goto_0

    .line 5038
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v8, :cond_1

    .line 5039
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 5041
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5045
    :sswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v8, :cond_2

    .line 5046
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 5048
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5052
    :sswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v8, :cond_3

    .line 5053
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 5055
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5059
    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v8, :cond_4

    .line 5060
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 5062
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5067
    :sswitch_7
    const/16 v8, 0x3a

    .line 5066
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5068
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v8, :cond_6

    move v1, v7

    .line 5070
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 5071
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    .line 5072
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5074
    :cond_5
    :goto_2
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_7

    .line 5075
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v8, v3, v1

    .line 5076
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5077
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5074
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5068
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v1, v8

    goto :goto_1

    .line 5080
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v8, v3, v1

    .line 5081
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5082
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 5086
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5087
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5088
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_2

    .line 5097
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5098
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5093
    :pswitch_2
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 5094
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5104
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5105
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5106
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_3

    .line 5121
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5122
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5117
    :pswitch_3
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 5118
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5128
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 5129
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5133
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 5134
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5139
    :sswitch_c
    const/16 v8, 0x62

    .line 5138
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5140
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v8, :cond_9

    move v1, v7

    .line 5142
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 5143
    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_8

    .line 5144
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5146
    :cond_8
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_a

    .line 5147
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v8, v4, v1

    .line 5148
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5149
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5146
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5140
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v1, v8

    goto :goto_3

    .line 5152
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_a
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v8, v4, v1

    .line 5153
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5154
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto/16 :goto_0

    .line 5158
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5159
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5160
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_4

    .line 5195
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5196
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5191
    :pswitch_5
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 5192
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5202
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5203
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5204
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_5

    .line 5217
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5218
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5213
    :pswitch_6
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 5214
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5224
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 5225
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5229
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5230
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5231
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_6

    .line 5241
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5242
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5237
    :pswitch_7
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 5238
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5248
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5249
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5250
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_7

    .line 5267
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5268
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5263
    :pswitch_8
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 5264
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5274
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_12
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-nez v8, :cond_b

    .line 5275
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 5277
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5281
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5282
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5283
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_8

    .line 5308
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5309
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5304
    :pswitch_9
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 5305
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5315
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5316
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 5317
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_9

    .line 5342
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5343
    invoke-virtual {p0, p1, v5}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5338
    :pswitch_a
    iput v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 5339
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5349
    .end local v2    # "initialPos":I
    .end local v6    # "value":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 5350
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 4958
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
    .end sparse-switch

    .line 4970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5006
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 5088
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5106
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 5160
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 5204
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 5231
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 5250
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 5283
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 5317
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4549
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    .line 4550
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4551
    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4530
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    .line 4531
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4532
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4477
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    .line 4478
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4479
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4590
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    .line 4591
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4592
    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4666
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    .line 4667
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4668
    return-object p0
.end method

.method public setMergedCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4568
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    .line 4569
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4570
    return-object p0
.end method

.method public setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 4726
    iput-wide p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    .line 4727
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4728
    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4511
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    .line 4512
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4513
    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4609
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    .line 4610
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4611
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4628
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    .line 4629
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4630
    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4688
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    .line 4689
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4690
    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4647
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    .line 4648
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4649
    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4707
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    .line 4708
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4709
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4458
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    .line 4459
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    .line 4460
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4776
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 4777
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->type_:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4779
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4780
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->delay_:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4782
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v3, :cond_2

    .line 4783
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4785
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v3, :cond_3

    .line 4786
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4788
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v3, :cond_4

    .line 4789
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4791
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v3, :cond_5

    .line 4792
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4794
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 4795
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 4796
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v3, v2

    .line 4797
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 4798
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4795
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4802
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v2    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 4803
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->phoneState_:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4805
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    .line 4806
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callState_:I

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4808
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    .line 4809
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->callIndex_:I

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4811
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    .line 4812
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex_:I

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4814
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v3

    if-lez v3, :cond_d

    .line 4815
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v3

    if-ge v2, v3, :cond_d

    .line 4816
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    aget-object v1, v3, v2

    .line 4817
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    if-eqz v1, :cond_c

    .line 4818
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4815
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4822
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .end local v2    # "i":I
    :cond_d
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_e

    .line 4823
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->error_:I

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4825
    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_f

    .line 4826
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequest_:I

    const/16 v4, 0xe

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4828
    :cond_f
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_10

    .line 4829
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->rilRequestId_:I

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4831
    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_11

    .line 4832
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srvccState_:I

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4834
    :cond_11
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_12

    .line 4835
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCommand_:I

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4837
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    if-eqz v3, :cond_13

    .line 4838
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    const/16 v4, 0x12

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 4840
    :cond_13
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_14

    .line 4841
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech_:I

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4843
    :cond_14
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_15

    .line 4844
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech_:I

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4846
    :cond_15
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_16

    .line 4847
    iget-wide v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis_:J

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4849
    :cond_16
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4775
    return-void
.end method
