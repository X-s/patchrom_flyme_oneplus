.class public Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;
.super Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;
.source "OPBrightnessSeekbarPreferenceCategory.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 100.0f


# instance fields
.field private isManuallyTouchingSeekbar:Z

.field private mAutomatic:Z

.field private mBrightness:Ljava/lang/String;

.field private mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

.field private mContext:Landroid/content/Context;

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    .line 52
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 54
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    .line 55
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 59
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekbar initView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private updateMode()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x2

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 100
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mAutomatic:Z

    .line 102
    iget-boolean v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mAutomatic:Z

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 109
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 123
    .end local v1    # "value":F
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 118
    .local v1, "value":I
    iget v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 74
    const v0, 0x7f0f010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 139
    const-string v0, "display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar progress arg1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSeekBar.getProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueChanged(II)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 165
    const-string v0, "display"

    const-string v1, "start tracking seekbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    .line 167
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 172
    const-string v0, "display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop tracking seekbar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->saveBrightnessDataBase(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public setBrightness(Ljava/lang/String;)V
    .locals 3
    .param p1, "brightness"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 128
    const-string p1, "0"

    .line 130
    :cond_0
    const-string v0, "display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar brightness from caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 132
    const-string v0, "display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar brightness after set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->notifyChanged()V

    .line 134
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    .line 65
    return-void
.end method

.method public setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBarMax:I

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mseekbar is OK ! max : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 158
    :cond_0
    return-void
.end method
