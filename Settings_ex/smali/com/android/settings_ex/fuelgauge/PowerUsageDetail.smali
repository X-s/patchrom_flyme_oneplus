.class public Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;
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

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field mInstaller:Landroid/content/ComponentName;

.field private mMessagesParent:Landroid/view/ViewGroup;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0907c3
        0x7f0907c4
        0x7f0907c2
        0x7f0907c9
        0x7f0907cb
        0x7f0907c6
        0x7f0907c7
        0x7f0907ce
        0x7f0907d2
        0x7f0907d3
        0x7f0907d5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 660
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "summary"    # I
    .param p3, "action"    # I

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 606
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 607
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040092

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 608
    .local v2, "item":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 609
    const v5, 0x7f0f00a0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 610
    .local v0, "actionButton":Landroid/widget/Button;
    const v5, 0x7f0f0057

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 611
    .local v4, "summaryView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 615
    return-void
.end method

.method private addMessage(I)V
    .locals 6
    .param p1, "message"    # I

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 632
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 633
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040095

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 634
    .local v1, "item":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 635
    const v4, 0x7f0f0026

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 636
    .local v2, "messageView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 668
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 695
    :goto_0
    return-void

    .line 672
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 672
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 678
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 681
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
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

    .line 690
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 685
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 678
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 18

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 361
    .local v3, "args":Landroid/os/Bundle;
    const-string v14, "title"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 362
    const-string v14, "percent"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 363
    .local v9, "percentage":I
    const-string v14, "gauge"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 364
    .local v5, "gaugeValue":I
    const-string v14, "since"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 365
    const-string v14, "uid"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    .line 366
    const-string v14, "drainType"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 367
    const-string v14, "noCoverage"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 368
    const-string v14, "iconPackage"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "iconPackage":Ljava/lang/String;
    const-string v14, "iconId"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 370
    .local v7, "iconId":I
    const-string v14, "showLocationButton"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 371
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 373
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 374
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 375
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_1

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020010

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 390
    .local v12, "summary":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    const-string v14, "types"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 394
    const-string v14, "values"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020016

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020014

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 400
    .local v13, "text1":Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0f019c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0f0236

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0f0237

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x102000d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 408
    .local v11, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v11, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x1020006

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 411
    .local v6, "icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0f019d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0f019e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v15, 0x7f0f01a0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/view/ViewGroup;

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 418
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 419
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 420
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->fillMessagesSection(I)V

    .line 422
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v15, 0x2710

    if-lt v14, v15, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v15, 0x7f0905fc

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v15, 0x10404d1

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "send_action_app_error"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 433
    .local v4, "enabled":I
    if-eqz v4, :cond_5

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_2

    .line 436
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 450
    .end local v4    # "enabled":I
    :goto_3
    return-void

    .line 381
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v11    # "progress":Landroid/widget/ProgressBar;
    .end local v12    # "summary":Landroid/widget/TextView;
    .end local v13    # "text1":Landroid/widget/TextView;
    :cond_3
    if-eqz v7, :cond_0

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 443
    .restart local v4    # "enabled":I
    .restart local v6    # "icon":Landroid/widget/ImageView;
    .restart local v11    # "progress":Landroid/widget/ProgressBar;
    .restart local v12    # "summary":Landroid/widget/TextView;
    .restart local v13    # "text1":Landroid/widget/TextView;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 445
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 448
    .end local v4    # "enabled":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 440
    .restart local v4    # "enabled":I
    :catch_0
    move-exception v14

    goto :goto_1

    .line 378
    .end local v4    # "enabled":I
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v11    # "progress":Landroid/widget/ProgressBar;
    .end local v12    # "summary":Landroid/widget/TextView;
    .end local v13    # "text1":Landroid/widget/TextView;
    :catch_1
    move-exception v14

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 469
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    packed-switch p1, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 471
    :pswitch_0
    const-class v1, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090432

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 475
    :pswitch_1
    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090344

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 479
    :pswitch_2
    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902ba

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 483
    :pswitch_3
    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090226

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 487
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 490
    :pswitch_5
    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09025f

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 494
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 497
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 469
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
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 545
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 546
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 549
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

    .line 551
    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 553
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v4, 0x1

    .line 554
    .local v4, "removeHeader":Z
    sget-object v5, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 599
    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v4, :cond_1

    .line 600
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 602
    :cond_1
    return-void

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :cond_2
    move-object v2, v5

    .line 549
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 551
    goto :goto_1

    .line 557
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removeHeader":Z
    :pswitch_1
    if-eqz v1, :cond_4

    array-length v5, v1

    if-ne v5, v8, :cond_4

    .line 558
    const v5, 0x7f0907bd

    const v6, 0x7f0907cf

    const/4 v7, 0x5

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 560
    const/4 v4, 0x0

    .line 566
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v5, :cond_0

    .line 567
    const v5, 0x7f09025f

    const v6, 0x7f0907d0

    const/4 v7, 0x6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 569
    const/4 v4, 0x0

    goto :goto_2

    .line 573
    :pswitch_2
    const v5, 0x7f090461

    const v6, 0x7f0907c8

    invoke-direct {p0, v5, v6, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 576
    const/4 v4, 0x0

    .line 577
    goto :goto_2

    .line 579
    :pswitch_3
    const v5, 0x7f090344

    const v6, 0x7f0907ca

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 582
    const/4 v4, 0x0

    .line 583
    goto :goto_2

    .line 585
    :pswitch_4
    const v5, 0x7f0902ba

    const v6, 0x7f0907cc

    const/4 v7, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 588
    const/4 v4, 0x0

    .line 589
    goto :goto_2

    .line 591
    :pswitch_5
    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 592
    const v5, 0x7f090226

    const v6, 0x7f0907c5

    const/4 v7, 0x4

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 595
    const/4 v4, 0x0

    goto :goto_2

    .line 550
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :catch_0
    move-exception v6

    goto :goto_0

    .line 554
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
    .locals 18

    .prologue
    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 504
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v12, :cond_1

    .line 505
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v12, v12

    if-ge v2, v12, :cond_1

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_0

    .line 505
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v12, v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "label":Ljava/lang/String;
    const/4 v10, 0x0

    .line 510
    .local v10, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v12, v12, v2

    packed-switch v12, :pswitch_data_0

    .line 531
    :goto_2
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v14, v13, v2

    const/4 v13, 0x1

    invoke-static {v12, v14, v15, v13}, Lcom/android/settings_ex/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v10

    .line 533
    :goto_3
    const v12, 0x7f040093

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 535
    .local v4, "item":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    const v12, 0x7f0f019b

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 537
    .local v6, "labelView":Landroid/widget/TextView;
    const v12, 0x7f0f017f

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 538
    .local v11, "valueView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 515
    .end local v4    # "item":Landroid/view/ViewGroup;
    .end local v6    # "labelView":Landroid/widget/TextView;
    .end local v11    # "valueView":Landroid/widget/TextView;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v2

    double-to-long v8, v12

    .line 516
    .local v8, "packets":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 517
    goto :goto_3

    .line 519
    .end local v8    # "packets":J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v12, v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 520
    .local v7, "percentage":I
    invoke-static {v7}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    .line 521
    goto :goto_3

    .line 525
    .end local v7    # "percentage":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0907d6

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mValues:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 526
    goto :goto_3

    .line 528
    :pswitch_4
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 542
    .end local v2    # "i":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 510
    :pswitch_data_0
    .packed-switch 0x7f0907ad
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
    .line 618
    const/4 v0, 0x1

    .line 619
    .local v0, "removeHeader":Z
    sget-object v1, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 625
    :goto_0
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mMessagesParent:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 628
    :cond_0
    return-void

    .line 621
    :pswitch_0
    const v1, 0x7f0907d4

    invoke-direct {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->addMessage(I)V

    .line 622
    const/4 v0, 0x0

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 724
    const/4 v8, 0x1

    if-ge p1, v8, :cond_1

    .line 725
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0f01a3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 729
    .local v6, "packagesParent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 732
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 734
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 735
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 736
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 741
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 743
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 744
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 746
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 747
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 752
    :cond_4
    const v8, 0x7f040096

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 753
    .local v3, "item":Landroid/view/View;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 754
    const v8, 0x7f0f019b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 755
    .local v5, "labelView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "item":Landroid/view/View;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "labelView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 756
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 650
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 653
    .local v0, "am":Landroid/app/ActivityManager;
    iget v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 654
    .local v2, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 655
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 641
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0f01a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0f01a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 698
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 721
    :goto_0
    return-void

    .line 700
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 701
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 702
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 703
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 704
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 706
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 708
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 709
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 710
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 711
    const-string v4, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 712
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 713
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 714
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 716
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 718
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 720
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 459
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 463
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0905f2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 465
    return-void
.end method

.method public static startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V
    .locals 19
    .param p0, "caller"    # Lcom/android/settings_ex/SettingsActivity;
    .param p1, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "statsType"    # I
    .param p3, "entry"    # Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .param p4, "showLocationButton"    # Z

    .prologue
    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v13

    .line 91
    .local v13, "dischargeAmount":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v12, "args":Landroid/os/Bundle;
    const-string v2, "title"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "percent"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->value:D

    int-to-double v8, v13

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v2, "gauge"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->value:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v2, "duration"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v6

    invoke-virtual {v12, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    const-string v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v12, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 101
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :cond_0
    const-string v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    const-string v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    .line 110
    .local v17, "userId":I
    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 251
    const/4 v2, 0x1

    new-array v15, v2, [I

    const/4 v2, 0x0

    const v3, 0x7f0907b7

    aput v3, v15, v2

    .line 254
    .local v15, "types":[I
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 259
    .local v18, "values":[D
    :cond_1
    :goto_0
    const-string v2, "types"

    invoke-virtual {v12, v2, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 260
    const-string v2, "values"

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 263
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 264
    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f09079d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v7, v12

    invoke-virtual/range {v5 .. v11}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 270
    :goto_1
    return-void

    .line 114
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v16, v0

    .line 115
    .local v16, "uid":Landroid/os/BatteryStats$Uid;
    const/16 v2, 0xc

    new-array v15, v2, [I

    fill-array-data v15, :array_0

    .line 129
    .restart local v15    # "types":[I
    const/16 v2, 0xc

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/16 v2, 0x8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/16 v2, 0x9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/16 v2, 0xa

    const-wide/16 v6, 0x0

    aput-wide v6, v18, v2

    const/16 v2, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v18, v2

    .line 144
    .restart local v18    # "values":[D
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v2, v3, :cond_1

    .line 145
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 146
    .local v14, "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v14, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 147
    .local v4, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 149
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 150
    const-string v2, "report_details"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v14, Ljava/io/StringWriter;

    .end local v14    # "result":Ljava/io/Writer;
    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 153
    .restart local v14    # "result":Ljava/io/Writer;
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v14, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 154
    .restart local v4    # "printWriter":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 156
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 157
    const-string v2, "report_checkin_details"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    goto/16 :goto_0

    .line 165
    .end local v4    # "printWriter":Ljava/io/PrintWriter;
    .end local v14    # "result":Ljava/io/Writer;
    .end local v15    # "types":[I
    .end local v16    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v18    # "values":[D
    :pswitch_1
    const/4 v2, 0x3

    new-array v15, v2, [I

    fill-array-data v15, :array_1

    .line 170
    .restart local v15    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 176
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 179
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_2
    const/16 v2, 0x8

    new-array v15, v2, [I

    fill-array-data v15, :array_2

    .line 189
    .restart local v15    # "types":[I
    const/16 v2, 0x8

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 199
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 202
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_3
    const/16 v2, 0x8

    new-array v15, v2, [I

    fill-array-data v15, :array_3

    .line 212
    .restart local v15    # "types":[I
    const/16 v2, 0x8

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x6

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    const/4 v2, 0x7

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v18, v2

    .line 222
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 225
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_4
    const/4 v2, 0x3

    new-array v15, v2, [I

    fill-array-data v15, :array_4

    .line 230
    .restart local v15    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    .line 235
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 238
    .end local v15    # "types":[I
    .end local v18    # "values":[D
    :pswitch_5
    const/4 v2, 0x3

    new-array v15, v2, [I

    fill-array-data v15, :array_5

    .line 243
    .restart local v15    # "types":[I
    const/4 v2, 0x3

    new-array v0, v2, [D

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    aput-wide v6, v18, v2

    .line 248
    .restart local v18    # "values":[D
    goto/16 :goto_0

    .line 267
    :cond_2
    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f09079d

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v5, p0

    move-object v7, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 110
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

    .line 115
    :array_0
    .array-data 4
        0x7f0907aa
        0x7f0907ab
        0x7f0907ac
        0x7f0907ad
        0x7f0907ae
        0x7f0907b1
        0x7f0907b0
        0x7f0907b2
        0x7f0907b4
        0x7f0907b3
        0x7f0907b5
        0x7f0907b6
    .end array-data

    .line 165
    :array_1
    .array-data 4
        0x7f0907b7
        0x7f0907b8
        0x7f0907b2
    .end array-data

    .line 179
    :array_2
    .array-data 4
        0x7f0907ae
        0x7f0907aa
        0x7f0907ab
        0x7f0907ac
        0x7f0907b1
        0x7f0907b0
        0x7f0907b4
        0x7f0907b3
    .end array-data

    .line 202
    :array_3
    .array-data 4
        0x7f0907b7
        0x7f0907aa
        0x7f0907ab
        0x7f0907ac
        0x7f0907b1
        0x7f0907b0
        0x7f0907b4
        0x7f0907b3
    .end array-data

    .line 225
    :array_4
    .array-data 4
        0x7f0907b9
        0x7f0907ba
        0x7f0907bb
    .end array-data

    .line 238
    :array_5
    .array-data 4
        0x7f0907b9
        0x7f0907ba
        0x7f0907bb
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 454
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 334
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 339
    const v1, 0x7f040094

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 342
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 343
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 344
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 357
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 350
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 351
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 352
    return-void
.end method
