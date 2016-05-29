.class public Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
.super Landroid/preference/Preference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field private mContext:Landroid/content/Context;

.field private mEndImage:Landroid/widget/ImageView;

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mIconView:Landroid/widget/ImageView;

.field private mRingVolume:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStream:I

.field private mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->initView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

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

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    .line 116
    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public getVolumeValue()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->stop()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 122
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 123
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_1

    .line 124
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 128
    const v0, 0x7f0f010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 129
    .local v6, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v6, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq v6, v0, :cond_0

    .line 131
    iput-object v6, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 132
    new-instance v5, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V

    .line 140
    .local v5, "sbvc":Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v4

    .line 141
    .local v4, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_three_key_define"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 159
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 162
    const v0, 0x7f0f010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mHeaderImage:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mHeaderImage:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    const v0, 0x7f0f0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mEndImage:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mEndImage:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 140
    .end local v4    # "sampleUri":Landroid/net/Uri;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 156
    .restart local v4    # "sampleUri":Landroid/net/Uri;
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 239
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 240
    .local v2, "maxVolume":I
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 242
    .local v0, "currentVolume":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 257
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 258
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    invoke-interface {v3, v5, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 259
    return-void

    .line 244
    :pswitch_1
    if-lez v0, :cond_0

    .line 245
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 249
    :pswitch_2
    if-ge v0, v2, :cond_0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f010e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onHandlerDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->destroy()V

    .line 109
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 221
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 227
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 233
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .line 84
    return-void
.end method

.method public setSeekBarStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->notifyChanged()V

    .line 204
    :cond_0
    return-void
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    .line 80
    return-void
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :cond_0
    return-void
.end method
