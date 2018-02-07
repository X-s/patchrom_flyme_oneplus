.class public Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;
    }
.end annotation


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
.method static synthetic -get0(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    .line 381
    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method private initPreference(Z)V
    .locals 6
    .param p1, "is"    # Z

    .prologue
    const/4 v5, 0x1

    .line 107
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v4, :cond_3

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 109
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-static {p0, v4, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    .line 117
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 127
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 124
    .restart local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 130
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

    .line 131
    if-eqz p1, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 137
    :cond_5
    if-eqz p1, :cond_1

    .line 139
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private switchSimRingtone(Z)V
    .locals 2
    .param p1, "is"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 95
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_0

    .line 352
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 358
    .local v1, "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 350
    .end local v1    # "p":Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
    :cond_2
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRingtoneManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 56
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 58
    const-string/jumbo v0, "setting_title"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    .line 59
    const-string/jumbo v0, "setting_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    .line 60
    const-string/jumbo v0, "sim1_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    .line 61
    const-string/jumbo v0, "sim2_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    .line 62
    const-string/jumbo v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 63
    const-string/jumbo v0, "no_select"

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

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mContactsRingtone:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->switchSimRingtone(Z)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    .line 53
    return-void

    .line 75
    :cond_1
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 76
    const-string/jumbo v0, "local_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 77
    const-string/jumbo v0, "no_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 78
    const-string/jumbo v0, "defualt_select"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto :goto_0
.end method

.method private updateSimSwitch()V
    .locals 8

    .prologue
    const v7, 0x7f0e045f

    const/4 v6, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim1Enable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim2Enable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 224
    invoke-static {v3, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 226
    invoke-static {v3, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 229
    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 232
    .local v0, "summany1":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v6, 0x2

    .line 231
    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v1

    .line 233
    .local v1, "summany2":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 234
    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 236
    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-static {v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 237
    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 241
    iget-object v3, v1, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 240
    invoke-static {p0, v3, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    return-void

    .line 239
    :cond_3
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 411
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    if-ne p1, v1, :cond_0

    .line 412
    if-eqz p3, :cond_0

    .line 414
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    .line 413
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 415
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 417
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updatePreference()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 404
    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 406
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onDestroy()V

    .line 401
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v5, 0x12c

    const v8, 0x7f0e02af

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 248
    iput-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isSelectedNone:Z

    .line 250
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "setting_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 254
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 253
    :goto_0
    invoke-static {v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setRingSimSwitch(Landroid/content/Context;I)V

    .line 255
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 256
    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone2(Landroid/content/Context;)V

    .line 258
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    invoke-direct {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    .line 347
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 254
    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateActualRingtone(Landroid/content/Context;)V

    .line 265
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mMainRoot:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    invoke-direct {p0, v3}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V

    goto :goto_1

    .line 271
    :cond_2
    const-string/jumbo v2, "local_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 273
    new-instance v0, Landroid/content/Intent;

    .line 274
    const-class v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .line 273
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.ringtone.TYPE"

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string/jumbo v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 278
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 277
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v2, "ringtone_for_contacts"

    .line 280
    iget-boolean v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mContactsRingtone:Z

    .line 279
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mRequestCode:I

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v2, "no_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 290
    const-string/jumbo v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_4

    .line 293
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 292
    invoke-static {v2, v5, v7}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 295
    :cond_4
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v2, :cond_5

    .line 296
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 298
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 299
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 301
    iput-boolean v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isSelectedNone:Z

    .line 303
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 304
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto/16 :goto_1

    .line 305
    :cond_6
    const-string/jumbo v2, "sim1_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oneplus.intent.extra.ringtone.simid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 309
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Uri:Landroid/net/Uri;

    .line 308
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 312
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v2, "sim2_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/oneplus/settings/ringtone/OPSystemRingtonePicker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oneplus.intent.extra.ringtone.simid"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 316
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Uri:Landroid/net/Uri;

    .line 315
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v2, "android.intent.extra.ringtone.TYPE"

    iget v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 319
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v2, "defualt_select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 321
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 322
    const-string/jumbo v2, "-1"

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v2, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUriForDefaultItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 325
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 326
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v2, :cond_9

    .line 327
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 329
    :cond_9
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 330
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_1

    .line 332
    :cond_a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 333
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 334
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isThreePart()Z

    move-result v2

    if-nez v2, :cond_b

    .line 336
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    iget-object v6, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 335
    invoke-static {v2, v5, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 338
    :cond_b
    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 339
    iget-boolean v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v2, :cond_c

    .line 340
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 342
    :cond_c
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 343
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 344
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v2, v8}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 345
    iput-object v7, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 364
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onStart()V

    .line 365
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    .line 367
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 366
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    :cond_0
    invoke-super {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->onStop()V

    .line 374
    return-void
.end method

.method protected updateSelected()V
    .locals 8

    .prologue
    const v7, 0x7f0e02af

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 153
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    if-ne v1, v6, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSimSwitch()V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 159
    const-string/jumbo v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v7}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 161
    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 162
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mNOPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 175
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v7}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 176
    const-string/jumbo v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 177
    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 178
    return-void

    .line 180
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 183
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 183
    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v7}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(I)V

    .line 188
    iput-object v4, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 189
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 197
    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    if-eqz v1, :cond_7

    .line 198
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mDefualtPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setChecked(Z)V

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget v3, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    .line 200
    invoke-static {v1, v2, v3, v5}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    move-result-object v0

    .line 203
    .local v0, "summany":Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mUriForLocalItem:Landroid/net/Uri;

    .line 206
    const-string/jumbo v1, "-1"

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 207
    iget v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mLocalPreference:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 204
    :cond_8
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
