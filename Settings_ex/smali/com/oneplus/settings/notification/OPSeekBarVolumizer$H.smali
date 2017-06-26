.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SEEKBAR:I = 0x2

.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 360
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    .line 361
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/widget/OPSeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$302(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 363
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$402(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 364
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-gez v1, :cond_2

    .line 365
    .local v0, "muted":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # setter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z
    invoke-static {v1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$502(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 367
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # getter for: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    # invokes: Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSeekBar()V

    .line 374
    .end local v0    # "muted":Z
    :cond_1
    return-void

    .line 364
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postUpdateSeekbar()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    .prologue
    const/4 v2, 0x1

    .line 378
    if-eqz p3, :cond_0

    const/4 v1, -0x1

    :goto_0
    mul-int v0, p2, v1

    .line 379
    .local v0, "arg2":I
    invoke-virtual {p0, v2, p1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void

    .end local v0    # "arg2":I
    :cond_0
    move v1, v2

    .line 378
    goto :goto_0
.end method
