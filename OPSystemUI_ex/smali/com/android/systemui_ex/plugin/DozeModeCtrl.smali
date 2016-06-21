.class public Lcom/android/systemui_ex/plugin/DozeModeCtrl;
.super Lcom/android/systemui_ex/plugin/BaseCtrl;
.source "DozeModeCtrl.java"


# instance fields
.field mClockView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/BaseCtrl;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozePulsing()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;->mClockView:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;->mClockView:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartCtrl()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/DozeModeCtrl;->mClockView:Landroid/widget/TextClock;

    .line 18
    return-void
.end method
