.class final Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;
    .param p2, "x1"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer$1;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;-><init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$200(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$200(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->this$0:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    # getter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$200(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # setter for: Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->access$302(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;I)I

    .line 288
    :cond_0
    return-void
.end method

.method public postUpdateSlider(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 291
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method
