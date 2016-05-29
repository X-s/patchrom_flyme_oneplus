.class public Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeSeekBarPreference"


# instance fields
.field private mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    iput-object p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    .line 61
    const v0, 0x7f0400aa

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 40
    iget v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 138
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_0

    .line 201
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 140
    new-instance v1, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/oneplus/settings/notification/VolumeSeekBarPreference;)V

    .line 164
    .local v1, "sbvc":Landroid/preference/SeekBarVolumizer$Callback;
    iget v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    .line 165
    .local v0, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 166
    new-instance v3, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 169
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 170
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 172
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_three_key_define"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, "threeKeyMode":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    iget v4, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v5, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 200
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0

    .line 164
    .end local v0    # "sampleUri":Landroid/net/Uri;
    .end local v2    # "threeKeyMode":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 257
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 260
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0

    .restart local v0    # "showSuppression":Z
    :cond_2
    move v2, v3

    .line 257
    goto :goto_1

    :cond_3
    move v3, v1

    .line 258
    goto :goto_2
.end method


# virtual methods
.method public changeLowProgress(F)V
    .locals 1
    .param p1, "moveToLeft"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iput p1, v0, Landroid/widget/SeekBar;->lowProgress:F

    .line 266
    :cond_0
    return-void
.end method

.method public getVolumeValue()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->init()V

    .line 88
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 111
    iget v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v1, :cond_0

    .line 112
    const-string v1, "VolumeSeekBarPreference"

    const-string v2, "No stream found, not binding volumizer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 116
    :cond_0
    const v1, 0x1020370

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 117
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 118
    const v1, 0x7f0f01bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 119
    const/4 v1, 0x5

    iget v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-ne v1, v2, :cond_2

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_three_key_define"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "threeKeyMode":I
    if-ne v4, v0, :cond_3

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->changeLowProgress(F)V

    .line 131
    .end local v0    # "threeKeyMode":I
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->init()V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0

    .line 128
    .restart local v0    # "threeKeyMode":I
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->changeLowProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 208
    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    .line 82
    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 236
    iget v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    .line 238
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    .line 78
    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    goto :goto_0
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 230
    iget v0, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 232
    invoke-direct {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method

.method public updateStreamVolume()V
    .locals 5

    .prologue
    .line 210
    iget v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;

    if-nez v3, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 212
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    iget v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 213
    .local v2, "maxVolume":I
    iget v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 214
    .local v0, "currentVolume":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
