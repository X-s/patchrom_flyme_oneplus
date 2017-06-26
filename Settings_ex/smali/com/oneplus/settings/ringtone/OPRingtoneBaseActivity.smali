.class public abstract Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.super Lcom/oneplus/widget/preference/OPPreferenceActivity;
.source "OPRingtoneBaseActivity.java"

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

.field public mDefualtUri:Landroid/net/Uri;

.field public mHandler:Landroid/os/Handler;

.field public mHasDefaultItem:Z

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field public mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

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
    invoke-direct {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;-><init>()V

    .line 25
    iput v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 27
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    .line 28
    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    .line 32
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 168
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    .prologue
    .line 17
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopAnyPlayingRingtone2()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public getCountOfSim()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    :goto_0
    return v1

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 212
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

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 213
    goto :goto_0
.end method

.method public getSim1Enable()Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isThreePart()Z
    .locals 3

    .prologue
    .line 164
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasDefaultItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onBackPressed()V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 41
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    .line 43
    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    .line 45
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 48
    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 50
    .local v2, "title":Ljava/lang/CharSequence;
    const-string v3, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    .line 51
    if-nez v2, :cond_0

    .line 52
    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    if-ne v3, v5, :cond_1

    .line 53
    const v3, 0x7f0c0220

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_0
    :goto_0
    new-instance v3, Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    .line 61
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 62
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setVolumeControlStream(I)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    return-void

    .line 54
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 55
    const v3, 0x7f0c0221

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 57
    :cond_2
    const v3, 0x10403cd

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->finish()V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onStop()V

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onResume()V

    .line 140
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->lookupRingtoneNames()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    .line 144
    return-void
.end method

.method protected playRingtone(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "delayMs"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 98
    const-string v0, "RingtoneBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUriForDefaultItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 106
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    if-nez v0, :cond_2

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method protected stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 126
    return-void
.end method

.method protected abstract updateSelected()V
.end method
