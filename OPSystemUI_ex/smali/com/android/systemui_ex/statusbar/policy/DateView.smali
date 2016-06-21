.class public Lcom/android/systemui_ex/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    .line 46
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/DateView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/R$styleable;->DateView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    .line 79
    :cond_0
    return-void

    .line 74
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/policy/DateView;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/DateView;
    .param p1, "x1"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isIncludeFontPadding(Ljava/lang/String;)Z
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->updateClock()V

    .line 93
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method protected updateClock()V
    .locals 8

    .prologue
    .line 109
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v4, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 111
    .local v1, "l":Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fmt":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 115
    .end local v0    # "fmt":Ljava/lang/String;
    .end local v1    # "l":Ljava/util/Locale;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "strLang":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/DateView;->isIncludeFontPadding(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/DateView;->setIncludeFontPadding(Z)V

    .line 118
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/DateView;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    .line 124
    :cond_1
    return-void
.end method
