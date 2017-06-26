.class public Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
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

.field private mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOffPreference:Landroid/preference/Preference;

.field private mPowerOffStatePref:Landroid/preference/SwitchPreference;

.field private mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

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

    .line 81
    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 82
    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 72
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    .line 73
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 97
    return-void
.end method

.method private ReturnData()V
    .locals 4

    .prologue
    .line 611
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 612
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "power_state"

    iget-boolean v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 613
    const-string v2, "hour"

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    const-string v2, "minute"

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 617
    iget v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->returnNewTimeSetResult(ILandroid/content/Intent;)V

    .line 618
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->ReturnData()V

    return-void
.end method

.method private static boolToInt(Z)I
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 621
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

    .line 223
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 224
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

    .line 239
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 227
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c020b

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "halfday":Ljava/lang/String;
    if-lt p1, v3, :cond_2

    .line 229
    const v2, 0x7f0c020c

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-le p1, v3, :cond_1

    .line 231
    add-int/lit8 p1, p1, -0xc

    .line 236
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

    .line 233
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_1

    .line 234
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
    .line 288
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 303
    :goto_0
    return-object v1

    .line 292
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "24hour"

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    const-string v2, "power_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    const-string v2, "display_time"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "hour"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v2, "minute"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v2, "power_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getPowerOnOffStatus(Ljava/lang/String;)Z
    .locals 1
    .param p0, "OnOff"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "PowerOnFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 331
    :goto_0
    return v0

    .line 328
    :cond_0
    const-string v0, "PowerOffFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    sget-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    goto :goto_0

    .line 331
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

    .line 247
    if-eqz p1, :cond_0

    if-eq p1, v7, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v6

    aget-boolean v4, v0, v6

    .line 259
    .local v4, "powerstate":Z
    const-string v0, "TIMER"

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "currenttime":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v6

    aget v2, v0, v6

    .line 265
    .local v2, "hour":I
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v6

    aget v3, v0, v7

    .line 267
    .local v3, "minute":I
    if-ne p1, v7, :cond_1

    .line 268
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v7

    aget-boolean v4, v0, v6

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    const-string v0, "TIMER"

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    aget v2, v0, v6

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    aget v3, v0, v7

    :cond_1
    move-object v0, p0

    move v1, p1

    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 110
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->readData()V

    .line 111
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v7

    aget-boolean v2, v4, v6

    .line 112
    .local v2, "powerOnState":Z
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v7

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "powerOnTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v6

    aget-boolean v0, v4, v6

    .line 115
    .local v0, "powerOffState":Z
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v6

    aget v4, v4, v7

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v6

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "powerOffTime":Ljava/lang/String;
    const-string v4, "power_on_switch"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    .line 118
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v4, "power_off_switch"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    .line 122
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v4, "power_on_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    .line 126
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const-string v4, "oneplus_power_on_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    .line 141
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    const-string v4, "power_off_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    .line 163
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v4, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const-string v4, "oneplus_power_off_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    .line 179
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 198
    const-string v4, "power_on_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)V

    .line 199
    const-string v4, "power_off_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private static intToBool(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 625
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
    .line 243
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

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

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_timepower_config"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 219
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v4, 0x6

    if-gt v1, v4, :cond_0

    .line 213
    add-int/lit8 v4, v1, 0x6

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "tmp":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v6

    .line 215
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v7

    .line 216
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v5

    aput-boolean v5, v4, v6

    .line 217
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x6

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v5

    aput-boolean v5, v4, v7

    .line 212
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

    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 460
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 461
    const-string v7, "hour"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 462
    .local v2, "hour":I
    const-string v7, "minute"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 464
    .local v4, "minute":I
    const/4 v3, 0x0

    .line 465
    .local v3, "index":I
    const/4 v0, 0x1

    .line 466
    .local v0, "anotherindex":I
    if-ne p1, v9, :cond_0

    .line 467
    const/4 v3, 0x1

    .line 468
    const/4 v0, 0x0

    .line 471
    :cond_0
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v10

    if-ne v2, v7, :cond_2

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v9

    if-ne v4, v7, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c0207

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 549
    .end local v0    # "anotherindex":I
    .end local v2    # "hour":I
    .end local v3    # "index":I
    .end local v4    # "minute":I
    :cond_1
    :goto_0
    return-void

    .line 479
    .restart local v0    # "anotherindex":I
    .restart local v2    # "hour":I
    .restart local v3    # "index":I
    .restart local v4    # "minute":I
    :cond_2
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    const-string v8, "hour"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v10

    .line 480
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    const-string v8, "minute"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v9

    .line 481
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    aget v7, v7, v10

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v8, v8, v3

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "timeDisplay":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v3

    const-string v8, "power_state"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    aput-boolean v8, v7, v10

    .line 485
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v3

    aget-boolean v5, v7, v9

    .line 486
    .local v5, "sendMsgOut":Z
    if-nez p1, :cond_4

    .line 487
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v7, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    :cond_3
    :goto_1
    if-nez v5, :cond_6

    .line 505
    if-nez p1, :cond_5

    .line 506
    invoke-direct {p0, v10, v9}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 507
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 498
    :cond_4
    if-ne p1, v9, :cond_3

    .line 499
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v7, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 509
    :cond_5
    invoke-direct {p0, v9, v9}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 510
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 513
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 523
    iget v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-nez v7, :cond_7

    .line 530
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.settings.POWER_OP_ON"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto/16 :goto_0

    .line 533
    :cond_7
    iget v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-ne v7, v9, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setPowerOn()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 435
    const/4 v5, 0x2

    new-array v1, v5, [J

    .line 437
    .local v1, "nearestTime":[J
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "def_timepower_config"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "timeConfig":Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v1

    .line 441
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

    .line 443
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.POWER_OP_ON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v2, "poweron":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 446
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v5, v10, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 448
    .local v3, "sender":Landroid/app/PendingIntent;
    aget-wide v6, v1, v10

    invoke-virtual {v0, v10, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 449
    return-void
.end method

.method private startDialogForResult(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    const/4 v10, 0x1

    .line 553
    iput p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    .line 554
    new-instance v8, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 556
    const v6, 0x7f0c0203

    .line 557
    .local v6, "resId":I
    if-eqz p1, :cond_1

    .line 558
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 559
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 560
    const-string v8, "power_state"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    .line 562
    const-string v8, "24hour"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 563
    .local v5, "mIs24Hour":Z
    const-string v8, "hour"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, "mDlgHour":I
    const-string v8, "minute"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 566
    .local v4, "mDlgMinute":I
    const-string v8, "power_type"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 567
    .local v7, "type":I
    if-nez v7, :cond_2

    .line 568
    const v6, 0x7f0c0209

    .line 572
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 573
    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 574
    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 578
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "mDlgHour":I
    .end local v4    # "mDlgMinute":I
    .end local v5    # "mIs24Hour":Z
    .end local v7    # "type":I
    :cond_1
    new-instance v2, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    .line 580
    .local v2, "listener":Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    new-instance v8, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v8, v9}, Lcom/oneplus/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c07c7

    invoke-virtual {v8, v9, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c0204

    invoke-virtual {v8, v9, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v1

    .line 584
    .local v1, "dlg":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 585
    iput-boolean v10, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 586
    return-void

    .line 569
    .end local v1    # "dlg":Landroid/app/Dialog;
    .end local v2    # "listener":Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "mDlgHour":I
    .restart local v4    # "mDlgMinute":I
    .restart local v5    # "mIs24Hour":Z
    .restart local v7    # "type":I
    :cond_2
    if-ne v7, v10, :cond_0

    .line 570
    const v6, 0x7f0c020a

    goto :goto_0
.end method

.method private updateState(IZ)V
    .locals 6
    .param p1, "powerType"    # I
    .param p2, "checked"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 336
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v2, v2, p1

    aput-boolean p2, v2, v3

    .line 341
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 343
    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    .line 344
    sput-boolean v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.POWER_OP_ON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    :cond_2
    if-ne p1, v3, :cond_3

    if-ne p2, v3, :cond_3

    .line 355
    const/4 v2, 0x2

    new-array v1, v2, [J

    .line 356
    .local v1, "nearestTime":[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "trigger_time"

    aget-wide v4, v1, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 358
    sput-boolean v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 362
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 368
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "nearestTime":[J
    :cond_3
    if-ne p1, v3, :cond_4

    if-nez p2, :cond_4

    .line 369
    sput-boolean v4, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :cond_4
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 378
    sput-boolean v4, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.POWER_OP_ON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private writeData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 411
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, "Config":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%1$02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

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

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

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

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v7

    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

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

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v8

    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

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

    .line 417
    .local v2, "tmp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 419
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

    .line 421
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_timepower_config"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 631
    const/16 v0, 0xf4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->addPreferencesFromResource(I)V

    .line 104
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->init()V

    .line 105
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "isChecked":Z
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 309
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "key":Ljava/lang/String;
    const-string v4, "power_on_switch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    invoke-direct {p0, v3, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 320
    :goto_0
    return v2

    .line 316
    :cond_1
    const-string v4, "power_off_switch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    invoke-direct {p0, v2, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 320
    goto :goto_0
.end method
