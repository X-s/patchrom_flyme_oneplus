.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$Details;
    }
.end annotation


# static fields
.field public static final AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_CONNECTING:I = 0x9

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x7

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x3

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_DIAL_WAIT:I = 0x8

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCached:Z

.field private final mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mDetails:Landroid/telecom/Call$Details;

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field public mIsActiveSub:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCode:I

.field private mNotificationType:I

.field private mParentId:Ljava/lang/String;

.field private final mPhone:Landroid/telecom/Phone;

.field private mRemainingPostDialSequence:Ljava/lang/String;

.field private mState:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Z)V
    .locals 3
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "isActiveSub"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 579
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 580
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 582
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 586
    iput-object v2, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 588
    iput-object v2, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 596
    iput-boolean v1, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 863
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 864
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 865
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 866
    iput v1, p0, Landroid/telecom/Call;->mState:I

    .line 867
    iput-boolean p4, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 868
    return-void
.end method

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ZI)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "isActiveSub"    # Z
    .param p5, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 579
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 580
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 582
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 586
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 588
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 873
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 874
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 875
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 876
    iput p5, p0, Landroid/telecom/Call;->mState:I

    .line 877
    iput-boolean p4, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 878
    return-void
.end method

.method private fireCallDestroyed()V
    .locals 3

    .prologue
    .line 1049
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1050
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Call$Listener;->onCallDestroyed(Landroid/telecom/Call;)V

    goto :goto_0

    .line 1052
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1032
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 1034
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireChildrenChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1020
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 1022
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireConferenceableCallsChanged()V
    .locals 3

    .prologue
    .line 1055
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1056
    .local v1, "listener":Landroid/telecom/Call$Listener;
    iget-object v2, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Call$Listener;->onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 1058
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 1025
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1026
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    goto :goto_0

    .line 1028
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "newParent"    # Landroid/telecom/Call;

    .prologue
    .line 1013
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1014
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V

    goto :goto_0

    .line 1016
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private firePostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1044
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 1007
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1008
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onStateChanged(Landroid/telecom/Call;I)V

    goto :goto_0

    .line 1010
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 3
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 1037
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1038
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    goto :goto_0

    .line 1040
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private stateFromParcelableCallState(I)I
    .locals 4
    .param p1, "parcelableCallState"    # I

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1061
    packed-switch p1, :pswitch_data_0

    .line 1083
    const-string v2, "Unrecognized CallState %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    :goto_0
    :pswitch_0
    return v0

    .line 1065
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1067
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1069
    goto :goto_0

    .line 1071
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 1073
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1075
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 1077
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 1079
    goto :goto_0

    .line 1081
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Call$Listener;

    .prologue
    .line 847
    iget-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    return-void
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 623
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .prologue
    .line 726
    if-eqz p1, :cond_0

    .line 727
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method public deflectCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->deflectCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public getCannedTextResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    iget-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v3, :cond_1

    .line 774
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 775
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 777
    iget-object v3, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v3, v2}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 779
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_0

    .line 781
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_0

    .line 783
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v3
.end method

.method public getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public getNotificationCode()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Landroid/telecom/Call;->mNotificationCode:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Landroid/telecom/Call;->mNotificationType:I

    return v0
.end method

.method public getParent()Landroid/telecom/Call;
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 763
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final internalSetDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 998
    iget v0, p0, Landroid/telecom/Call;->mState:I

    if-eq v0, v1, :cond_0

    .line 999
    iput v1, p0, Landroid/telecom/Call;->mState:I

    .line 1000
    iget v0, p0, Landroid/telecom/Call;->mState:I

    invoke-direct {p0, v0}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 1001
    invoke-direct {p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 1002
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1004
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 992
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 993
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 31
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    new-instance v3, Landroid/telecom/Call$Details;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallSubstate()I

    move-result v18

    invoke-direct/range {v3 .. v18}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;I)V

    .line 903
    .local v3, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v23, 0x1

    .line 904
    .local v23, "detailsChanged":Z
    :goto_0
    if-eqz v23, :cond_0

    .line 905
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 908
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getNotificationType()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/telecom/Call;->mNotificationType:I

    .line 909
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getNotificationCode()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/telecom/Call;->mNotificationCode:I

    .line 911
    const/4 v2, 0x0

    .line 912
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 918
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v30, 0x1

    .line 919
    .local v30, "videoCallChanged":Z
    :goto_1
    if-eqz v30, :cond_2

    .line 920
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 923
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->stateFromParcelableCallState(I)I

    move-result v28

    .line 924
    .local v28, "state":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move/from16 v0, v28

    if-ne v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/telecom/Call;->mIsActiveSub:Z

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/telecom/ParcelableCall;->mIsActiveSub:Z

    if-eq v4, v5, :cond_a

    :cond_3
    const/16 v29, 0x1

    .line 925
    .local v29, "stateChanged":Z
    :goto_2
    if-eqz v29, :cond_4

    .line 926
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telecom/Call;->mState:I

    .line 927
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/telecom/ParcelableCall;->mIsActiveSub:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 930
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v27

    .line 931
    .local v27, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v26, 0x1

    .line 932
    .local v26, "parentChanged":Z
    :goto_3
    if-eqz v26, :cond_5

    .line 933
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 936
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v19

    .line 937
    .local v19, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v20, 0x1

    .line 938
    .local v20, "childrenChanged":Z
    :goto_4
    if-eqz v20, :cond_6

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 941
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 944
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v21

    .line 945
    .local v21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    .local v22, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 947
    .local v25, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 948
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 903
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "childrenChanged":Z
    .end local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v23    # "detailsChanged":Z
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "otherId":Ljava/lang/String;
    .end local v26    # "parentChanged":Z
    .end local v27    # "parentId":Ljava/lang/String;
    .end local v28    # "state":I
    .end local v29    # "stateChanged":Z
    .end local v30    # "videoCallChanged":Z
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 918
    .restart local v2    # "cannedTextResponsesChanged":Z
    .restart local v23    # "detailsChanged":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 924
    .restart local v28    # "state":I
    .restart local v30    # "videoCallChanged":Z
    :cond_a
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 931
    .restart local v27    # "parentId":Ljava/lang/String;
    .restart local v29    # "stateChanged":Z
    :cond_b
    const/16 v26, 0x0

    goto :goto_3

    .line 937
    .restart local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "parentChanged":Z
    :cond_c
    const/16 v20, 0x0

    goto :goto_4

    .line 952
    .restart local v20    # "childrenChanged":Z
    .restart local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 955
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 961
    :cond_e
    if-eqz v29, :cond_f

    .line 962
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 964
    :cond_f
    if-eqz v23, :cond_10

    .line 965
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 967
    :cond_10
    if-eqz v2, :cond_11

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 970
    :cond_11
    if-eqz v30, :cond_12

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 973
    :cond_12
    if-eqz v26, :cond_13

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 976
    :cond_13
    if-eqz v20, :cond_14

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 984
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_15

    .line 985
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 986
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 988
    :cond_15
    return-void
.end method

.method public mergeConference()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 716
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 718
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 675
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 676
    return-void
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 708
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 709
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 642
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 643
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Call$Listener;

    .prologue
    .line 856
    if-eqz p1, :cond_0

    .line 857
    iget-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 859
    :cond_0
    return-void
.end method

.method public splitFromConference()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public swapConference()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 664
    return-void
.end method
