.class public Lcom/android/settings_ex/applications/ManageApplications;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;
    }
.end annotation


# static fields
.field private static final ADVANCED_SETTINGS:I = 0x2

.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z

.field public static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field private static final EXTRA_HAS_ENTRIES:Ljava/lang/String; = "hasEntries"

.field private static final EXTRA_SHOW_SYSTEM:Ljava/lang/String; = "showSystem"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final EXTRA_VOLUME_NAME:Ljava/lang/String; = "volumeName"

.field public static final EXTRA_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final FILTERS:[Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APPS_ALL:I = 0x2

.field public static final FILTER_APPS_BLOCKED:I = 0x5

.field public static final FILTER_APPS_DISABLED:I = 0x4

.field public static final FILTER_APPS_ENABLED:I = 0x3

.field public static final FILTER_APPS_NO_PEEKING:I = 0x7

.field public static final FILTER_APPS_PERSONAL:I = 0x9

.field public static final FILTER_APPS_POWER_WHITELIST:I = 0x0

.field public static final FILTER_APPS_POWER_WHITELIST_ALL:I = 0x1

.field public static final FILTER_APPS_PRIORITY:I = 0x6

.field public static final FILTER_APPS_SENSITIVE:I = 0x8

.field public static final FILTER_APPS_USAGE_ACCESS:I = 0xc

.field public static final FILTER_APPS_WITH_DOMAIN_URLS:I = 0xb

.field public static final FILTER_APPS_WITH_OVERLAY:I = 0xd

.field public static final FILTER_APPS_WORK:I = 0xa

.field public static final FILTER_APPS_WRITE_SETTINGS:I = 0xe

.field public static final FILTER_LABELS:[I

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field public static final LIST_TYPE_DOMAINS_URLS:I = 0x2

.field public static final LIST_TYPE_HIGH_POWER:I = 0x5

.field public static final LIST_TYPE_MAIN:I = 0x0

.field public static final LIST_TYPE_NOTIFICATION:I = 0x1

.field public static final LIST_TYPE_OVERLAY:I = 0x6

.field public static final LIST_TYPE_STORAGE:I = 0x3

.field public static final LIST_TYPE_USAGE_ACCESS:I = 0x4

.field public static final LIST_TYPE_WRITE_SETTINGS:I = 0x7

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field public mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Lcom/oneplus/widget/listview/OPListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x3

    .line 95
    const-string v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    .line 140
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/applications/ManageApplications;->FILTER_LABELS:[I

    .line 164
    new-array v0, v1, [Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settings_ex/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_PERSONAL_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    sget-object v4, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_NO_PEEK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SENSITIVE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/settings_ex/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/ManageApplications;->FILTERS:[Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    return-void

    .line 140
    :array_0
    .array-data 4
        0x7f0c0d4e
        0x7f0c0d14
        0x7f0c0d14
        0x7f0c0d15
        0x7f0c07ba
        0x7f0c0d18
        0x7f0c0d19
        0x7f0c0d1b
        0x7f0c0d1a
        0x7f0c0d16
        0x7f0c0d17
        0x7f0c0d1c
        0x7f0c0d14
        0x7f0c0d90
        0x7f0c0d96
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 197
    const v0, 0x7f120311

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 736
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method private createHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 351
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f12007f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 352
    .local v1, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040011

    invoke-virtual {v2, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f120023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 355
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    .line 356
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 357
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 360
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 361
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v4, :cond_1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 364
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 367
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v4, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 369
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 370
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 371
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 373
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_3

    .line 374
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 376
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 377
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    new-instance v3, Lcom/android/settings_exlib/applications/ApplicationsState$VolumeFilter;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    .line 379
    :cond_4
    return-void
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 403
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 393
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 395
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 397
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :pswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 401
    :pswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 532
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .prologue
    .line 496
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 525
    const-class v0, Lcom/android/settings_ex/applications/InstalledAppDetails;

    const v1, 0x7f0c078e

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 528
    :goto_0
    return-void

    .line 498
    :pswitch_0
    const-class v0, Lcom/android/settings_ex/notification/AppNotificationSettings;

    const v1, 0x7f0c0c75

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 501
    :pswitch_1
    const-class v0, Lcom/android/settings_ex/applications/AppLaunchSettings;

    const v1, 0x7f0c0790

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 504
    :pswitch_2
    const-class v0, Lcom/android/settings_ex/applications/UsageAccessDetails;

    const v1, 0x7f0c0d3e

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 507
    :pswitch_3
    const-class v0, Lcom/android/settings_ex/applications/AppStorageSettings;

    const v1, 0x7f0c062b

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 510
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFinishAfterDialog:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 513
    :pswitch_5
    const-class v0, Lcom/android/settings_ex/applications/DrawOverlayDetails;

    const v1, 0x7f0c0d8e

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 516
    :pswitch_6
    const-class v0, Lcom/android/settings_ex/applications/WriteSettingsDetails;

    const v1, 0x7f0c0d98

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    const/16 v0, 0xdd

    .line 409
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 427
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 411
    :pswitch_1
    const/16 v0, 0x41

    goto :goto_0

    .line 413
    :pswitch_2
    const/16 v0, 0x85

    goto :goto_0

    .line 415
    :pswitch_3
    const/16 v0, 0x8f

    goto :goto_0

    .line 417
    :pswitch_4
    const/16 v0, 0xb6

    goto :goto_0

    .line 419
    :pswitch_5
    const/16 v0, 0x5f

    goto :goto_0

    .line 421
    :pswitch_6
    const/16 v0, 0xb8

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 478
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 479
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 483
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 255
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "className":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 258
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_0
    const-class v3, Lcom/android/settings_ex/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    .line 293
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    .line 295
    if-eqz p1, :cond_1

    .line 296
    const-string v3, "sortOrder"

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 297
    const-string v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c07d9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 302
    new-instance v3, Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings_ex/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    .line 303
    return-void

    .line 256
    .end local v1    # "className":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    .restart local v1    # "className":Ljava/lang/String;
    :cond_3
    const-class v3, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 263
    iput v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 264
    new-instance v3, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    goto :goto_1

    .line 265
    :cond_4
    const-class v3, Lcom/android/settings_ex/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto :goto_1

    .line 267
    :cond_5
    const-class v3, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 268
    if-eqz v0, :cond_6

    const-string v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 269
    const-string v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 270
    const-string v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 271
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 276
    :goto_2
    const v3, 0x7f120312

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_1

    .line 274
    :cond_6
    iput v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto :goto_2

    .line 277
    :cond_7
    const-class v3, Lcom/android/settings_ex/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 278
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0a0d

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 280
    :cond_8
    const-class v3, Lcom/android/settings_ex/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 281
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 283
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_1

    .line 284
    :cond_9
    const-class v3, Lcom/android/settings_ex/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 285
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0d89

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 287
    :cond_a
    const-class v3, Lcom/android/settings_ex/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 288
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0c0d97

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 291
    :cond_b
    iput v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 536
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    const v0, 0x7f0c0bc1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 542
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 543
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    goto :goto_0

    .line 539
    :cond_1
    const v0, 0x7f0c0bc0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 308
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 310
    const v2, 0x7f040076

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 311
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f1200cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f1200ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/listview/OPListView;

    .line 318
    .local v1, "lv":Lcom/oneplus/widget/listview/OPListView;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v1, v0}, Lcom/oneplus/widget/listview/OPListView;->setEmptyView(Landroid/view/View;)V

    .line 321
    :cond_0
    invoke-virtual {v1, p0}, Lcom/oneplus/widget/listview/OPListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    invoke-virtual {v1, v5}, Lcom/oneplus/widget/listview/OPListView;->setSaveEnabled(Z)V

    .line 323
    invoke-virtual {v1, v5}, Lcom/oneplus/widget/listview/OPListView;->setItemsCanFocus(Z)V

    .line 324
    invoke-virtual {v1, v5}, Lcom/oneplus/widget/listview/OPListView;->setTextFilterEnabled(Z)V

    .line 325
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Lcom/oneplus/widget/listview/OPListView;

    .line 326
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications;I)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 327
    if-eqz p3, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    const-string v3, "hasEntries"

    invoke-virtual {p3, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$002(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Lcom/oneplus/widget/listview/OPListView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/listview/OPListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Lcom/oneplus/widget/listview/OPListView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/listview/OPListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 333
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Lcom/oneplus/widget/listview/OPListView;

    invoke-static {p2, v2, v3, v6}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 338
    .end local v0    # "emptyView":Landroid/view/View;
    .end local v1    # "lv":Lcom/oneplus/widget/listview/OPListView;
    :cond_2
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_3

    .line 339
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 342
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->createHeader()V

    .line 344
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 555
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroyView()V

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 473
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 474
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 609
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 610
    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    .line 611
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 613
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    .line 618
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 619
    sget-boolean v1, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 620
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selecting filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p2

    .line 622
    check-cast v0, Landroid/widget/TextView;

    .line 623
    .local v0, "v1":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 576
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 577
    .local v7, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v8, v1

    .line 602
    :goto_0
    return v8

    .line 580
    :pswitch_0
    iput v7, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 601
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    goto :goto_0

    .line 587
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_1

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 587
    goto :goto_2

    .line 591
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ResetAppsHelper;->buildResetDialog()V

    goto :goto_0

    .line 594
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d1f

    const/4 v6, 0x2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x7f12030e
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 458
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 550
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateView()V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 436
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->refreshListByOneplus()V

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    # invokes: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$100(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V

    .line 441
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 447
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    const-string v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->access$000(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 462
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ResetAppsHelper;->stop()V

    .line 464
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 383
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 384
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f12007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 386
    .local v0, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3, v0}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 388
    .end local v0    # "pinnedHeader":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 641
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    goto :goto_0
.end method

.method updateOptionsMenu()V
    .locals 7

    .prologue
    const v6, 0x7f120311

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f12030e

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 563
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    if-eq v0, v6, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f120312

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f120312

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 568
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f12030f

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_4

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f120310

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-eq v0, v5, :cond_5

    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f120313

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    :goto_6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 561
    goto :goto_1

    :cond_2
    move v0, v2

    .line 563
    goto :goto_2

    :cond_3
    move v0, v2

    .line 565
    goto :goto_3

    :cond_4
    move v0, v2

    .line 568
    goto :goto_4

    :cond_5
    move v0, v2

    .line 569
    goto :goto_5

    :cond_6
    move v1, v2

    .line 571
    goto :goto_6
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 634
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 635
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 638
    :cond_0
    return-void
.end method
