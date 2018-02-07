.class public Lcom/oneplus/settings/apploader/OPApplicationLoader;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/apploader/OPApplicationLoader$1;,
        Lcom/oneplus/settings/apploader/OPApplicationLoader$GestureAppComparetor;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CALCULATOR_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.calculator"

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.camera"

.field private static final CARD_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.card"

.field private static final CONTACS_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final DATA_LOAD_COMPLETED:I = 0x0

.field private static final DESKCLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.deskclock"

.field private static final FILEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.filemanager"

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final GOOGLE_QUICK_SEARCH_BOX_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final LOAD_ALL_APP:I = 0x0

.field public static final LOAD_SELECTED_APP:I = 0x1

.field public static final LOAD_UNSELECTED_APP:I = 0x2

.field private static final MARKET_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.market"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final NOTE_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.note"

.field public static final OP_GAME_MODE_APP:I = 0x44

.field public static final OP_READ_MODE_APP:I = 0x43

.field public static final PACKAGENAME_CALENDAR:Ljava/lang/String; = "com.google.android.calendar"

.field public static final PACKAGENAME_OP_CALENDAR:Ljava/lang/String; = "com.oneplus.calendar"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.dialer"

.field private static PROGRESS_MIN_SHOW_TIME:J = 0x0L

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings_ex"

.field private static final SOUNDRECORDER_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.soundrecorder"

.field private static final TAG:Ljava/lang/String; = "AppLockerDataController"

.field private static final WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.weather"

.field private static final WEATHER_PACKAGE_NAME_NET:Ljava/lang/String; = "net.oneplus.weather"

.field private static WILL_SHOW_PROGRESS_TIME:J


# instance fields
.field private mAllAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppType:I

.field private mContext:Landroid/content/Context;

.field private mHandler1:Landroid/os/Handler;

.field private mHasShowProgress:Z

.field private mLoading:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowPromptRunnable:Ljava/lang/Runnable;

.field private mShowPromptTime:J

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mUnSelectedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelectedAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/settings/apploader/OPApplicationLoader;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptTime:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->WILL_SHOW_PROGRESS_TIME:J

    .line 69
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->PROGRESS_MIN_SHOW_TIME:J

    .line 371
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;

    invoke-direct {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppMap:Ljava/util/Map;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 134
    iput-object p3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 135
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppMap:Ljava/util/Map;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 126
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    .line 123
    return-void
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 196
    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 197
    .local v1, "profilesMax":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 198
    iget-object v2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mProfiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 199
    const/4 v2, 0x1

    return v2

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private packageExcludeFilter(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string/jumbo v1, "com.oneplus.deskclock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.oneplus.market"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    const-string/jumbo v1, "com.android.settings_ex"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 404
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 405
    const-string/jumbo v1, "com.android.dialer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 405
    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 406
    const-string/jumbo v1, "com.oneplus.weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 406
    const-string/jumbo v1, "net.oneplus.weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 406
    const-string/jumbo v1, "com.google.android.calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 407
    const-string/jumbo v1, "com.oneplus.calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 407
    const-string/jumbo v1, "com.oneplus.gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 408
    const-string/jumbo v1, "com.oneplus.filemanager"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 408
    const-string/jumbo v1, "com.oneplus.calculator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 403
    if-nez v1, :cond_2

    .line 409
    const-string/jumbo v1, "com.oneplus.card"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 410
    :goto_0
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    .line 411
    if-nez v0, :cond_3

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.oneplus.note"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    :cond_0
    :goto_1
    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    .line 414
    if-nez v0, :cond_4

    const-string/jumbo v1, "com.oneplus.soundrecorder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "com.oneplus.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    :cond_1
    :goto_2
    return v0

    .line 403
    :cond_2
    const/4 v0, 0x1

    .local v0, "filter":Z
    goto :goto_0

    .line 411
    .end local v0    # "filter":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "filter":Z
    goto :goto_1

    .line 414
    .end local v0    # "filter":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "filter":Z
    goto :goto_2
.end method


# virtual methods
.method public getAllAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object v0
.end method

.method public getAppListByType(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object v0

    .line 224
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    return-object v0

    .line 226
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    return-object v0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    return-object v0
.end method

.method public getUnSelectedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    return-object v0
.end method

.method public initData(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 147
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;ILandroid/os/Handler;)V

    .line 158
    .local v0, "initRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoading:Z

    return v0
.end method

.method public loadAllAppList()V
    .locals 12

    .prologue
    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 248
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .local v8, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 254
    const/4 v5, 0x0

    .line 250
    invoke-virtual {v3, v8, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 255
    .local v11, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "reInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v9, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 260
    .local v6, "activityName":Ljava/lang/String;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 262
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 261
    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    .local v2, "appLabel":Ljava/lang/String;
    const-string/jumbo v3, "com.oneplus.camera"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 269
    .local v4, "uid":I
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 270
    const-string/jumbo v3, ""

    const/4 v5, 0x0

    .line 269
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 271
    .local v0, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v8    # "mainIntent":Landroid/content/Intent;
    .end local v9    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppLockerDataController"

    const-string/jumbo v5, "some unknown error happened."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 274
    .restart local v8    # "mainIntent":Landroid/content/Intent;
    .restart local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .restart local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppList:Ljava/util/List;

    sget-object v5, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public loadAppListByType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAllAppList()V

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedAppList()V

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadUnSelectedAppList()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadSelectedAppList()V
    .locals 13

    .prologue
    .line 284
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 285
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v8, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v8, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 291
    const/4 v12, 0x0

    .line 287
    invoke-virtual {v3, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 292
    .local v11, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "reInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 296
    .local v9, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 297
    .local v6, "activityName":Ljava/lang/String;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 299
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 298
    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    .local v2, "appLabel":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 306
    .local v4, "uid":I
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 308
    .local v5, "isSelected":Z
    if-eqz v5, :cond_1

    .line 309
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 310
    const-string/jumbo v3, ""

    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 311
    .local v0, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "isSelected":Z
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v8    # "mainIntent":Landroid/content/Intent;
    .end local v9    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    .line 320
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppLockerDataController"

    const-string/jumbo v12, "some unknown error happened."

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 317
    .restart local v8    # "mainIntent":Landroid/content/Intent;
    .restart local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .restart local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppList:Ljava/util/List;

    sget-object v12, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public loadSelectedGameOrReadAppMap(I)Ljava/util/Map;
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 169
    iget-object v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 170
    const/4 v7, 0x1

    new-array v7, v7, [I

    aput p1, v7, v9

    .line 169
    invoke-virtual {v6, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4

    .line 173
    .local v4, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 174
    iget-object v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 176
    :cond_0
    if-eqz v4, :cond_3

    .line 177
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 178
    .local v2, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 179
    .local v5, "userId":I
    invoke-direct {p0, v5}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "op$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 184
    .local v0, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 185
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_2

    .line 186
    iget-object v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 186
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 192
    .end local v0    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v1    # "op$iterator":Ljava/util/Iterator;
    .end local v2    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v3    # "packageOp$iterator":Ljava/util/Iterator;
    .end local v5    # "userId":I
    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    return-object v6
.end method

.method public loadUnSelectedAppList()V
    .locals 13

    .prologue
    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 328
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v8, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v8, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 334
    const/4 v12, 0x0

    .line 330
    invoke-virtual {v3, v8, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 335
    .local v11, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "reInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 339
    .local v9, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 340
    .local v6, "activityName":Ljava/lang/String;
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 341
    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    .local v2, "appLabel":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 349
    .local v4, "uid":I
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mSelectedAppMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 351
    .local v5, "isUnSelected":Z
    if-nez v5, :cond_1

    .line 352
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 353
    const-string/jumbo v3, ""

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 354
    .local v0, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    .end local v0    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "isUnSelected":Z
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v8    # "mainIntent":Landroid/content/Intent;
    .end local v9    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .end local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    .line 363
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppLockerDataController"

    const-string/jumbo v12, "some unknown error happened."

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 360
    .restart local v8    # "mainIntent":Landroid/content/Intent;
    .restart local v10    # "reInfo$iterator":Ljava/util/Iterator;
    .restart local v11    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUnSelectedAppList:Ljava/util/List;

    sget-object v12, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final onPostExecute()V
    .locals 8

    .prologue
    .line 94
    iget-boolean v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    if-eqz v4, :cond_1

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptTime:J

    sub-long v0, v4, v6

    .line 96
    .local v0, "promptShownTime":J
    sget-wide v4, Lcom/oneplus/settings/apploader/OPApplicationLoader;->PROGRESS_MIN_SHOW_TIME:J

    sub-long v2, v4, v0

    .line 97
    .local v2, "remainShowTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$3;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .end local v0    # "promptShownTime":J
    .end local v2    # "remainShowTime":J
    :goto_0
    return-void

    .line 108
    .restart local v0    # "promptShownTime":J
    .restart local v2    # "remainShowTime":J
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$4;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 120
    .end local v0    # "promptShownTime":J
    .end local v2    # "remainShowTime":J
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHasShowProgress:Z

    .line 79
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;-><init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mHandler1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mShowPromptRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oneplus/settings/apploader/OPApplicationLoader;->WILL_SHOW_PROGRESS_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    return-void
.end method

.method public setAppType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    .line 142
    return-void
.end method

.method public setmLoadingContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mLoadingContainer:Landroid/view/View;

    .line 139
    return-void
.end method
