.class public Lcom/android/settings_ex/users/UserSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/UserSettings$1;,
        Lcom/android/settings_ex/users/UserSettings$2;,
        Lcom/android/settings_ex/users/UserSettings$3;,
        Lcom/android/settings_ex/users/UserSettings$4;,
        Lcom/android/settings_ex/users/UserSettings$SummaryProvider;,
        Lcom/android/settings_ex/users/UserSettings$UserCapabilities;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_EMERGENCY_INFO:Ljava/lang/String; = "android.settings.EDIT_EMERGENGY_INFO"

.field private static final DIALOG_ADD_USER:I = 0x2

.field private static final DIALOG_CHOOSE_USER_TYPE:I = 0x6

.field private static final DIALOG_CONFIRM_EXIT_GUEST:I = 0x8

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_NEED_LOCKSCREEN:I = 0x7

.field private static final DIALOG_SETUP_PROFILE:I = 0x4

.field private static final DIALOG_SETUP_USER:I = 0x3

.field private static final DIALOG_USER_CANNOT_MANAGE:I = 0x5

.field private static final DIALOG_USER_PROFILE_EDITOR:I = 0x9

.field private static final KEY_ADD_USER:Ljava/lang/String; = "user_add"

.field private static final KEY_ADD_USER_LONG_MESSAGE_DISPLAYED:Ljava/lang/String; = "key_add_user_long_message_displayed"

.field private static final KEY_EMERGENCY_INFO:Ljava/lang/String; = "emergency_info"

.field private static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final KEY_USER_ME:Ljava/lang/String; = "user_me"

.field private static final MENU_REMOVE_USER:I = 0x1

.field private static final MESSAGE_CONFIG_USER:I = 0x3

.field private static final MESSAGE_SETUP_USER:I = 0x2

.field private static final MESSAGE_UPDATE_LIST:I = 0x1

.field private static final REQUEST_CHOOSE_LOCK:I = 0xa

.field private static final SAVE_ADDING_USER:Ljava/lang/String; = "adding_user"

.field private static final SAVE_REMOVING_USER:Ljava/lang/String; = "removing_user"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final STORAGE_SIZE_LIMIT:J = 0xc800000L

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "UserSettings"

.field private static final USER_TYPE_RESTRICTED_PROFILE:I = 0x2

.field private static final USER_TYPE_USER:I = 0x1


# instance fields
.field private mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

.field private mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

.field private mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

.field private mMePreference:Lcom/android/settings_ex/users/UserPreference;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/users/UserSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/users/UserSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/users/UserSettings;->emergencyInfoActivityPresent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings_ex/users/UserSettings;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1165
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/users/UserSettings$3;-><init>()V

    .line 1164
    sput-object v0, Lcom/android/settings_ex/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1174
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/users/UserSettings$4;-><init>()V

    .line 1173
    sput-object v0, Lcom/android/settings_ex/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mShouldUpdateUserList:Z

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings_ex/users/EditUserInfoController;-><init>()V

    .line 164
    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    .line 170
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$1;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$2;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    return-void
.end method

.method private addUserNow(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    const/4 v2, 0x1

    .line 679
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    .line 681
    if-ne p1, v2, :cond_0

    const v0, 0x7f0e0d5e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 684
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$14;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/users/UserSettings$14;-><init>(Lcom/android/settings_ex/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/UserSettings$14;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 678
    return-void

    .line 682
    :cond_0
    const v0, 0x7f0e0d5f

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 431
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 432
    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 437
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings_ex/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 440
    :cond_0
    return-object v0
.end method

.method private static emergencyInfoActivityPresent(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 642
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.emergency"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 643
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 644
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    :cond_0
    return v4

    .line 647
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings_exlib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_exlib/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 1012
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 726
    return-void

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->removeThisUser()V

    .line 723
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const v4, 0x7f0e0d48

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 369
    .local v1, "myUserId":I
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v2, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    :cond_1
    return-void
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 999
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 1000
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1002
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1003
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 942
    const/16 v0, -0x2710

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 6

    .prologue
    .line 907
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 908
    .local v1, "maxUsersAndGuest":I
    iget-object v5, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 910
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 911
    .local v0, "managedProfiles":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 912
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    sub-int v5, v1, v0

    return v5
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 377
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 1007
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    .line 384
    const/high16 v2, 0x10000

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 381
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$15;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    .line 937
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 920
    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserSettings$15;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 919
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    const v1, 0x7f0e0d6b

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserPreference;->setTitle(I)V

    .line 341
    return-void

    .line 344
    :cond_0
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$5;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserSettings$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 401
    return-void

    .line 404
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 406
    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 409
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 412
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    .line 445
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 446
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 449
    const-class v1, Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 450
    const v3, 0x7f0e0076

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 448
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 451
    return-void

    .line 453
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 454
    .local v7, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_2

    .line 455
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 456
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string/jumbo v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 459
    const-class v1, Lcom/android/settings_ex/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 460
    const v3, 0x7f0e0dce

    const/4 v4, 0x0

    .line 461
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 458
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 443
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 464
    invoke-static {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_1

    .line 466
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 467
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 469
    const-class v1, Lcom/android/settings_ex/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 472
    iget-object v4, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 471
    const/4 v3, -0x1

    .line 473
    const/4 v5, 0x0

    .line 474
    const/4 v6, 0x0

    .line 468
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 420
    return-void

    .line 423
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 479
    iput p1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    .line 481
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    .line 478
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Cannot remove current user when switching is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    .line 671
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 672
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 651
    iget v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->removeThisUser()V

    .line 650
    :goto_0
    return-void

    .line 654
    :cond_0
    new-instance v0, Lcom/android/settings_ex/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/UserSettings$13;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings_ex/users/UserSettings$13;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 949
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 950
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 947
    :cond_0
    return-void
.end method

.method private switchUserNow(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 714
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateUserList()V
    .locals 24

    .prologue
    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 733
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 734
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 736
    .local v8, "context":Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v23

    .line 737
    .local v23, "voiceCapable":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v12, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v21, "userPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/users/UserPreference;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 742
    .local v17, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    .line 777
    .local v2, "pref":Lcom/android/settings_ex/users/UserPreference;
    :goto_1
    if-eqz v2, :cond_1

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 781
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 782
    const v3, 0x7f0e0d45

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSummary(I)V

    .line 786
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 787
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSelectable(Z)V

    .line 791
    :cond_2
    :goto_3
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    .line 794
    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 750
    .end local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_7

    .line 763
    if-nez v23, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v16

    .line 764
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_9

    .line 765
    if-nez v23, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    const/4 v15, 0x0

    .line 766
    .local v15, "showDelete":Z
    :goto_5
    new-instance v2, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 767
    if-eqz v16, :cond_a

    move-object/from16 v6, p0

    .line 768
    :goto_6
    if-eqz v15, :cond_b

    move-object/from16 v7, p0

    .line 766
    :goto_7
    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 769
    .restart local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 772
    const v3, 0x7f0e0d47

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSummary(I)V

    .line 774
    :cond_5
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 775
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSelectable(Z)V

    goto/16 :goto_1

    .line 763
    .end local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    .end local v15    # "showDelete":Z
    :cond_6
    const/16 v16, 0x1

    .local v16, "showSettings":Z
    goto :goto_4

    .line 762
    .end local v16    # "showSettings":Z
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "showSettings":Z
    goto :goto_4

    .line 765
    .end local v16    # "showSettings":Z
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v15, 0x1

    .restart local v15    # "showDelete":Z
    goto :goto_5

    .line 764
    .end local v15    # "showDelete":Z
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "showDelete":Z
    goto :goto_5

    .line 767
    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    .line 768
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 784
    .end local v15    # "showDelete":Z
    .restart local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    :cond_c
    const v3, 0x7f0e0d44

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 788
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 789
    const v3, 0x7f0e0d41

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 797
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/users/UserSettings;->setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_0

    .line 801
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 806
    .end local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    if-eqz v3, :cond_11

    .line 807
    new-instance v2, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 808
    const/16 v5, -0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 807
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 809
    .restart local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setEnabled(Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 812
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .end local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    if-nez v3, :cond_12

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 816
    if-eqz v3, :cond_13

    .line 819
    :cond_12
    new-instance v2, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v4, :cond_15

    if-eqz v23, :cond_15

    move-object/from16 v6, p0

    .line 819
    :goto_8
    const/4 v4, 0x0

    .line 820
    const/16 v5, -0xb

    .line 822
    const/4 v7, 0x0

    .line 819
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 823
    .restart local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setTitle(I)V

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 825
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-object v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 826
    :goto_9
    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 828
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/users/UserPreference;->setSelectable(Z)V

    .line 832
    .end local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    :cond_13
    sget-object v3, Lcom/android/settings_ex/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 837
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 838
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 841
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    .line 842
    .local v14, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v14}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 844
    new-instance v10, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v10, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    .line 845
    .local v10, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 846
    invoke-virtual {v14, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v3, :cond_17

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 857
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 861
    .local v9, "groupToAddUsers":Landroid/support/v7/preference/PreferenceGroup;
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "userPreference$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings_ex/users/UserPreference;

    .line 862
    .local v19, "userPreference":Lcom/android/settings_ex/users/UserPreference;
    const v3, 0x7fffffff

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/users/UserPreference;->setOrder(I)V

    .line 863
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_b

    .line 821
    .end local v9    # "groupToAddUsers":Landroid/support/v7/preference/PreferenceGroup;
    .end local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .end local v14    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v19    # "userPreference":Lcom/android/settings_ex/users/UserPreference;
    .end local v20    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 827
    .restart local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    :cond_16
    const/4 v3, 0x0

    goto :goto_9

    .line 859
    .end local v2    # "pref":Lcom/android/settings_ex/users/UserPreference;
    .restart local v10    # "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    .restart local v14    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_17
    move-object v9, v14

    .restart local v9    # "groupToAddUsers":Landroid/support/v7/preference/PreferenceGroup;
    goto :goto_a

    .line 867
    .restart local v20    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v3, :cond_1b

    .line 868
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    .line 867
    if-eqz v3, :cond_1b

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v13

    .line 870
    .local v13, "moreUsers":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DimmableIconPreference;->setOrder(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddingUser:Z

    if-eqz v3, :cond_1f

    :cond_1a
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/DimmableIconPreference;->setEnabled(Z)V

    .line 873
    if-nez v13, :cond_20

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getMaxRealUsers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0e0d4b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/settings_ex/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 878
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/DimmableIconPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-object v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 879
    :goto_e
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/DimmableIconPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 884
    .end local v13    # "moreUsers":Z
    :cond_1b
    new-instance v11, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v11, v3}, Lcom/oneplus/settings/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    .line 885
    .local v11, "headerMargin2":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    invoke-virtual {v14, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_1d

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 887
    if-eqz v3, :cond_1d

    .line 889
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 892
    const-string/jumbo v5, "add_users_when_locked"

    const/4 v6, 0x0

    .line 891
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 892
    const/4 v5, 0x1

    .line 891
    if-ne v3, v5, :cond_22

    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-object v3, v3, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 894
    :goto_10
    invoke-virtual {v4, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 898
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/users/UserSettings;->emergencyInfoActivityPresent(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 731
    :cond_1e
    return-void

    .line 872
    .end local v11    # "headerMargin2":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    .restart local v13    # "moreUsers":Z
    :cond_1f
    const/4 v3, 0x1

    goto/16 :goto_c

    .line 876
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 880
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 891
    .end local v13    # "moreUsers":Z
    .restart local v11    # "headerMargin2":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    :cond_22
    const/4 v3, 0x0

    goto :goto_f

    .line 895
    :cond_23
    const/4 v3, 0x0

    goto :goto_10
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1060
    const v0, 0x7f0e0db0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 390
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 392
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 393
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings_ex/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1017
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/users/UserPreference;

    if-eqz v2, :cond_0

    .line 1018
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/users/UserPreference;->getUserId()I

    move-result v1

    .line 1019
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1016
    .end local v1    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1022
    .restart local v1    # "userId":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1023
    const-string/jumbo v3, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1022
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1024
    .local v0, "removeDisallowedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 1028
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 1032
    .end local v0    # "removeDisallowedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 1019
    :pswitch_data_0
    .packed-switch 0x7f1102c7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    if-eqz p1, :cond_2

    .line 212
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    .line 215
    :cond_0
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 221
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    .line 222
    const-string/jumbo v0, "user"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_3

    .line 224
    return-void

    .line 227
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 229
    .local v3, "myUserId":I
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->addPreferencesFromResource(I)V

    .line 230
    const-string/jumbo v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 231
    new-instance v0, Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    const-string/jumbo v1, "user_me"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    const v1, 0x7f0e0d47

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserPreference;->setSummary(I)V

    .line 239
    :cond_4
    const-string/jumbo v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DimmableIconPreference;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/DimmableIconPreference;->useAdminDisabledSummary(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    const v1, 0x7f0e0d40

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DimmableIconPreference;->setTitle(I)V

    .line 249
    :cond_5
    const-string/jumbo v0, "lock_screen_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mLockScreenSettings:Landroid/support/v7/preference/PreferenceGroup;

    .line 250
    const-string/jumbo v0, "add_users_when_locked"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 251
    const-string/jumbo v0, "emergency_info"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 253
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/android/settings_ex/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v10

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->loadProfile()V

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V

    .line 258
    iput-boolean v11, p0, Lcom/android/settings_ex/users/UserSettings;->mShouldUpdateUserList:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 262
    return-void

    .line 208
    :cond_6
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 23
    .param p1, "dialogId"    # I

    .prologue
    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 498
    .local v17, "context":Landroid/content/Context;
    if-nez v17, :cond_0

    const/4 v5, 0x0

    return-object v5

    .line 499
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 637
    const/4 v5, 0x0

    return-object v5

    .line 502
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 503
    new-instance v8, Lcom/android/settings_ex/users/UserSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings_ex/users/UserSettings$6;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    .line 502
    invoke-static {v5, v7, v8}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v18

    .line 509
    .local v18, "dlg":Landroid/app/Dialog;
    return-object v18

    .line 512
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    const v7, 0x7f0e0d58

    .line 512
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 514
    const v7, 0x104000a

    const/4 v8, 0x0

    .line 512
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 517
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 518
    const/4 v7, 0x0

    .line 517
    invoke-virtual {v5, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 520
    .local v21, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    .line 519
    move-object/from16 v0, v21

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 521
    .local v19, "longMessageDisplayed":Z
    if-eqz v19, :cond_1

    .line 522
    const v20, 0x7f0e0d52

    .line 524
    .local v20, "messageResId":I
    :goto_0
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 525
    const/16 v22, 0x1

    .line 526
    .local v22, "userType":I
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    const v7, 0x7f0e0d50

    .line 526
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 530
    new-instance v7, Lcom/android/settings_ex/users/UserSettings$7;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/settings_ex/users/UserSettings$7;-><init>(Lcom/android/settings_ex/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 529
    const v8, 0x104000a

    .line 526
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 539
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 526
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 541
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 523
    .end local v18    # "dlg":Landroid/app/Dialog;
    .end local v20    # "messageResId":I
    .end local v22    # "userType":I
    :cond_1
    const v20, 0x7f0e0d51

    .restart local v20    # "messageResId":I
    goto :goto_0

    .line 525
    :cond_2
    const/16 v22, 0x2

    .restart local v22    # "userType":I
    goto :goto_1

    .line 544
    .end local v19    # "longMessageDisplayed":Z
    .end local v20    # "messageResId":I
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v22    # "userType":I
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    const v7, 0x7f0e0d53

    .line 544
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 546
    const v7, 0x7f0e0d54

    .line 544
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 548
    new-instance v7, Lcom/android/settings_ex/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings_ex/users/UserSettings$8;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    .line 547
    const v8, 0x7f0e0d56

    .line 544
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 553
    const v7, 0x7f0e0d57

    const/4 v8, 0x0

    .line 544
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 555
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 558
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    const v7, 0x7f0e0d55

    .line 558
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 561
    new-instance v7, Lcom/android/settings_ex/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings_ex/users/UserSettings$9;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    .line 560
    const v8, 0x104000a

    .line 558
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 566
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 558
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 568
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 571
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v15, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0e0d4e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string/jumbo v5, "summary"

    const v7, 0x7f0e0d4c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v14, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0e0d4f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string/jumbo v5, "summary"

    const v7, 0x7f0e0d4d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    .local v16, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 583
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string/jumbo v7, "summary"

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 584
    const v7, 0x7f110063

    const v9, 0x7f1100e5

    filled-new-array {v7, v9}, [I

    move-result-object v9

    .line 582
    const v7, 0x7f0401f9

    .line 581
    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 585
    .local v4, "adapter":Landroid/widget/SimpleAdapter;
    const v5, 0x7f0e0d4a

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 587
    new-instance v5, Lcom/android/settings_ex/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings_ex/users/UserSettings$10;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    .line 586
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 598
    .end local v4    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 599
    const v7, 0x7f0e0d42

    .line 598
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 601
    new-instance v7, Lcom/android/settings_ex/users/UserSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings_ex/users/UserSettings$11;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    .line 600
    const v8, 0x7f0e0d43

    .line 598
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 607
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 598
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 609
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 612
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    const v7, 0x7f0e0d6c

    .line 612
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 614
    const v7, 0x7f0e0d6d

    .line 612
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 616
    new-instance v7, Lcom/android/settings_ex/users/UserSettings$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings_ex/users/UserSettings$12;-><init>(Lcom/android/settings_ex/users/UserSettings;)V

    .line 615
    const v8, 0x7f0e0d6e

    .line 612
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 622
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 612
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 624
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 627
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/users/UserSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 633
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    .line 631
    const v11, 0x7f0e05ff

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    .line 627
    invoke-virtual/range {v7 .. v13}, Lcom/android/settings_ex/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings_ex/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v18

    .line 634
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 311
    .local v5, "um":Landroid/os/UserManager;
    const-string/jumbo v6, "no_remove_user"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    .line 312
    .local v0, "allowRemoveUser":Z
    :goto_0
    invoke-virtual {v5}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    .line 313
    .local v1, "canSwitchUsers":Z
    iget-object v6, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v6, v6, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 314
    iget-object v6, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "nickname":Ljava/lang/String;
    const/4 v3, 0x1

    .line 316
    .local v3, "pos":I
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const v8, 0x7f0e0d5a

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-interface {p1, v9, v10, v9, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 317
    .local v4, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 319
    .end local v2    # "nickname":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "removeThisUser":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 308
    return-void

    .line 311
    .end local v0    # "allowRemoveUser":Z
    .end local v1    # "canSwitchUsers":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "allowRemoveUser":Z
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDialogShowing()V

    .line 492
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 489
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1041
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    .line 1042
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1039
    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1069
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 325
    .local v0, "itemId":I
    if-ne v0, v2, :cond_0

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/users/UserSettings;->onRemoveUserClicked(I)V

    .line 327
    return v2

    .line 329
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mShouldUpdateUserList:Z

    .line 281
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 279
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1048
    iget-object v3, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUserWhenLocked:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v3, :cond_1

    move-object v0, p2

    .line 1049
    check-cast v0, Ljava/lang/Boolean;

    .line 1050
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_users_when_locked"

    .line 1051
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 1050
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1052
    return v2

    .line 1055
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 956
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mMePreference:Lcom/android/settings_ex/users/UserPreference;

    if-ne p1, v4, :cond_3

    .line 957
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v4, :cond_0

    .line 958
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    .line 959
    return v8

    .line 962
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 963
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {p0, v4, v9}, Lcom/android/settings_ex/users/UserSettings;->onManageUserClicked(IZ)V

    .line 995
    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    :goto_0
    return v9

    .line 965
    .restart local p1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 967
    :cond_3
    instance-of v4, p1, Lcom/android/settings_ex/users/UserPreference;

    if-eqz v4, :cond_4

    .line 968
    check-cast p1, Lcom/android/settings_ex/users/UserPreference;

    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings_ex/users/UserPreference;->getUserId()I

    move-result v3

    .line 970
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 971
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 972
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings_ex/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 973
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    iget v7, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v8, 0x2

    .line 972
    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 975
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "userId":I
    .restart local p1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mAddUser:Lcom/android/settings_ex/DimmableIconPreference;

    if-ne p1, v4, :cond_7

    .line 979
    invoke-static {}, Lcom/android/settings_ex/users/UserSettings;->getAvailableInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 980
    .local v1, "size":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xc800000

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 981
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e035b

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 983
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_6

    .line 984
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 986
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/settings_ex/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_0

    .line 990
    .end local v1    # "size":Ljava/lang/Long;
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings;->mEmergencyInfoPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 991
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 992
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mUserCaps:Lcom/android/settings_ex/users/UserSettings$UserCapabilities;

    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/users/UserSettings$UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->loadProfile()V

    .line 274
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserSettings;->updateUserList()V

    .line 267
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    const-string/jumbo v0, "adding_user"

    iget v1, p0, Lcom/android/settings_ex/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string/jumbo v0, "removing_user"

    iget v1, p0, Lcom/android/settings_ex/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings;->mEditUserInfoController:Lcom/android/settings_ex/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings_ex/users/EditUserInfoController;->startingActivityForResult()V

    .line 304
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    return-void
.end method
