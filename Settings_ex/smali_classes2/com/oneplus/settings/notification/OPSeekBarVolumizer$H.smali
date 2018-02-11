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
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 388
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get8(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-set1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 390
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-set0(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 391
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-gez v1, :cond_2

    const/4 v0, 0x1

    .line 392
    .local v0, "muted":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get5(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-set2(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 394
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get2(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get2(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get5(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSeekBar()V

    .line 386
    .end local v0    # "muted":Z
    :cond_1
    return-void

    .line 391
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "muted":Z
    goto :goto_0
.end method

.method public postUpdateSlider(IIZ)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    .prologue
    const/4 v2, 0x1

    .line 404
    if-eqz p3, :cond_0

    const/4 v1, -0x1

    :goto_0
    mul-int v0, p2, v1

    .line 405
    .local v0, "arg2":I
    invoke-virtual {p0, v2, p1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void

    .end local v0    # "arg2":I
    :cond_0
    move v1, v2

    .line 404
    goto :goto_0
.end method
