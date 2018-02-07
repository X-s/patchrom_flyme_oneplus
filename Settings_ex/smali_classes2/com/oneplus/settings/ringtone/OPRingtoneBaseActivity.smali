.class public abstract Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.super Landroid/preference/PreferenceActivity;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;,
        Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;
    }
.end annotation


# static fields
.field public static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field public static final KEY_SELECTED_ITEM_URI:Ljava/lang/String; = "key_selected_item_uri"

.field private static final TAG:Ljava/lang/String; = "RingtoneBaseActivity"


# instance fields
.field private isFirst:Z

.field private isPlaying:Z

.field protected isSelectedNone:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field public mContactsRingtone:Z

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field public mDefualtUri:Landroid/net/Uri;

.field public mHandler:Landroid/os/Handler;

.field public mHasDefaultItem:Z

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

.field public mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

.field private mSimid:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mType:I

.field public mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    iput v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 34
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    .line 35
    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    .line 36
    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    .line 40
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    .line 244
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isThreePart()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method private stopAnyPlayingRingtone2()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 192
    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public getCountOfSim()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    return v3

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/4 v0, 0x1

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 288
    :cond_2
    const-string/jumbo v1, "RingtoneBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCountOfSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return v0
.end method

.method public getSim1Enable()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isThreePart()Z
    .locals 3

    .prologue
    .line 240
    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHasDefaultItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 236
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 69
    const/16 v5, 0x2000

    .line 68
    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 71
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    .line 76
    const-string/jumbo v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 75
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    .line 78
    const-string/jumbo v4, "ringtone_for_contacts"

    .line 77
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mContactsRingtone:Z

    .line 80
    const-string/jumbo v4, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 79
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    .line 83
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 84
    if-eqz p1, :cond_1

    .line 85
    const-string/jumbo v4, "key_selected_item_uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "mUriForDefaultItemStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 87
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 90
    .end local v2    # "mUriForDefaultItemStr":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isSelectedNone:Z

    if-eqz v4, :cond_4

    .line 96
    :cond_2
    :goto_0
    const-string/jumbo v4, "RingtoneBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDefualtUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefualtUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string/jumbo v4, "RingtoneBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUriForDefaultItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v4, "RingtoneBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mHasDefaultItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHasDefaultItem:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v4, "android.intent.extra.ringtone.TITLE"

    .line 99
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 101
    .local v3, "title":Ljava/lang/CharSequence;
    const-string/jumbo v4, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    .line 102
    if-nez v3, :cond_3

    .line 103
    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    if-ne v4, v8, :cond_5

    .line 104
    const v4, 0x7f0e02ac

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    :cond_3
    :goto_1
    new-instance v4, Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    .line 112
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    .line 113
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->setVolumeControlStream(I)V

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 115
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    new-instance v4, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    .line 65
    return-void

    .line 91
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_4
    const-string/jumbo v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto/16 :goto_0

    .line 105
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mSimid:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 106
    const v4, 0x7f0e02ad

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 108
    :cond_6
    const v4, 0x10403e9

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onBackPressed()V

    .line 128
    const/4 v0, 0x1

    return v0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 168
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const-string/jumbo v1, "key_selected_item_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "mUriForDefaultItemStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->lookupRingtoneNames()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isFirst:Z

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mPhoneCallListener:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$PhoneCallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 197
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "key_selected_item_uri"

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method protected playRingtone(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "delayMs"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 145
    const-string/jumbo v1, "RingtoneBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUriForDefaultItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 147
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 150
    invoke-static {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 152
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 157
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    if-nez v1, :cond_1

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 159
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 160
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->inferStreamType()I

    move-result v2

    .line 161
    const/4 v3, 0x2

    .line 159
    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 143
    :cond_2
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone2()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isPlaying:Z

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 175
    return-void
.end method

.method protected abstract updateSelected()V
.end method
