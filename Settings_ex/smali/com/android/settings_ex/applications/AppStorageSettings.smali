.class public Lcom/android/settings_ex/applications/AppStorageSettings;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;,
        Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x2

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final KEY_APP_SIZE:Ljava/lang/String; = "app_size"

.field private static final KEY_CACHE_SIZE:Ljava/lang/String; = "cache_size"

.field private static final KEY_CHANGE_STORAGE:Ljava/lang/String; = "change_storage_button"

.field private static final KEY_CLEAR_CACHE:Ljava/lang/String; = "clear_cache_button"

.field private static final KEY_CLEAR_DATA:Ljava/lang/String; = "clear_data_button"

.field private static final KEY_DATA_SIZE:Ljava/lang/String; = "data_size"

.field private static final KEY_EXTERNAL_CODE_SIZE:Ljava/lang/String; = "external_code_size"

.field private static final KEY_EXTERNAL_DATA_SIZE:Ljava/lang/String; = "external_data_size"

.field private static final KEY_STORAGE_CATEGORY:Ljava/lang/String; = "storage_category"

.field private static final KEY_STORAGE_SPACE:Ljava/lang/String; = "storage_space"

.field private static final KEY_STORAGE_USED:Ljava/lang/String; = "storage_used"

.field private static final KEY_TOTAL_SIZE:Ljava/lang/String; = "total_size"

.field private static final MSG_CLEAR_CACHE:I = 0x3

.field private static final MSG_CLEAR_USER_DATA:I = 0x1

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field public static final REQUEST_MANAGE_SPACE:I = 0x2

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSize:Landroid/preference/Preference;

.field private mCacheSize:Landroid/preference/Preference;

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/preference/Preference;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mExternalCodeSize:Landroid/preference/Preference;

.field private mExternalDataSize:Landroid/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mStorageUsed:Landroid/preference/Preference;

.field private mTotalSize:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCanClearData:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mHaveSizes:Z

    .line 107
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCodeSize:J

    .line 108
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastDataSize:J

    .line 109
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastExternalCodeSize:J

    .line 110
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastExternalDataSize:J

    .line 111
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCacheSize:J

    .line 112
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastTotalSize:J

    .line 452
    new-instance v0, Lcom/android/settings_ex/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AppStorageSettings$3;-><init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    .line 504
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/AppStorageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppStorageSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/AppStorageSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppStorageSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppStorageSettings;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AppStorageSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getSize(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    .line 485
    .local v0, "size":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 486
    const v2, 0x7f0c07aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 488
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 222
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "appEntry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 470
    iget-wide v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 472
    :cond_0
    const v1, 0x7f0c07a9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 478
    :goto_0
    return-object v1

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const v1, 0x7f0c0cd4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "storageType":Ljava/lang/CharSequence;
    const v1, 0x7f0c0ccd

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSize(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 474
    .end local v0    # "storageType":Ljava/lang/CharSequence;
    :cond_2
    const v1, 0x7f0c0cd3

    goto :goto_1
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0c0774

    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCanClearData:Z

    .line 339
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 342
    :cond_1
    return-void

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0c0787

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 336
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveDialog()V
    .locals 10

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 346
    .local v1, "context":Landroid/content/Context;
    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 348
    .local v5, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 351
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/CharSequence;

    .line 354
    .local v4, "labels":[Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 355
    .local v2, "current":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 356
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "volDescrip":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 358
    move v2, v3

    .line 360
    :cond_0
    aput-object v6, v4, v3

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    .end local v6    # "volDescrip":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/VolumeInfo;

    iput-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    .line 363
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0cd9

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0389

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 372
    .end local v2    # "current":I
    .end local v3    # "i":I
    .end local v4    # "labels":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 368
    :cond_2
    const-string v7, "storage_used"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 369
    const-string v7, "change_storage_button"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    .line 370
    const-string v7, "storage_space"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 379
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 382
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 384
    new-instance v3, Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 388
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 389
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 391
    sget-object v3, Lcom/android/settings_ex/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/settings_ex/applications/AppStorageSettings;->showDialogInner(II)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0c0795

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isMoveInProgress()Z
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 198
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->isPackageFrozen(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 200
    :goto_0
    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 403
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 404
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 405
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0c0774

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 406
    if-ne v1, v4, :cond_0

    .line 407
    sget-object v2, Lcom/android/settings_ex/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->initMoveDialog()V

    .line 315
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->initDataButtons()V

    .line 316
    return-void
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 229
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 231
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCodeSize:J

    .line 232
    iget-boolean v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppControlRestricted:Z

    if-eqz v6, :cond_2

    .line 290
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    :cond_2
    return-void

    .line 242
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mHaveSizes:Z

    .line 243
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 244
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 245
    .local v4, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 246
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 247
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 258
    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 259
    iput-wide v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCodeSize:J

    .line 260
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    :cond_5
    iget-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 263
    iput-wide v4, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastDataSize:J

    .line 264
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 267
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 268
    iput-wide v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastCacheSize:J

    .line 269
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    :cond_7
    iget-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 272
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastTotalSize:J

    .line 273
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCanClearData:Z

    if-nez v6, :cond_c

    .line 277
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_d

    .line 283
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "cacheSize":J
    :cond_a
    iget-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    .line 250
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastExternalCodeSize:J

    .line 251
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :cond_b
    iget-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 254
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mLastExternalDataSize:J

    .line 255
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 279
    .restart local v0    # "cacheSize":J
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 285
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const v3, 0x7f120105

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c07a9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c07aa

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 143
    const-string v1, "total_size"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    .line 144
    const-string v1, "app_size"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    .line 145
    const-string v1, "data_size"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    .line 146
    const-string v1, "external_code_size"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    .line 147
    const-string v1, "external_data_size"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    .line 149
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "storage_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 151
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    :cond_0
    const-string v1, "clear_data_button"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    .line 157
    const-string v1, "storage_used"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    .line 158
    const-string v1, "change_storage_button"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v2, 0x7f0c0cd8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const-string v1, "cache_size"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    .line 165
    const-string v1, "clear_cache_button"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const v2, 0x7f0c0766

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 168
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f0c0798

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    return-object v0

    .line 418
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0796

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0797

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/applications/AppStorageSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/AppStorageSettings$1;-><init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0799

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 430
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c079f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c07a0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/applications/AppStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/AppStorageSettings$2;-><init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 493
    const/16 v0, 0x13

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v3, v4, p2

    .line 210
    .local v3, "targetVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 212
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 219
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings_ex/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 180
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->setupViews()V

    .line 130
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->refreshSizeInfo()V

    .line 450
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_0

    .line 299
    const/4 v2, 0x0

    .line 310
    :goto_0
    return v2

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->refreshSizeInfo()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 305
    .local v0, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 306
    .local v1, "storage":Landroid/os/storage/StorageManager;
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppStorageSettings;->refreshButtons()V

    .line 310
    const/4 v2, 0x1

    goto :goto_0
.end method
