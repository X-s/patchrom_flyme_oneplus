.class Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 282
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;

    .line 288
    .local v0, "msgData":Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleMessage(), msg.what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Lcom/oneplus/fingerprints/service/FingerprintManager;->msgToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mReleased = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v6}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleMessage(), msgData.mArg1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleMessage(), msgData.mArg2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleMessage(), msgData.mArg3 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$300(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    const-string v2, "FingerprintManager"

    const-string v3, " mReleased = true, just do nothing"

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 299
    :sswitch_0
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 303
    :sswitch_1
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    goto :goto_0

    .line 307
    :sswitch_2
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    goto :goto_0

    .line 311
    :sswitch_3
    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$500(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 312
    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$500(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v5

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v6

    if-ne v6, v2, :cond_2

    :goto_1
    invoke-interface {v4, v5, v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 316
    :sswitch_4
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto :goto_0

    .line 320
    :sswitch_5
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;->onProgress(I)V

    goto/16 :goto_0

    .line 332
    :sswitch_6
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " handleMessage()-> onNoMatch, mReleased = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIdentifyCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$500(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$500(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$500(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 341
    :sswitch_7
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 346
    :sswitch_8
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() -> onEnrollDuplicated ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollDuplicated(I)V

    goto/16 :goto_0

    .line 355
    :sswitch_9
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " handleMessage() --> MSG_NAVIGATE_SWITCH_VALUE_WRITE, msg.arg1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mReleased = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v6}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNavigateCallback =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mNavigateCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;
    invoke-static {v6}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$700(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mNavigateCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$700(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mNavigateCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$700(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_3

    :goto_2
    invoke-interface {v4, v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;->onNavigateSwitchValueWrite(Z)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 365
    :sswitch_a
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getCurrentStatusListener()Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;

    move-result-object v1

    .line 366
    .local v1, "statusListener":Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;
    if-eqz v1, :cond_0

    .line 367
    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;->onStatus(II)V

    .line 368
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onStatus ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->statusCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v1    # "statusListener":Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;
    :sswitch_b
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$800(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 374
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$800(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$300(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 375
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$800(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onResult ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$300(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_4
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$900(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 381
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$900(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$300(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 383
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    invoke-static {v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$900(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onResult ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oneplus/fingerprints/service/FingerprintManager;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$300(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_5
    :sswitch_c
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$1000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager;->mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;
    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->access$1000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

    move-result-object v2

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;->onImageQualityGet(I)V

    .line 390
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageQualityGet ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I
    invoke-static {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0x64 -> :sswitch_a
        0x65 -> :sswitch_b
        0xc9 -> :sswitch_8
        0xca -> :sswitch_c
    .end sparse-switch
.end method
