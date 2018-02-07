.class public Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
.super Lcom/android/settings_ex/SeekBarPreference;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeSeekBarPreference"


# instance fields
.field private mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v0, 0x7f04014f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 57
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "/"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const v1, 0x7f090007

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v1, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V

    .line 137
    .local v1, "sbvc":Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    iget v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-nez v2, :cond_1

    .line 139
    new-instance v2, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;)V

    iput-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->start()V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stop()V

    .line 109
    :cond_2
    return-void

    .line 137
    :cond_3
    const/4 v0, 0x0

    .local v0, "sampleUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 204
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 200
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "showSuppression":Z
    goto :goto_0

    :cond_2
    move v1, v3

    .line 204
    goto :goto_1

    :cond_3
    move v3, v2

    .line 205
    goto :goto_2
.end method


# virtual methods
.method public onActivityPause()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stop()V

    .line 88
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V

    .line 82
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 98
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 103
    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 104
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f11027d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V

    .line 96
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 154
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .line 78
    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 183
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 182
    return-void
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    .line 74
    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 194
    return-void
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 177
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 174
    return-void
.end method
