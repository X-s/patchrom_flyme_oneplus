.class public abstract Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;
.super Landroid/preference/PreferenceActivity;
.source "OpRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtoneBaseActivity"


# instance fields
.field private isFirst:Z

.field private isPlaying:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field public mHandler:Landroid/os/Handler;

.field public mHasDefaultItem:Z

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field public mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

.field private mSimid:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mType:I

.field public mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 25
    iput v1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mType:I

    .line 27
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isFirst:Z

    .line 28
    iput v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I

    .line 32
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isPlaying:Z

    .line 141
    new-instance v0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;

    .prologue
    .line 17
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method private stopAnyPlayingRingtone2()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method public getCountOfSim()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    :goto_0
    return v1

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 185
    :cond_2
    const-string v1, "RingtoneBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountOfSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 186
    goto :goto_0
.end method

.method public getSim1Enable()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mType:I

    .line 41
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mHasDefaultItem:Z

    .line 43
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 46
    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 48
    .local v2, "title":Ljava/lang/CharSequence;
    const-string v3, "oneplus.intent.extra.ringtone.simid"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I

    .line 49
    if-nez v2, :cond_0

    .line 50
    iget v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I

    if-ne v3, v5, :cond_1

    .line 51
    const v3, 0x7f090116

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    :cond_0
    :goto_0
    new-instance v3, Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    .line 59
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    iget v4, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mType:I

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setType(I)V

    .line 60
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    invoke-virtual {v3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->setVolumeControlStream(I)V

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 67
    return-void

    .line 52
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget v3, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mSimid:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 53
    const v3, 0x7f090117

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_2
    const v3, 0x10404fc

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->finish()V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 130
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isFirst:Z

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->lookupRingtoneNames()V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isFirst:Z

    .line 134
    return-void
.end method

.method protected playRingtone(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "delayMs"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 91
    const-string v0, "RingtoneBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriForDefaultItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isPlaying:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isPlaying:Z

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->inferStreamType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 104
    :cond_1
    return-void
.end method

.method protected stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->isPlaying:Z

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 116
    return-void
.end method

.method protected abstract updateSelected()V
.end method
