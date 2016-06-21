.class public Lcom/android/systemui_ex/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/SplitClockView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/policy/SplitClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/SplitClockView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;)I
    .locals 9
    .param p0, "formatString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "hasAmPm":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 121
    .local v5, "length":I
    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 122
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    .local v0, "c":C
    const/16 v8, 0x61

    if-ne v0, v8, :cond_2

    const/4 v3, 0x1

    .line 124
    .local v3, "isAmPm":Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 125
    .local v4, "isWhitespace":Z
    if-eqz v3, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 128
    :cond_0
    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    .line 121
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_2
    move v3, v6

    .line 123
    goto :goto_1

    .line 131
    .restart local v3    # "isAmPm":Z
    .restart local v4    # "isWhitespace":Z
    :cond_3
    add-int/lit8 v6, v5, -0x1

    if-ne v2, v6, :cond_5

    move v6, v7

    .line 145
    .end local v0    # "c":C
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_4
    :goto_2
    return v6

    .line 139
    .restart local v0    # "c":C
    .restart local v3    # "isAmPm":Z
    .restart local v4    # "isWhitespace":Z
    :cond_5
    if-eqz v1, :cond_6

    add-int/lit8 v6, v2, 0x1

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_2

    .line 145
    .end local v0    # "c":C
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_7
    if-nez v1, :cond_4

    move v6, v7

    goto :goto_2
.end method

.method private updatePatterns()V
    .locals 6

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "formatString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;)I

    move-result v2

    .line 95
    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 97
    const-string v4, "ah:mm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "aK:mm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    :cond_0
    const-string v3, "h:mm"

    .line 102
    .local v3, "timeString":Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 107
    .local v0, "amPmString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v4, v3}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v4, v3}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v4, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v4, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 100
    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_1
    move-object v3, v1

    .restart local v3    # "timeString":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    .restart local v3    # "timeString":Ljava/lang/String;
    const-string v0, ""

    .restart local v0    # "amPmString":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->updatePatterns()V

    .line 81
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 63
    const v0, 0x7f0f0148

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 64
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 66
    return-void
.end method
