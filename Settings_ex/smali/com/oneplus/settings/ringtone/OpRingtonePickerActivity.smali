.class public Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;
.source "OpRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final LOCAL_SELECT_KEY:Ljava/lang/String; = "local_select"

.field private static final MAIN_KEY:Ljava/lang/String; = "setting_title"

.field private static final NO_SELECT_KEY:Ljava/lang/String; = "no_select"

.field private static final SIM1_SELECT_KEY:Ljava/lang/String; = "sim1_select"

.field private static final SIM2_SELECT_KEY:Ljava/lang/String; = "sim2_select"

.field private static final SWITCH_KEY:Ljava/lang/String; = "setting_key"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

.field private mMainRoot:Landroid/preference/PreferenceCategory;

.field private mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

.field private mSim1Layout:Landroid/preference/Preference;

.field private mSim1Uri:Landroid/net/Uri;

.field private mSim2Layout:Landroid/preference/Preference;

.field private mSim2Uri:Landroid/net/Uri;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUriForLocalItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 302
    new-instance v0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method private initPreference(Z)V
    .locals 6
    .param p1, "is"    # Z

    .prologue
    const/4 v5, 0x1

    .line 96
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v4, :cond_3

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 98
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    iget v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-static {v4}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 113
    .restart local v1    # "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 119
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private switchSimRingtone(Z)V
    .locals 2
    .param p1, "is"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->initPreference(Z)V

    goto :goto_0
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 281
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 279
    .local v1, "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OpRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 54
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 56
    const-string v0, "setting_title"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    .line 57
    const-string v0, "setting_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    .line 58
    const-string v0, "sim1_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    .line 59
    const-string v0, "sim2_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    .line 60
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 61
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->switchSimRingtone(Z)V

    .line 75
    :goto_0
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateSelected()V

    .line 82
    return-void

    .line 69
    :cond_1
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 70
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 71
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 72
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->initPreference(Z)V

    goto :goto_0
.end method

.method private updateSimSwitch()V
    .locals 8

    .prologue
    const v7, 0x7f090119

    const/4 v6, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getSim1Enable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getSim2Enable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 186
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;

    move-result-object v0

    .line 188
    .local v0, "summany1":Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;

    move-result-object v1

    .line 190
    .local v1, "summany2":Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;
    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 191
    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 193
    iget v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_4
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updatePreference()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 327
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onDestroy()V

    .line 328
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x7f09011a

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "key":Ljava/lang/String;
    const-string v2, "setting_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setRingSimSwitch(Landroid/content/Context;I)V

    .line 209
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->updateActualRingtone2(Landroid/content/Context;)V

    .line 212
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    invoke-direct {p0, v4}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->initPreference(Z)V

    .line 268
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 207
    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->updateActualRingtone(Landroid/content/Context;)V

    .line 219
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->initPreference(Z)V

    goto :goto_1

    .line 225
    :cond_2
    const-string v2, "local_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "no_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 236
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-static {v2, v5, v7}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 239
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 240
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 241
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 242
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_1

    .line 243
    :cond_4
    const-string v2, "sim1_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 250
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v2, "sim2_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OpSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 258
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 259
    const/16 v2, 0x12c

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v2, v5}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 262
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 264
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 265
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 266
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 285
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onStart()V

    .line 286
    iget v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onStop()V

    .line 300
    return-void
.end method

.method protected updateSelected()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f09011a

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    iget v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    if-ne v1, v5, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateSimSwitch()V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 138
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v7}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 140
    iput-object v8, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 141
    iget v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    if-ne v1, v6, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mNoPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v7}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(I)V

    .line 151
    iput-object v8, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 152
    iget v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    if-ne v1, v6, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;

    move-result-object v0

    .line 160
    .local v0, "summany":Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 163
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 164
    iget v1, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mType:I

    if-ne v1, v6, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OpRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
