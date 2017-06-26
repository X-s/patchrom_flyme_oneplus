.class public Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;
.super Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$4;
    }
.end annotation


# static fields
.field public static final ACTION_APP_DETAILS:I = 0x5

.field public static final ACTION_BLUETOOTH_SETTINGS:I = 0x3

.field public static final ACTION_DISPLAY_SETTINGS:I = 0x1

.field public static final ACTION_FORCE_STOP:I = 0x7

.field public static final ACTION_LOCATION_SETTINGS:I = 0x6

.field public static final ACTION_REPORT:I = 0x8

.field public static final ACTION_WIFI_SETTINGS:I = 0x2

.field public static final ACTION_WIRELESS_SETTINGS:I = 0x4

.field public static final EXTRA_DETAIL_TYPES:Ljava/lang/String; = "types"

.field public static final EXTRA_DETAIL_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_DRAIN_TYPE:Ljava/lang/String; = "drainType"

.field public static final EXTRA_GAUGE:Ljava/lang/String; = "gauge"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final EXTRA_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final EXTRA_NO_COVERAGE:Ljava/lang/String; = "noCoverage"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_REPORT_CHECKIN_DETAILS:Ljava/lang/String; = "report_checkin_details"

.field public static final EXTRA_REPORT_DETAILS:Ljava/lang/String; = "report_details"

.field public static final EXTRA_SHOW_LOCATION_BUTTON:Ljava/lang/String; = "showLocationButton"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_USAGE_SINCE:Ljava/lang/String; = "since"

.field private static final KEY_CONTROLS_PARENT:Ljava/lang/String; = "controls_parent"

.field private static final KEY_DETAILS_PARENT:Ljava/lang/String; = "details_parent"

.field private static final KEY_HIGH_POWER:Ljava/lang/String; = "high_power"

.field private static final KEY_MESSAGES_PARENT:Ljava/lang/String; = "messages_parent"

.field private static final KEY_PACKAGES_PARENT:Ljava/lang/String; = "packages_parent"

.field private static final KEY_TWO_BUTTONS:Ljava/lang/String; = "two_buttons"

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/preference/PreferenceCategory;

.field private mDetailsParent:Landroid/preference/PreferenceCategory;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHighPower:Landroid/preference/Preference;

.field mInstaller:Landroid/content/ComponentName;

.field private mMessagesParent:Landroid/preference/PreferenceCategory;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPackagesParent:Landroid/preference/PreferenceCategory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c0960
        0x7f0c0961
        0x7f0c095f
        0x7f0c0967
        0x7f0c0969
        0x7f0c0963
        0x7f0c0965
        0x7f0c096c
        0x7f0c0970
        0x7f0c0971
        0x7f0c0973
        0x7f0c0964
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;-><init>()V

    .line 695
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$3;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->doAction(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 2
    .param p1, "pageSummary"    # I
    .param p2, "actionTitle"    # I
    .param p3, "action"    # I

    .prologue
    .line 650
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 651
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 652
    const v1, 0x7f040069

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 653
    new-instance v1, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;

    invoke-direct {v1, p0, p3}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 660
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 661
    return-void
.end method

.method private addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 581
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f040069

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 586
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 587
    return-void
.end method

.method private addMessage(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 678
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 730
    :goto_0
    return-void

    .line 707
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 707
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 713
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 716
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 717
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 725
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 720
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 713
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 390
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 391
    .local v1, "context":Landroid/content/Context;
    const-string v4, "since"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 392
    const-string v4, "uid"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    .line 393
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 394
    const-string v4, "drainType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 395
    const-string v4, "noCoverage"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 396
    const-string v4, "showLocationButton"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 398
    const-string v4, "types"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 399
    const-string v4, "values"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 401
    const-string v4, "two_buttons"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/LayoutPreference;

    .line 402
    .local v3, "twoButtons":Lcom/android/settings_ex/applications/LayoutPreference;
    const v4, 0x7f12024d

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 403
    const v4, 0x7f12024f

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 404
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v7, 0x2710

    if-lt v4, v7, :cond_5

    .line 407
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v7, 0x7f0c0798

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 408
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 409
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v7, 0x104039d

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 416
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "send_action_app_error"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 426
    .local v2, "enabled":I
    if-eqz v2, :cond_3

    .line 427
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1, v4, v7}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    .line 431
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 435
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 437
    const-string v4, "high_power"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    .line 438
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    new-instance v5, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 453
    .end local v2    # "enabled":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->refreshStats()V

    .line 455
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 456
    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 457
    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 458
    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillMessagesSection(I)V

    .line 459
    return-void

    .line 421
    :cond_1
    const-string v4, "PowerUsageDetail"

    const-string v7, "No packages!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2    # "enabled":I
    :cond_2
    move v4, v6

    .line 431
    goto :goto_1

    .line 433
    :cond_3
    const-string v4, "two_buttons"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 446
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    const-string v5, "high_power"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 449
    .end local v2    # "enabled":I
    :cond_5
    const-string v4, "two_buttons"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->removePreference(Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    const-string v5, "high_power"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 418
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 511
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    packed-switch p1, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 513
    :pswitch_0
    const-class v1, Lcom/oneplus/settings/OPDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c05a8

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 517
    :pswitch_1
    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c04cb

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 521
    :pswitch_2
    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0469

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 525
    :pswitch_3
    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c03ab

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 529
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 532
    :pswitch_5
    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c03e1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 536
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 539
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private fillControlsSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 591
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 594
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 596
    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 598
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v4, 0x1

    .line 599
    .local v4, "removeHeader":Z
    sget-object v6, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 644
    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v4, :cond_1

    .line 645
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 647
    :cond_1
    return-void

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :cond_2
    move-object v2, v5

    .line 594
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 596
    goto :goto_1

    .line 602
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removeHeader":Z
    :pswitch_1
    if-eqz v1, :cond_4

    array-length v6, v1

    if-ne v6, v8, :cond_4

    .line 603
    const v6, 0x7f0c095a

    const v7, 0x7f0c096d

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 605
    const/4 v4, 0x0

    .line 611
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v6, :cond_0

    .line 612
    const v6, 0x7f0c03e1

    const v7, 0x7f0c096e

    const/4 v8, 0x6

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 614
    const/4 v4, 0x0

    goto :goto_2

    .line 618
    :pswitch_2
    const v6, 0x7f0c05db

    const v7, 0x7f0c0966

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 621
    const/4 v4, 0x0

    .line 622
    goto :goto_2

    .line 624
    :pswitch_3
    const v6, 0x7f0c04cb

    const v7, 0x7f0c0968

    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 627
    const/4 v4, 0x0

    .line 628
    goto :goto_2

    .line 630
    :pswitch_4
    const v6, 0x7f0c0469

    const v7, 0x7f0c096a

    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 633
    const/4 v4, 0x0

    .line 634
    goto :goto_2

    .line 636
    :pswitch_5
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 637
    const v6, 0x7f0c03ab

    const v7, 0x7f0c0962

    const/4 v8, 0x4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 640
    const/4 v4, 0x0

    goto :goto_2

    .line 595
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :catch_0
    move-exception v6

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 545
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v6, :cond_1

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 548
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 546
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 551
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 572
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v8, v7, v0

    invoke-static {v6, v8, v9, v12}, Lcom/android/settings_ex/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v5

    .line 574
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    double-to-long v2, v6

    .line 557
    .local v2, "packets":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 558
    goto :goto_3

    .line 560
    .end local v2    # "packets":J
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 561
    .local v4, "percentage":I
    invoke-static {v4}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .line 562
    goto :goto_3

    .line 566
    .end local v4    # "percentage":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c0974

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v0

    double-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 567
    goto :goto_3

    .line 569
    :pswitch_4
    iput-boolean v12, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 577
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 551
    :pswitch_data_0
    .packed-switch 0x7f0c0948
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private fillMessagesSection(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 664
    const/4 v0, 0x1

    .line 665
    .local v0, "removeHeader":Z
    sget-object v1, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 671
    :goto_0
    if-eqz v0, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    :cond_0
    return-void

    .line 667
    :pswitch_0
    const v1, 0x7f0c0972

    invoke-direct {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addMessage(I)V

    .line 668
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 759
    const/4 v4, 0x1

    if-ge p1, v4, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 764
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 768
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 770
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 772
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 773
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 774
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    .line 775
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 777
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addHorizontalPreference(Landroid/preference/PreferenceCategory;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 778
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 685
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 693
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 688
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 689
    .local v2, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 690
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 692
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 682
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 733
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 756
    :goto_0
    return-void

    .line 735
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 736
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 737
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 738
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 739
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 741
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 743
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 744
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 745
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 746
    const-string v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 747
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 748
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 749
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 751
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 753
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setupHeader()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 463
    .local v2, "args":Landroid/os/Bundle;
    const-string v7, "title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "title":Ljava/lang/String;
    const-string v7, "iconPackage"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "pkg":Ljava/lang/String;
    const-string v7, "iconId"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 466
    .local v3, "iconId":I
    const/4 v1, 0x0

    .line 468
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 471
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 472
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 481
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 485
    :cond_1
    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 486
    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v7, v8

    .line 489
    :cond_2
    if-eqz v4, :cond_5

    invoke-static {p0, v4}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v10, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v9, v10, :cond_3

    const v8, 0x7f0e0079

    :cond_3
    invoke-static {p0, v1, v6, v7, v8}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    .line 492
    return-void

    .line 478
    :cond_4
    if-eqz v3, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 489
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 475
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 501
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 505
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c078e

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 507
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V
    .locals 18
    .param p0, "caller"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I
    .param p3, "entry"    # Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .param p4, "showLocationButton"    # Z

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 93
    .local v12, "dischargeAmount":I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v11, "args":Landroid/os/Bundle;
    const-string v2, "title"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "percent"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    int-to-double v8, v12

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "gauge"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v2, "duration"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v6

    invoke-virtual {v11, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    const-string v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v11, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 103
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 104
    const-string v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    :cond_0
    const-string v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    const-string v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    .line 112
    .local v16, "userId":I
    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$4;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 267
    const/4 v2, 0x2

    new-array v14, v2, [I

    fill-array-data v14, :array_0

    .line 271
    .local v14, "types":[I
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 277
    .local v17, "values":[D
    :cond_1
    :goto_0
    const-string v2, "types"

    invoke-virtual {v11, v2, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 278
    const-string v2, "values"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 280
    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0c0937

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v5, p0

    move-object v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 282
    return-void

    .line 116
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v15, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 117
    .local v15, "uid":Landroid/os/BatteryStats$Uid;
    const/16 v2, 0xf

    new-array v14, v2, [I

    fill-array-data v14, :array_1

    .line 134
    .restart local v14    # "types":[I
    const/16 v2, 0xf

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0xa

    const-wide/16 v6, 0x0

    aput-wide v6, v17, v2

    const/16 v2, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v17, v2

    const/16 v2, 0xc

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0xd

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0xe

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 152
    .restart local v17    # "values":[D
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_1

    .line 153
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 154
    .local v13, "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 155
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 157
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 158
    const-string v2, "report_details"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v13, Ljava/io/StringWriter;

    .end local v13    # "result":Ljava/io/Writer;
    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 161
    .restart local v13    # "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v13, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 162
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v3

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 164
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 165
    const-string v2, "report_checkin_details"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    goto/16 :goto_0

    .line 175
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljava/io/Writer;
    .end local v14    # "types":[I
    .end local v15    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v17    # "values":[D
    :pswitch_1
    const/4 v2, 0x4

    new-array v14, v2, [I

    fill-array-data v14, :array_2

    .line 181
    .restart local v14    # "types":[I
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 188
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 191
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_2
    const/16 v2, 0x9

    new-array v14, v2, [I

    fill-array-data v14, :array_3

    .line 202
    .restart local v14    # "types":[I
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 213
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 216
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_3
    const/16 v2, 0x9

    new-array v14, v2, [I

    fill-array-data v14, :array_4

    .line 227
    .restart local v14    # "types":[I
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v17, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    aput-wide v6, v17, v2

    .line 238
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 241
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_4
    const/4 v2, 0x3

    new-array v14, v2, [I

    fill-array-data v14, :array_5

    .line 246
    .restart local v14    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    .line 251
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 254
    .end local v14    # "types":[I
    .end local v17    # "values":[D
    :pswitch_5
    const/4 v2, 0x3

    new-array v14, v2, [I

    fill-array-data v14, :array_6

    .line 259
    .restart local v14    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v17, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    aput-wide v6, v17, v2

    .line 264
    .restart local v17    # "values":[D
    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 267
    :array_0
    .array-data 4
        0x7f0c0954
        0x7f0c0957
    .end array-data

    .line 117
    :array_1
    .array-data 4
        0x7f0c0945
        0x7f0c0946
        0x7f0c0947
        0x7f0c0948
        0x7f0c0949
        0x7f0c094c
        0x7f0c094b
        0x7f0c094d
        0x7f0c094f
        0x7f0c094e
        0x7f0c0950
        0x7f0c0951
        0x7f0c0952
        0x7f0c0953
        0x7f0c0957
    .end array-data

    .line 175
    :array_2
    .array-data 4
        0x7f0c0954
        0x7f0c0955
        0x7f0c094d
        0x7f0c0957
    .end array-data

    .line 191
    :array_3
    .array-data 4
        0x7f0c0949
        0x7f0c0945
        0x7f0c0946
        0x7f0c0947
        0x7f0c094c
        0x7f0c094b
        0x7f0c094f
        0x7f0c094e
        0x7f0c0957
    .end array-data

    .line 216
    :array_4
    .array-data 4
        0x7f0c0954
        0x7f0c0945
        0x7f0c0946
        0x7f0c0947
        0x7f0c094c
        0x7f0c094b
        0x7f0c094f
        0x7f0c094e
        0x7f0c0957
    .end array-data

    .line 241
    :array_5
    .array-data 4
        0x7f0c0956
        0x7f0c0957
        0x7f0c0958
    .end array-data

    .line 254
    :array_6
    .array-data 4
        0x7f0c0956
        0x7f0c0957
        0x7f0c0958
    .end array-data
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 364
    const/16 v0, 0x35

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 383
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 496
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 353
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addPreferencesFromResource(I)V

    .line 354
    const-string v0, "details_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/preference/PreferenceCategory;

    .line 355
    const-string v0, "controls_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/preference/PreferenceCategory;

    .line 356
    const-string v0, "messages_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/preference/PreferenceCategory;

    .line 357
    const-string v0, "packages_parent"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackagesParent:Landroid/preference/PreferenceCategory;

    .line 359
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 360
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onResume()V

    .line 370
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 371
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mHighPower:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->setupHeader()V

    .line 377
    return-void
.end method
