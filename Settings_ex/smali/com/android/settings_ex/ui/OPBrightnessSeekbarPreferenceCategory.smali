.class public Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;
.super Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;
.source "OPBrightnessSeekbarPreferenceCategory.java"

# interfaces
.implements Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;


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

.field private mSeekBar:Lcom/oneplus/widget/OPSeekBar;

.field private mSeekBarMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 55
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    .line 56
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 62
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

    .line 64
    return-void
.end method

.method private updateMode()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x2

    .line 99
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 104
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mAutomatic:Z

    .line 106
    iget-boolean v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mAutomatic:Z

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 113
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

    .line 128
    .end local v1    # "value":F
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 124
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
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings_ex/ui/OPSeekbarPreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 77
    const v0, 0x7f120128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPSeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    iget v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBarMax:I

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 87
    return-void
.end method

.method public onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V
    .locals 3
    .param p1, "arg0"    # Lcom/oneplus/widget/OPSeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 144
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

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v2}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v2}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueChanged(II)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 2
    .param p1, "arg0"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 173
    const-string v0, "display"

    const-string v1, "start tracking seekbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    .line 175
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 3
    .param p1, "arg0"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 180
    const-string v0, "display"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop tracking seekbar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v2}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v1}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->saveBrightnessDataBase(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public setBrightness(Ljava/lang/String;)V
    .locals 3
    .param p1, "brightness"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 133
    const-string p1, "0"

    .line 135
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

    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:Ljava/lang/String;

    .line 137
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

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->notifyChanged()V

    .line 139
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    .line 68
    return-void
.end method

.method public setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBarMax:I

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-eqz v0, :cond_0

    .line 159
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

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/OPSeekBar;->setMax(I)V

    .line 165
    :cond_0
    return-void
.end method
