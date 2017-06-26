.class public Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEFUALT_SELECT_KEY:Ljava/lang/String; = "defualt_select"

.field private static final LOCAL_SELECT_KEY:Ljava/lang/String; = "local_select"

.field private static final MAIN_KEY:Ljava/lang/String; = "setting_title"

.field private static final NO_SELECT_KEY:Ljava/lang/String; = "no_select"

.field private static final SIM1_SELECT_KEY:Ljava/lang/String; = "sim1_select"

.field private static final SIM2_SELECT_KEY:Ljava/lang/String; = "sim2_select"

.field private static final SWITCH_KEY:Ljava/lang/String; = "setting_key"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mMainRoot:Landroid/preference/PreferenceCategory;

.field private mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

.field private mRequestCode:I

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
    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    .line 363
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method private initPreference(Z)V
    .locals 6
    .param p1, "is"    # Z

    .prologue
    const/4 v5, 0x1

    .line 103
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v4, :cond_3

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 105
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 113
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 123
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 120
    .restart local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 126
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 127
    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 126
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 133
    :cond_5
    if-eqz p1, :cond_1

    .line 135
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private switchSimRingtone(Z)V
    .locals 2
    .param p1, "is"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto :goto_0
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 342
    :cond_0
    return-void

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 338
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 340
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

.method private updatePreference()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 56
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 58
    const-string v0, "setting_title"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    .line 59
    const-string v0, "setting_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    .line 60
    const-string v0, "sim1_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    .line 61
    const-string v0, "sim2_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    .line 62
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 63
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 69
    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->switchSimRingtone(Z)V

    .line 82
    :goto_0
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    .line 89
    return-void

    .line 71
    :cond_1
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 72
    const-string v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 73
    const-string v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 74
    const-string v0, "defualt_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_2
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto :goto_0
.end method

.method private updateSimSwitch()V
    .locals 8

    .prologue
    const v7, 0x7f0c0223

    const/4 v6, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim1Enable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim2Enable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 225
    .local v0, "summany1":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v1

    .line 227
    .local v1, "summany2":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 228
    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 230
    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 393
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    if-ne p1, v1, :cond_0

    .line 394
    if-eqz p3, :cond_0

    .line 395
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 397
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 399
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    .line 403
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updatePreference()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 388
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    .line 389
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v5, 0x12c

    const v8, 0x7f0c0224

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "key":Ljava/lang/String;
    const-string v2, "setting_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setRingSimSwitch(Landroid/content/Context;I)V

    .line 246
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone2(Landroid/content/Context;)V

    .line 249
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 253
    invoke-direct {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 329
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 244
    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone(Landroid/content/Context;)V

    .line 256
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto :goto_1

    .line 262
    :cond_2
    const-string v2, "local_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_3

    .line 271
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 273
    :cond_3
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v2, "no_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 277
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_5

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v2, v5, v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 282
    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_6

    .line 283
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 285
    :cond_6
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 286
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 287
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 288
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto/16 :goto_1

    .line 289
    :cond_7
    const-string v2, "sim1_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 296
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v2, "sim2_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "oneplus.intent.extra.ringtone.simid"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 303
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v2, "defualt_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 304
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 305
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 306
    const-string v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 307
    const-string v2, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUriForDefaultItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 309
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 310
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 311
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 312
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_1

    .line 314
    :cond_a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 315
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 316
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_b

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 320
    :cond_b
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 321
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_c

    .line 322
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 324
    :cond_c
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 325
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 326
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 327
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onStart()V

    .line 347
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onStop()V

    .line 361
    return-void
.end method

.method protected updateSelected()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const v6, 0x7f0c0224

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v1, v5, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSimSwitch()V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 154
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 155
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 157
    iput-object v8, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 158
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 161
    :cond_1
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v1, v7, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_2
    :goto_0
    return-void

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 168
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 169
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 170
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 171
    iput-object v8, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto :goto_0

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 179
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 182
    iput-object v8, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 183
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_6

    .line 184
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 186
    :cond_6
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v1, v7, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 191
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_8

    .line 192
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 194
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 197
    .local v0, "summany":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 200
    const-string v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 201
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v1, v7, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 197
    :cond_9
    invoke-virtual {p0, v6}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
