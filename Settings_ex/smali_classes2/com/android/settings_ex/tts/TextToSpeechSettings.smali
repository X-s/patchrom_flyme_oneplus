.class public Lcom/android/settings_ex/tts/TextToSpeechSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/tts/TextToSpeechSettings$1;,
        Lcom/android/settings_ex/tts/TextToSpeechSettings$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GET_SAMPLE_TEXT:I = 0x7bf

.field private static final KEY_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field private static final KEY_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_ENGINE_PREFERENCE_SECTION:Ljava/lang/String; = "tts_engine_preference_section"

.field private static final KEY_PLAY_EXAMPLE:Ljava/lang/String; = "tts_play_example"

.field private static final KEY_RESET_SPEECH_PITCH:Ljava/lang/String; = "reset_speech_pitch"

.field private static final KEY_RESET_SPEECH_RATE:Ljava/lang/String; = "reset_speech_rate"

.field private static final KEY_STATUS:Ljava/lang/String; = "tts_status"

.field private static final MAX_SPEECH_PITCH:I = 0x190

.field private static final MAX_SPEECH_RATE:I = 0x258

.field private static final MIN_SPEECH_PITCH:I = 0x19

.field private static final MIN_SPEECH_RATE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TextToSpeechSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultPitch:I

.field private mDefaultPitchPref:Lcom/android/settings_ex/SeekBarPreference;

.field private mDefaultRate:I

.field private mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

.field private mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mEngineStatus:Landroid/support/v7/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/support/v7/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mResetSpeechPitch:Landroid/support/v7/preference/Preference;

.field private mResetSpeechRate:Landroid/support/v7/preference/Preference;

.field private mSampleText:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 118
    iput v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 119
    iput v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 138
    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 139
    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 141
    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/android/settings_ex/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings_ex/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 172
    new-instance v0, Lcom/android/settings_ex/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings_ex/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 55
    return-void
.end method

.method private checkDefaultLocale()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 346
    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 347
    .local v1, "defaultLocale":Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 348
    const-string/jumbo v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get default language from engine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 350
    const v3, 0x7f0e008f

    invoke-direct {p0, v3}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 351
    return-void

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 357
    .local v2, "oldDefaultLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 358
    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    iput-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 363
    .local v0, "defaultAvailable":I
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSampleText()V

    .line 345
    :cond_2
    return-void
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayNetworkAlert()V
    .locals 5

    .prologue
    .line 607
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 609
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e008a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 610
    const/4 v3, 0x0

    .line 608
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 611
    const v3, 0x104000a

    const/4 v4, 0x0

    .line 608
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 614
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 606
    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 11

    .prologue
    const v10, 0x7f0e008f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 371
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v6, :cond_1

    .line 372
    :cond_0
    return v8

    .line 375
    :cond_1
    const/4 v5, 0x1

    .line 378
    .local v5, "notInAvailableLangauges":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "defaultLocaleStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "loc$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 387
    .local v3, "loc":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    .line 388
    const/4 v5, 0x0

    .line 399
    .end local v3    # "loc":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 400
    .local v0, "defaultAvailable":I
    const/4 v6, -0x2

    if-eq v0, v6, :cond_6

    .line 401
    const/4 v6, -0x1

    if-ne v0, v6, :cond_7

    .line 404
    :cond_6
    invoke-direct {p0, v10}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 405
    invoke-direct {p0, v8}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 406
    return v8

    .line 392
    .end local v0    # "defaultAvailable":I
    .end local v1    # "defaultLocaleStr":Ljava/lang/String;
    .end local v4    # "loc$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Ljava/util/MissingResourceException;
    invoke-direct {p0, v10}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 395
    invoke-direct {p0, v8}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 396
    return v8

    .line 400
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .restart local v0    # "defaultAvailable":I
    .restart local v1    # "defaultLocaleStr":Ljava/lang/String;
    .restart local v4    # "loc$iterator":Ljava/util/Iterator;
    :cond_7
    if-nez v5, :cond_6

    .line 408
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 409
    const v6, 0x7f0e008e

    invoke-direct {p0, v6}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 413
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 414
    return v9

    .line 411
    :cond_8
    const v6, 0x7f0e008d

    invoke-direct {p0, v6}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    goto :goto_0
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 459
    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 461
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "currentLang":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 463
    const v6, 0x7f0a0026

    .line 462
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "strings":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 465
    const v6, 0x7f0a0027

    .line 464
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "langs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 468
    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    aget-object v5, v4, v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "langs":[Ljava/lang/String;
    .end local v4    # "strings":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 477
    :cond_1
    const v5, 0x7f0e008b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getSampleText()V
    .locals 6

    .prologue
    .line 423
    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "currentEngine":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "language"

    iget-object v4, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string/jumbo v3, "country"

    iget-object v4, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string/jumbo v3, "variant"

    iget-object v4, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const/16 v3, 0x7bf

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSeekBarProgressFromValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 324
    const-string/jumbo v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    add-int/lit8 v0, p2, -0xa

    return v0

    .line 326
    :cond_0
    const-string/jumbo v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    add-int/lit8 v0, p2, -0x19

    return v0

    .line 329
    :cond_1
    return p2
.end method

.method private getValueFromSeekBarProgress(Ljava/lang/String;I)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 311
    const-string/jumbo v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    add-int/lit8 v0, p2, 0xa

    return v0

    .line 313
    :cond_0
    const-string/jumbo v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    add-int/lit8 v0, p2, 0x19

    return v0

    .line 316
    :cond_1
    return p2
.end method

.method private initSettings()V
    .locals 10

    .prologue
    const/16 v7, 0x64

    const/high16 v9, 0x42c80000    # 100.0f

    .line 260
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 264
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "tts_default_rate"

    .line 263
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 266
    const-string/jumbo v6, "tts_default_pitch"

    .line 265
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 268
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

    const-string/jumbo v7, "tts_default_rate"

    iget v8, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 269
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

    const-string/jumbo v7, "tts_default_rate"

    const/16 v8, 0x258

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/SeekBarPreference;->setMax(I)V

    .line 272
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings_ex/SeekBarPreference;

    const-string/jumbo v7, "tts_default_pitch"

    .line 273
    iget v8, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 272
    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 274
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings_ex/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings_ex/SeekBarPreference;

    const-string/jumbo v7, "tts_default_pitch"

    .line 276
    const/16 v8, 0x190

    .line 275
    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/SeekBarPreference;->setMax(I)V

    .line 278
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v6, :cond_0

    .line 279
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 280
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v7, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 281
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v7, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v6, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .end local v0    # "activity":Lcom/android/settings_ex/SettingsActivity;
    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 292
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 294
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v6}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v4

    .line 295
    .local v4, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "engine$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 296
    .local v1, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v3, Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, v1, p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/android/settings_ex/SettingsActivity;)V

    .line 298
    .local v3, "enginePref":Lcom/android/settings_ex/tts/TtsEnginePreference;
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 288
    .end local v1    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2    # "engine$iterator":Ljava/util/Iterator;
    .end local v3    # "enginePref":Lcom/android/settings_ex/tts/TtsEnginePreference;
    .end local v4    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 301
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    .restart local v2    # "engine$iterator":Ljava/util/Iterator;
    .restart local v4    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 482
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 483
    return v1

    .line 485
    :cond_0
    const-string/jumbo v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const-string/jumbo v2, "embeddedTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    :cond_1
    :goto_0
    return v1

    .line 486
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "sample":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 493
    if-eqz p2, :cond_0

    const-string/jumbo v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    const-string/jumbo v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 503
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 489
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 693
    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "engine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 696
    const-string/jumbo v5, "TextToSpeechSettings"

    const-string/jumbo v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void

    .line 700
    :cond_0
    if-nez p1, :cond_1

    .line 701
    const-string/jumbo v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 702
    iget-object v7, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    .line 701
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 709
    const-string/jumbo v5, "availableVoices"

    .line 708
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 710
    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v5, :cond_2

    .line 711
    const-string/jumbo v5, "TextToSpeechSettings"

    const-string/jumbo v6, "Voice data check complete, but no available voices found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 715
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 716
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSampleText()V

    .line 719
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 720
    .local v1, "engineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 721
    iget-object v5, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 722
    .local v4, "p":Landroid/support/v7/preference/Preference;
    instance-of v5, v4, Lcom/android/settings_ex/tts/TtsEnginePreference;

    if-eqz v5, :cond_5

    move-object v2, v4

    .line 723
    check-cast v2, Lcom/android/settings_ex/tts/TtsEnginePreference;

    .line 724
    .local v2, "enginePref":Lcom/android/settings_ex/tts/TtsEnginePreference;
    invoke-virtual {v2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 725
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    .line 692
    .end local v2    # "enginePref":Lcom/android/settings_ex/tts/TtsEnginePreference;
    .end local v4    # "p":Landroid/support/v7/preference/Preference;
    :cond_4
    return-void

    .line 720
    .restart local v4    # "p":Landroid/support/v7/preference/Preference;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings_ex/tts/TextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings_ex/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 232
    return-void
.end method

.method private speakSampleText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    .line 511
    .local v0, "networkRequired":Z
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 513
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "utteranceId"

    const-string/jumbo v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 509
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v3, "Network required for sample synthesis for requested language"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 622
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 623
    const v1, 0x7f0e0090

    invoke-direct {p0, v1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 630
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_0
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 647
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 617
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEngineStatus(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 600
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 601
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEngineStatus:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    return-void
.end method

.method private updateSpeechPitchValue(I)V
    .locals 4
    .param p1, "speechPitchSeekBarProgress"    # I

    .prologue
    .line 577
    const-string/jumbo v1, "tts_default_pitch"

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 580
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 581
    const-string/jumbo v2, "tts_default_pitch"

    iget v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 580
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "could not persist default TTS pitch setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateSpeechRate(I)V
    .locals 4
    .param p1, "speechRateSeekBarProgress"    # I

    .prologue
    .line 561
    const-string/jumbo v1, "tts_default_rate"

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 565
    const-string/jumbo v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 564
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPlayExample:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/SeekBarPreference;->setEnabled(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEngineStatus:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 592
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x5e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 451
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 452
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 454
    invoke-direct {p0, p3}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 191
    const-string/jumbo v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPlayExample:Landroid/support/v7/preference/Preference;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPlayExample:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPlayExample:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 195
    const-string/jumbo v0, "reset_speech_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mResetSpeechRate:Landroid/support/v7/preference/Preference;

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mResetSpeechRate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    const-string/jumbo v0, "reset_speech_pitch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mResetSpeechPitch:Landroid/support/v7/preference/Preference;

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mResetSpeechPitch:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    const-string/jumbo v0, "tts_engine_preference_section"

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 202
    const-string/jumbo v0, "tts_default_pitch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings_ex/SeekBarPreference;

    .line 203
    const-string/jumbo v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

    .line 205
    const-string/jumbo v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEngineStatus:Landroid/support/v7/preference/Preference;

    .line 206
    const v0, 0x7f0e0090

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 208
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 209
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->initSettings()V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    .line 185
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 255
    iput-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 251
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x0

    .line 336
    if-nez p1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->checkDefaultLocale()V

    .line 335
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 525
    const-string/jumbo v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    .line 530
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 527
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "tts_default_pitch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 539
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPlayExample:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->speakSampleText()V

    .line 543
    return v3

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mResetSpeechRate:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 546
    const-string/jumbo v2, "tts_default_rate"

    .line 545
    invoke-direct {p0, v2, v4}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v1

    .line 547
    .local v1, "speechRateSeekbarProgress":I
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 548
    invoke-direct {p0, v1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    .line 549
    return v3

    .line 550
    .end local v1    # "speechRateSeekbarProgress":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mResetSpeechPitch:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 552
    const-string/jumbo v2, "tts_default_pitch"

    .line 551
    invoke-direct {p0, v2, v4}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v0

    .line 553
    .local v0, "pitchSeekbarProgress":I
    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 554
    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    .line 555
    return v3

    .line 557
    .end local v0    # "pitchSeekbarProgress":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 226
    .local v0, "ttsDefaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    :cond_2
    :goto_0
    return-void

    .line 227
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->checkDefaultLocale()V

    goto :goto_0
.end method

.method public onUpdateEngine(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 656
    if-nez p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 667
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 668
    iget-object v3, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 667
    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 669
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 671
    :cond_1
    iput-object v4, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 743
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    .line 748
    return-void
.end method
