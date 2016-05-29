.class public Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BlackScreenPreferenceFragement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final BLACK_SCREEN_SETTINGS_KEY:Ljava/lang/String; = "black_screen_setting_key"

.field private static final DOUBLE_CLICK_LIGHT_SCREEN_KEY:Ljava/lang/String; = "double_click_light_screen_key"

.field private static final DRAW_O_START_CAMERA_KEY:Ljava/lang/String; = "draw_o_start_camera_key"

.field private static final FLASH_LIGHT_KEY:Ljava/lang/String; = "open_light_device_key"

.field private static final MUSCI_CONTROL_KEY:Ljava/lang/String; = "music_control_key"

.field private static final MUSIC_CONTROL_NEXT_KEY:Ljava/lang/String; = "music_control_next_key"

.field private static final MUSIC_CONTROL_PAUSE_KEY:Ljava/lang/String; = "music_control_pause_key"

.field private static final MUSIC_CONTROL_PREV_KEY:Ljava/lang/String; = "music_control_prev_key"

.field private static final MUSIC_CONTROL_START_KEY:Ljava/lang/String; = "music_control_start_key"

.field private static MUSIC_ROOT_KEY:Ljava/lang/String;

.field private static STARTUP_ROOT_KEY:Ljava/lang/String;


# instance fields
.field private isDoubleClickEnable:I

.field private isFlashlightEnable:I

.field private isMusicControlEnable:I

.field private isMusicNextEnable:I

.field private isMusicPauseEnable:I

.field private isMusicPlayEnable:I

.field private isMusicPrevEnable:I

.field private isStartUpCameraEnable:I

.field private mBlackSettingValues:I

.field private mCameraPerference:Landroid/preference/SwitchPreference;

.field private mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

.field private mFlashLightPreference:Landroid/preference/SwitchPreference;

.field private mMusicNextPreference:Landroid/preference/SwitchPreference;

.field private mMusicPausePreference:Landroid/preference/SwitchPreference;

.field private mMusicPreference:Landroid/preference/SwitchPreference;

.field private mMusicPrefererce:Landroid/preference/PreferenceCategory;

.field private mMusicPrevPreference:Landroid/preference/SwitchPreference;

.field private mMusicStartPreference:Landroid/preference/SwitchPreference;

.field private mStartUpPreferece:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "quick_startup"

    sput-object v0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->STARTUP_ROOT_KEY:Ljava/lang/String;

    .line 53
    const-string v0, "music_control"

    sput-object v0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->MUSIC_ROOT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private get(II)I
    .locals 1
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 314
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    and-int/2addr v0, p1

    shr-int/2addr v0, p2

    return v0
.end method

.method private getConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    .line 299
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isFlashlightEnable:I

    .line 300
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicPlayEnable:I

    .line 301
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicPauseEnable:I

    .line 302
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicNextEnable:I

    .line 303
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicPrevEnable:I

    .line 304
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicControlEnable:I

    .line 305
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isStartUpCameraEnable:I

    .line 306
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->get(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isDoubleClickEnable:I

    .line 308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig mBlackSettingValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->getConfig()V

    .line 135
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mCameraPerference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isStartUpCameraEnable:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isDoubleClickEnable:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicPrevEnable:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 169
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicNextEnable:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 171
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicPlayEnable:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 173
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isMusicPauseEnable:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    iget v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->isFlashlightEnable:I

    if-nez v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v0, v2

    .line 143
    goto :goto_1

    :cond_2
    move v0, v2

    .line 161
    goto :goto_2

    :cond_3
    move v0, v2

    .line 169
    goto :goto_3

    :cond_4
    move v0, v2

    .line 171
    goto :goto_4

    :cond_5
    move v0, v2

    .line 173
    goto :goto_5

    :cond_6
    move v1, v2

    .line 175
    goto :goto_6
.end method

.method private set0(II)I
    .locals 4
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 374
    packed-switch p2, :pswitch_data_0

    .line 409
    const/16 v0, 0xff

    .line 413
    .local v0, "mul":I
    :goto_0
    and-int v1, p1, v0

    iput v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    .line 415
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set0 mBlackSettingValues : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    iget v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    and-int v1, p1, v0

    return v1

    .line 378
    .end local v0    # "mul":I
    :pswitch_0
    const/16 v0, 0xfe

    .line 379
    .restart local v0    # "mul":I
    goto :goto_0

    .line 382
    .end local v0    # "mul":I
    :pswitch_1
    const/16 v0, 0xfd

    .line 383
    .restart local v0    # "mul":I
    goto :goto_0

    .line 386
    .end local v0    # "mul":I
    :pswitch_2
    const/16 v0, 0xfb

    .line 387
    .restart local v0    # "mul":I
    goto :goto_0

    .line 390
    .end local v0    # "mul":I
    :pswitch_3
    const/16 v0, 0xf7

    .line 391
    .restart local v0    # "mul":I
    goto :goto_0

    .line 394
    .end local v0    # "mul":I
    :pswitch_4
    const/16 v0, 0xef

    .line 395
    .restart local v0    # "mul":I
    goto :goto_0

    .line 398
    .end local v0    # "mul":I
    :pswitch_5
    const/16 v0, 0xdf

    .line 399
    .restart local v0    # "mul":I
    goto :goto_0

    .line 402
    .end local v0    # "mul":I
    :pswitch_6
    const/16 v0, 0xbf

    .line 403
    .restart local v0    # "mul":I
    goto :goto_0

    .line 406
    .end local v0    # "mul":I
    :pswitch_7
    const/16 v0, 0x7f

    .line 407
    .restart local v0    # "mul":I
    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private set1(II)I
    .locals 4
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 320
    packed-switch p2, :pswitch_data_0

    .line 355
    const/4 v0, 0x0

    .line 359
    .local v0, "mul":I
    :goto_0
    or-int v1, p1, v0

    iput v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    .line 361
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set1 mBlackSettingValues : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    iget v3, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    or-int v1, p1, v0

    return v1

    .line 324
    .end local v0    # "mul":I
    :pswitch_0
    const/4 v0, 0x1

    .line 325
    .restart local v0    # "mul":I
    goto :goto_0

    .line 328
    .end local v0    # "mul":I
    :pswitch_1
    const/4 v0, 0x2

    .line 329
    .restart local v0    # "mul":I
    goto :goto_0

    .line 332
    .end local v0    # "mul":I
    :pswitch_2
    const/4 v0, 0x4

    .line 333
    .restart local v0    # "mul":I
    goto :goto_0

    .line 336
    .end local v0    # "mul":I
    :pswitch_3
    const/16 v0, 0x8

    .line 337
    .restart local v0    # "mul":I
    goto :goto_0

    .line 340
    .end local v0    # "mul":I
    :pswitch_4
    const/16 v0, 0x10

    .line 341
    .restart local v0    # "mul":I
    goto :goto_0

    .line 344
    .end local v0    # "mul":I
    :pswitch_5
    const/16 v0, 0x20

    .line 345
    .restart local v0    # "mul":I
    goto :goto_0

    .line 348
    .end local v0    # "mul":I
    :pswitch_6
    const/16 v0, 0x40

    .line 349
    .restart local v0    # "mul":I
    goto :goto_0

    .line 352
    .end local v0    # "mul":I
    :pswitch_7
    const/16 v0, 0x80

    .line 353
    .restart local v0    # "mul":I
    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->addPreferencesFromResource(I)V

    .line 72
    sget-object v0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->STARTUP_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mStartUpPreferece:Landroid/preference/PreferenceCategory;

    .line 73
    sget-object v0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->MUSIC_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPrefererce:Landroid/preference/PreferenceCategory;

    .line 75
    const-string v0, "draw_o_start_camera_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mCameraPerference:Landroid/preference/SwitchPreference;

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mCameraPerference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    const-string v0, "double_click_light_screen_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    const-string v0, "music_control_prev_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    const-string v0, "music_control_next_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v0, "music_control_start_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string v0, "music_control_pause_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 93
    const-string v0, "open_light_device_key"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPrefererce:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "draw_o_start_camera_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mCameraPerference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    .line 290
    :goto_0
    return v0

    .line 200
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "double_click_light_screen_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    goto :goto_0

    .line 216
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_next_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    goto :goto_0

    .line 242
    :cond_4
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto :goto_0

    .line 247
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_prev_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v1, v6}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    goto :goto_0

    .line 258
    :cond_6
    iget v1, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v1, v6}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto :goto_0

    .line 263
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open_light_device_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 265
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 266
    iget v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    goto/16 :goto_0

    .line 268
    :cond_8
    iget v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto/16 :goto_0

    .line 272
    :cond_9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_start_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 274
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 275
    iget v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    :cond_a
    :goto_1
    move v0, v1

    .line 290
    goto/16 :goto_0

    .line 277
    :cond_b
    iget v2, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto :goto_1

    .line 280
    :cond_c
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "music_control_pause_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 283
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set1(II)I

    goto :goto_1

    .line 285
    :cond_d
    iget v0, p0, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->mBlackSettingValues:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->set0(II)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;->initView()V

    .line 116
    return-void
.end method
