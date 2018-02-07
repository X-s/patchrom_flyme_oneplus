.class public Lcom/oneplus/settings/OPGestureSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPGestureSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static BLACK_SCREEN_GESTURES:Ljava/lang/String; = null

.field private static final BLACK_SCREEN_SETTINGS_KEY:Ljava/lang/String; = "black_screen_setting_key"

.field private static final DOUBLE_CLICK_LIGHT_SCREEN_KEY:Ljava/lang/String; = "double_click_light_screen_key"

.field private static final DRAW_O_START_CAMERA_KEY:Ljava/lang/String; = "draw_o_start_camera_key"

.field private static final FLASH_LIGHT_KEY:Ljava/lang/String; = "open_light_device_key"

.field private static final MUSCI_CONTROL_KEY:Ljava/lang/String; = "music_control_key"

.field private static final MUSIC_CONTROL_NEXT_KEY:Ljava/lang/String; = "music_control_next_key"

.field private static final MUSIC_CONTROL_PAUSE_KEY:Ljava/lang/String; = "music_control_pause_key"

.field private static final MUSIC_CONTROL_PREV_KEY:Ljava/lang/String; = "music_control_prev_key"

.field private static final MUSIC_CONTROL_START_KEY:Ljava/lang/String; = "music_control_start_key"

.field private static MUSIC_ROOT_KEY:Ljava/lang/String; = null

.field private static final ROTATION_SILENT_KEY:Ljava/lang/String; = "rotation_silent_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static STARTUP_ROOT_KEY:Ljava/lang/String; = null

.field private static final THREE_SCEENTSHOTS_KEY:Ljava/lang/String; = "three_screenshots_enable"


# instance fields
.field private isDoubleClickEnable:I

.field private isFlashlightEnable:I

.field private isMusicControlEnable:I

.field private isMusicNextEnable:I

.field private isMusicPauseEnable:I

.field private isMusicPlayEnable:I

.field private isMusicPrevEnable:I

.field private isStartUpCameraEnable:I

.field private isSupportThreeScrrenShot:Z

.field private mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

.field private mBlackSettingValues:I

.field private mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicNextPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPausePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPrefererce:Landroid/support/v7/preference/PreferenceCategory;

.field private mMusicPrevPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicStartPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

.field private mStartUpPreferece:Landroid/support/v7/preference/PreferenceCategory;

.field private mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

.field private root:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static synthetic -wrap0()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "quick_startup"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->STARTUP_ROOT_KEY:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "music_control"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->MUSIC_ROOT_KEY:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "black_screen_gestures"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->BLACK_SCREEN_GESTURES:Ljava/lang/String;

    .line 412
    new-instance v0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;-><init>()V

    .line 411
    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    .line 41
    return-void
.end method

.method private getConfig()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 384
    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    .line 382
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    .line 386
    iget v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    invoke-static {v2, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isFlashlightEnable:I

    .line 387
    iget v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    invoke-static {v2, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPlayEnable:I

    .line 388
    iget v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPauseEnable:I

    .line 389
    iget v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicNextEnable:I

    .line 390
    iget v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPrevEnable:I

    .line 391
    iget v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPlayEnable:I

    if-ne v2, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicControlEnable:I

    .line 392
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isStartUpCameraEnable:I

    .line 393
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isDoubleClickEnable:I

    .line 380
    return-void

    :cond_0
    move v0, v1

    .line 391
    goto :goto_0
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "double_click_light_screen_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const-string/jumbo v1, "music_control_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    const-string/jumbo v1, "rotation_silent_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const-string/jumbo v1, "three_screenshots_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    const-string/jumbo v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    const-string/jumbo v1, "oneplus_draw_o_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    const-string/jumbo v1, "oneplus_draw_v_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    const-string/jumbo v1, "oneplus_draw_s_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    const-string/jumbo v1, "oneplus_draw_m_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    const-string/jumbo v1, "oneplus_draw_w_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-object v0
.end method

.method private initBlackScreenView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->STARTUP_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mStartUpPreferece:Landroid/support/v7/preference/PreferenceCategory;

    .line 196
    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->MUSIC_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    .line 197
    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->BLACK_SCREEN_GESTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    .line 199
    const-string/jumbo v0, "draw_o_start_camera_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 205
    :cond_0
    const-string/jumbo v0, "double_click_light_screen_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    const-string/jumbo v0, "music_control_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    const-string/jumbo v0, "open_light_device_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->getConfig()V

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isStartUpCameraEnable:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 239
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isDoubleClickEnable:I

    if-nez v0, :cond_5

    move v0, v1

    .line 238
    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 250
    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 251
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicControlEnable:I

    if-nez v0, :cond_6

    move v0, v1

    .line 250
    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 254
    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isFlashlightEnable:I

    if-nez v3, :cond_7

    .line 253
    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 194
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 235
    goto :goto_0

    :cond_5
    move v0, v2

    .line 239
    goto :goto_1

    :cond_6
    move v0, v2

    .line 251
    goto :goto_2

    :cond_7
    move v1, v2

    .line 254
    goto :goto_3
.end method

.method private initGestureSummary()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string/jumbo v2, "oneplus_draw_o_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string/jumbo v2, "oneplus_draw_v_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string/jumbo v2, "oneplus_draw_s_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string/jumbo v2, "oneplus_draw_m_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string/jumbo v2, "oneplus_draw_w_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .line 185
    :cond_0
    return-void
.end method

.method private initGestureViews()V
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "oneplus_draw_o_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    .line 169
    const-string/jumbo v0, "oneplus_draw_v_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    .line 170
    const-string/jumbo v0, "oneplus_draw_s_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    .line 171
    const-string/jumbo v0, "oneplus_draw_m_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    .line 172
    const-string/jumbo v0, "oneplus_draw_w_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    .line 173
    #iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    #invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    #move-result v0

    #if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 176
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 167
    :cond_0
    return-void
.end method

.method private initSensorView()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->root:Landroid/support/v7/preference/PreferenceScreen;

    .line 137
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 138
    const-string/jumbo v4, "oem.threeScreenshot.support"

    .line 137
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    .line 140
    const-string/jumbo v1, "three_screenshots_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    .line 142
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    const-string/jumbo v1, "rotation_silent_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    .line 145
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    const-string/jumbo v4, "oem_acc_sensor_three_finger"

    .line 147
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "isThreeShowEnable":I
    iget-object v4, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 156
    const-string/jumbo v5, "oem_acc_sensor_rotate_silent"

    .line 155
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    .line 154
    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->root:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 133
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 152
    goto :goto_0

    :cond_2
    move v2, v3

    .line 157
    goto :goto_1
.end method

.method private toggleMusicController(Z)V
    .locals 5
    .param p1, "open"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 362
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 363
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 364
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 359
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 367
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 368
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 369
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_0
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 399
    const-string/jumbo v3, "require_password_to_decrypt"

    .line 398
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 400
    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 406
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initBlackScreenView()V

    .line 128
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initGestureViews()V

    .line 129
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initSensorView()V

    .line 121
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "draw_o_start_camera_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 276
    :goto_0
    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "double_click_light_screen_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 286
    :goto_1
    return v1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "music_control_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->toggleMusicController(Z)V

    .line 289
    return v1

    .line 291
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "music_control_next_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicNextPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 299
    :goto_2
    return v1

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_2

    .line 301
    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "music_control_prev_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPrevPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 309
    :goto_3
    return v1

    .line 306
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_3

    .line 311
    :cond_8
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "open_light_device_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 312
    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 313
    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 318
    :goto_4
    return v1

    .line 315
    :cond_9
    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_4

    .line 319
    :cond_a
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "music_control_start_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 321
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicStartPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 327
    :goto_5
    return v1

    .line 324
    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_5

    .line 329
    :cond_c
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "music_control_pause_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 331
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPausePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 337
    :goto_6
    return v1

    .line 334
    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    goto :goto_6

    .line 339
    :cond_e
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "three_screenshots_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 341
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 342
    const-string/jumbo v3, "oem_acc_sensor_three_finger"

    .line 343
    iget-object v4, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v0, v1

    .line 341
    :cond_f
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    return v1

    .line 346
    :cond_10
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rotation_silent_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 349
    const-string/jumbo v3, "oem_acc_sensor_rotate_silent"

    .line 350
    iget-object v4, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v0, v1

    .line 348
    :cond_11
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    return v1

    .line 355
    :cond_12
    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initGestureSummary()V

    .line 260
    return-void
.end method
