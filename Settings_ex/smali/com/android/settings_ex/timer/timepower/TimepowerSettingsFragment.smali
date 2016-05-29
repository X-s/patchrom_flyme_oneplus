.class public Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    }
.end annotation


# static fields
.field private static final EXTRA_DISPLAY_TIME:Ljava/lang/String; = "display_time"

.field private static final EXTRA_HOUR:Ljava/lang/String; = "hour"

.field private static final EXTRA_IS_24HOUR:Ljava/lang/String; = "24hour"

.field private static final EXTRA_MINUTE:Ljava/lang/String; = "minute"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"

.field private static final EXTRA_POWER_TYPE:Ljava/lang/String; = "power_type"

.field private static final ITEM_COUNT:I = 0x2

.field private static final KEY_POWER_OFF_SETTINGS:Ljava/lang/String; = "oneplus_power_off_settings"

.field private static final KEY_POWER_ON_SETTINGS:Ljava/lang/String; = "oneplus_power_on_settings"

.field private static final POWER_OFF_TYPE:I = 0x1

.field private static final POWER_ON_TYPE:I = 0x0

.field private static final PREFERENCE_POWER_OFF_SETTINGS:Ljava/lang/String; = "power_off_settings"

.field private static final PREFERENCE_POWER_OFF_STATE:Ljava/lang/String; = "power_off_switch"

.field private static final PREFERENCE_POWER_ON_SETTINGS:Ljava/lang/String; = "power_on_settings"

.field private static final PREFERENCE_POWER_ON_STATE:Ljava/lang/String; = "power_on_switch"

.field private static final REQUEST_CODE_POWER_OFF:I = 0x1

.field private static final REQUEST_CODE_POWER_ON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TimepowerSettingsFragment"

.field private static misCheckedPoweroff:Z

.field private static misCheckedPoweron:Z


# instance fields
.field private mCode:I

.field private mDlgVisible:Z

.field private mPowerOffPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

.field private mPowerOffPreference:Landroid/preference/Preference;

.field private mPowerOffStatePref:Landroid/preference/SwitchPreference;

.field private mPowerOnPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

.field private mPowerOnPreference:Landroid/preference/Preference;

.field private mPowerOnStatePref:Landroid/preference/SwitchPreference;

.field private mPowerState:Z

.field private mStateArray:[[Z

.field private mTimeArray:[[I

.field private mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 83
    sput-boolean v0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 73
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    .line 74
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 100
    return-void
.end method

.method private ReturnData()V
    .locals 4

    .prologue
    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 586
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "power_state"

    iget-boolean v3, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    const-string v2, "hour"

    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    const-string v2, "minute"

    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 591
    iget v2, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mCode:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->returnNewTimeSetResult(ILandroid/content/Intent;)V

    .line 592
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->ReturnData()V

    return-void
.end method

.method private static boolToInt(Z)I
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 595
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 8
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 233
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 237
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const v2, 0x7f090ba7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "halfday":Ljava/lang/String;
    if-lt p1, v3, :cond_2

    .line 239
    const v2, 0x7f090ba8

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    if-le p1, v3, :cond_1

    .line 241
    add-int/lit8 p1, p1, -0xc

    .line 246
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_1

    .line 244
    const/16 p1, 0xc

    goto :goto_1
.end method

.method private getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "type"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "powerstate"    # Z
    .param p5, "currenttime"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 315
    :goto_0
    return-object v1

    .line 304
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "24hour"

    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string v2, "power_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    const-string v2, "display_time"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "hour"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v2, "minute"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v2, "power_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getPowerOnOffStatus(Ljava/lang/String;)Z
    .locals 1
    .param p0, "OnOff"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "PowerOnFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    sget-boolean v0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 344
    :goto_0
    return v0

    .line 341
    :cond_0
    const-string v0, "PowerOffFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    sget-boolean v0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    goto :goto_0

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeSettingsIntent(I)Landroid/content/Intent;
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    if-eqz p1, :cond_0

    if-eq p1, v7, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v6

    aget-boolean v4, v0, v6

    .line 270
    .local v4, "powerstate":Z
    const-string v0, "TIMER"

    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "currenttime":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v6

    aget v2, v0, v6

    .line 276
    .local v2, "hour":I
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v6

    aget v3, v0, v7

    .line 278
    .local v3, "minute":I
    if-ne p1, v7, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v7

    aget-boolean v4, v0, v6

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    const-string v0, "TIMER"

    iget-object v1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    aget v2, v0, v6

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    aget v3, v0, v7

    :cond_1
    move-object v0, p0

    move v1, p1

    .line 295
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->readData()V

    .line 120
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v7

    aget-boolean v2, v4, v6

    .line 121
    .local v2, "powerOnState":Z
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v7

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "powerOnTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v6

    aget-boolean v0, v4, v6

    .line 124
    .local v0, "powerOffState":Z
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v6

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v6

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "powerOffTime":Ljava/lang/String;
    const-string v4, "power_on_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    .line 127
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 128
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const-string v4, "power_off_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    .line 131
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    const-string v4, "power_on_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    iput-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    .line 135
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$1;-><init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const-string v4, "oneplus_power_on_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    .line 152
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    new-instance v5, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$2;-><init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    const-string v4, "power_off_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    iput-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    .line 172
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$3;-><init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const-string v4, "oneplus_power_off_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    .line 190
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    new-instance v5, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$4;-><init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    const-string v4, "power_on_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)V

    .line 209
    const-string v4, "power_off_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private static intToBool(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 599
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private readData()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_timepower_config"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 229
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v4, 0x6

    if-gt v1, v4, :cond_0

    .line 223
    add-int/lit8 v4, v1, 0x6

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "tmp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v6

    .line 225
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v7

    .line 226
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v5

    aput-boolean v5, v4, v6

    .line 227
    iget-object v4, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x6

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v5

    aput-boolean v5, v4, v7

    .line 222
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private returnNewTimeSetResult(ILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 447
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 448
    const-string v7, "hour"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 449
    .local v2, "hour":I
    const-string v7, "minute"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 451
    .local v4, "minute":I
    const/4 v3, 0x0

    .line 452
    .local v3, "index":I
    const/4 v0, 0x1

    .line 453
    .local v0, "anotherindex":I
    if-ne p1, v9, :cond_0

    .line 454
    const/4 v3, 0x1

    .line 455
    const/4 v0, 0x0

    .line 458
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v10

    if-ne v2, v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v9

    if-ne v4, v7, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090ba3

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 522
    .end local v0    # "anotherindex":I
    .end local v2    # "hour":I
    .end local v3    # "index":I
    .end local v4    # "minute":I
    :cond_1
    :goto_0
    return-void

    .line 466
    .restart local v0    # "anotherindex":I
    .restart local v2    # "hour":I
    .restart local v3    # "index":I
    .restart local v4    # "minute":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    const-string v8, "hour"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v10

    .line 467
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    const-string v8, "minute"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v9

    .line 468
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    aget v7, v7, v10

    iget-object v8, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v8, v8, v3

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "timeDisplay":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v3

    const-string v8, "power_state"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    aput-boolean v8, v7, v10

    .line 472
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v3

    aget-boolean v5, v7, v9

    .line 473
    .local v5, "sendMsgOut":Z
    if-nez p1, :cond_4

    .line 474
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    :cond_3
    :goto_1
    if-nez v5, :cond_6

    .line 493
    if-nez p1, :cond_5

    .line 494
    invoke-direct {p0, v10, v9}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 495
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 486
    :cond_4
    if-ne p1, v9, :cond_3

    .line 487
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/android/settings_ex/timer/timepower/TimepowerPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 497
    :cond_5
    invoke-direct {p0, v9, v9}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 498
    iget-object v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 501
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 508
    iget v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-nez v7, :cond_7

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.settings_ex.POWER_OP_ON"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto/16 :goto_0

    .line 513
    :cond_7
    iget v7, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-ne v7, v9, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.settings_ex.action.REQUEST_POWER_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setPowerOn()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 425
    const/4 v5, 0x2

    new-array v1, v5, [J

    .line 427
    .local v1, "nearestTime":[J
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "def_timepower_config"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "timeConfig":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v1

    .line 431
    const-string v5, "TimepowerSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPowerOn writeData: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v1, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings_ex.POWER_OP_ON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "poweron":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 435
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v5, v10, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 436
    .local v3, "sender":Landroid/app/PendingIntent;
    aget-wide v6, v1, v10

    invoke-virtual {v0, v10, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 437
    return-void
.end method

.method private startDialogForResult(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    const/4 v10, 0x1

    .line 526
    iput p2, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mCode:I

    .line 527
    new-instance v8, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 529
    const v6, 0x7f090b9f

    .line 530
    .local v6, "resId":I
    if-eqz p1, :cond_1

    .line 531
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 532
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 533
    const-string v8, "power_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    .line 535
    const-string v8, "24hour"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 536
    .local v5, "mIs24Hour":Z
    const-string v8, "hour"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 537
    .local v3, "mDlgHour":I
    const-string v8, "minute"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 539
    .local v4, "mDlgMinute":I
    const-string v8, "power_type"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 540
    .local v7, "type":I
    if-nez v7, :cond_2

    .line 541
    const v6, 0x7f090ba5

    .line 545
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 546
    iget-object v8, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 547
    iget-object v8, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 551
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "mDlgHour":I
    .end local v4    # "mDlgMinute":I
    .end local v5    # "mIs24Hour":Z
    .end local v7    # "type":I
    :cond_1
    new-instance v2, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;-><init>(Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;)V

    .line 553
    .local v2, "listener":Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090629

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090ba0

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 558
    .local v1, "dlg":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 559
    iput-boolean v10, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 560
    return-void

    .line 542
    .end local v1    # "dlg":Landroid/app/Dialog;
    .end local v2    # "listener":Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "mDlgHour":I
    .restart local v4    # "mDlgMinute":I
    .restart local v5    # "mIs24Hour":Z
    .restart local v7    # "type":I
    :cond_2
    if-ne v7, v10, :cond_0

    .line 543
    const v6, 0x7f090ba6

    goto :goto_0
.end method

.method private updateState(IZ)V
    .locals 6
    .param p1, "powerType"    # I
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x1

    .line 349
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v2, v2, p1

    aput-boolean p2, v2, v3

    .line 354
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 356
    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    .line 357
    sput-boolean v3, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings_ex.POWER_OP_ON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    :cond_2
    if-ne p1, v3, :cond_3

    if-ne p2, v3, :cond_3

    .line 362
    const/4 v2, 0x2

    new-array v1, v2, [J

    .line 363
    .local v1, "nearestTime":[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "trigger_time"

    aget-wide v4, v1, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    sput-boolean v3, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 366
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings_ex.action.REQUEST_POWER_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 369
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "nearestTime":[J
    :cond_3
    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    .line 370
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings_ex.POWER_CANCEL_OP_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private writeData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 401
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "Config":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%1$02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%1$02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v1

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%1$01d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v7

    invoke-static {v6}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%1$01d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v8

    invoke-static {v6}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "tmp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 409
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    const-string v3, "TimepowerSettingsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_timepower_config"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->addPreferencesFromResource(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->init()V

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const v0, 0x7f040071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "isChecked":Z
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 321
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "key":Ljava/lang/String;
    const-string v4, "power_on_switch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 332
    :goto_0
    return v2

    .line 328
    :cond_1
    const-string v4, "power_off_switch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 329
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 332
    goto :goto_0
.end method
