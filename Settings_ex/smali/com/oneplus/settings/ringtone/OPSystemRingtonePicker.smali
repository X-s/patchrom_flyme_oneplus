.class public Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPSystemRingtonePicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEFUALT_SELECT_KEY:Ljava/lang/String; = "defualt_select"

.field private static final LOCAL_SELECT_KEY:Ljava/lang/String; = "local_select"

.field private static final NO_SELECT_KEY:Ljava/lang/String; = "no_select"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUriForLocalItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    return-void
.end method

.method private initPreference()V
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    .line 48
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 61
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    .end local v0    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 103
    .local v1, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->addPreferencesFromResource(I)V

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 35
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 36
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 37
    const-string v0, "defualt_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->initPreference()V

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateSelected()V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 159
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    .line 160
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x7f0c0163

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "key":Ljava/lang/String;
    const-string v2, "local_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->stopAnyPlayingRingtone()V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 120
    :cond_0
    const-string v2, "no_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->stopAnyPlayingRingtone()V

    .line 122
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 131
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 132
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 133
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    .line 136
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->playRingtone(ILandroid/net/Uri;)V

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v2, v5, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 144
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 146
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 147
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 148
    iput-object v6, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v2, v4, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_2
.end method

.method protected updateSelected()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const v5, 0x7f0c0163

    const/4 v4, 0x0

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 71
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 72
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 74
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    .line 93
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 80
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 82
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getSimId()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 87
    .local v0, "summany":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->mUriForLocalItem:Landroid/net/Uri;

    .line 90
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->updateChecks(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
