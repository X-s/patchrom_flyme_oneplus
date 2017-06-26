.class public Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessSeekBarPreference"


# instance fields
.field private mBrightness:Ljava/lang/String;

.field private mCallback:Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mInitBrightness:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mInitBrightness:Z

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mBrightness:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 78
    const v1, 0x10203a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 80
    .local v0, "seekBar":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v0, v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 84
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mBrightness:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mCallback:Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;->onBrightValueChanged(II)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mCallback:Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;->onBrightValueChanged(II)V

    .line 102
    return-void
.end method

.method public setBrightness(Ljava/lang/String;)V
    .locals 0
    .param p1, "brightness"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mBrightness:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mCallback:Lcom/android/settings_ex/ui/BrightnessSeekBarPreference$CallbackBrightness;

    .line 54
    return-void
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/ui/BrightnessSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :cond_0
    return-void
.end method
