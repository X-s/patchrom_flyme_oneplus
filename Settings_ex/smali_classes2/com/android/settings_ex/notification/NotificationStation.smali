.class public Lcom/android/settings_ex/notification/NotificationStation;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationStation$1;,
        Lcom/android/settings_ex/notification/NotificationStation$2;,
        Lcom/android/settings_ex/notification/NotificationStation$3;,
        Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;,
        Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DUMP_EXTRAS:Z = true

.field private static final DUMP_PARCEL:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/notification/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/NotificationStation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/notification/NotificationStation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->scheduleRefreshList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings_ex/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings_ex/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationStation$1;-><init>(Lcom/android/settings_ex/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/android/settings_ex/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationStation$2;-><init>(Lcom/android/settings_ex/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 132
    new-instance v0, Lcom/android/settings_ex/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationStation$3;-><init>(Lcom/android/settings_ex/notification/NotificationStation;)V

    .line 131
    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 56
    return-void
.end method

.method private static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 221
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    return-object v0
.end method

.method private static formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 6
    .param p0, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 243
    .local v1, "is":Landroid/content/IntentSender;
    const-string/jumbo v4, "Intent(pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v2

    .line 247
    .local v2, "isActivity":Z
    if-eqz v2, :cond_0

    const-string/jumbo v4, " (activity)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2    # "isActivity":Z
    :cond_0
    :goto_0
    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 248
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 473
    const/4 v1, 0x0

    .line 475
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 477
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 478
    const/4 p2, 0x0

    .line 480
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 488
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 481
    .local v1, "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    return-object v5

    .line 486
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method private static getTitleString(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 230
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 234
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 235
    :cond_2
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v5, 0x0

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 516
    .local v1, "r":Landroid/content/res/Resources;
    if-nez p3, :cond_0

    .line 517
    return-object v5

    .line 521
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icon not found in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 523
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 525
    const-string/jumbo v4, ": "

    .line 523
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 525
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    return-object v5

    .line 524
    :cond_1
    const-string/jumbo v2, "<system>"

    goto :goto_0
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 256
    .local v7, "currentUserId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v23, v0

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 256
    invoke-interface/range {v23 .. v24}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 258
    .local v5, "active":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v23, v0

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x32

    .line 258
    invoke-interface/range {v23 .. v25}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 262
    .local v9, "dismissed":[Landroid/service/notification/StatusBarNotification;
    new-instance v14, Ljava/util/ArrayList;

    array-length v0, v5

    move/from16 v23, v0

    array-length v0, v9

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    new-instance v17, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct/range {v17 .. v17}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 267
    .local v17, "rank":Landroid/service/notification/NotificationListenerService$Ranking;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [[Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    const/16 v23, 0x0

    aput-object v5, v27, v23

    const/16 v23, 0x1

    aput-object v9, v27, v23

    .line 266
    const/16 v23, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v26, v23

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_1a

    aget-object v18, v27, v26

    .line 268
    .local v18, "resultset":[Landroid/service/notification/StatusBarNotification;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v25, v23

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_19

    aget-object v20, v18, v25

    .line 269
    .local v20, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v23, 0x1

    move/from16 v24, v23

    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    move/from16 v0, v23

    if-eq v0, v7, :cond_1

    const/16 v23, 0x1

    :goto_3
    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 268
    :goto_4
    add-int/lit8 v23, v25, 0x1

    move/from16 v25, v23

    goto :goto_1

    .line 269
    :cond_0
    const/16 v23, 0x0

    move/from16 v24, v23

    goto :goto_2

    :cond_1
    const/16 v23, 0x0

    goto :goto_3

    .line 273
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 274
    .local v15, "n":Landroid/app/Notification;
    new-instance v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;)V

    .line 275
    .local v13, "info":Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 276
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 277
    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v24, v0

    iget v0, v15, Landroid/app/Notification;->icon:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 280
    invoke-static {v15}, Lcom/android/settings_ex/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 281
    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 282
    const v23, 0x7f0e100a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 284
    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 285
    iget v0, v15, Landroid/app/Notification;->priority:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 287
    move-object/from16 v0, v18

    if-ne v0, v5, :cond_d

    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    iput-boolean v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 289
    new-instance v19, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 290
    .local v19, "sb":Landroid/text/SpannableStringBuilder;
    const v23, 0x7f0e100b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, "delim":Ljava/lang/String;
    const v23, 0x7f0e100c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 293
    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 291
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 294
    const-string/jumbo v24, "\n"

    .line 291
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 295
    const v24, 0x7f0e100d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 291
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 297
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v24

    .line 291
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 298
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 299
    const v24, 0x7f0e101d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 298
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 301
    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Icon;->toString()Ljava/lang/String;

    move-result-object v24

    .line 298
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 302
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 303
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 304
    const v24, 0x7f0e100e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 303
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 306
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v24

    .line 303
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    invoke-virtual {v15}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 309
    const v23, 0x7f0e100f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 308
    invoke-static/range {v23 .. v23}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    :cond_4
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 313
    const v24, 0x7f0e1020

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 312
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 315
    iget v0, v15, Landroid/app/Notification;->defaults:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_e

    .line 316
    const v23, 0x7f0e1022

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 322
    :goto_6
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 323
    const v24, 0x7f0e1021

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 322
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 325
    iget v0, v15, Landroid/app/Notification;->defaults:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_10

    .line 326
    const v23, 0x7f0e1022

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 335
    :cond_5
    :goto_7
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 336
    const v24, 0x7f0e1010

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 335
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 338
    iget v0, v15, Landroid/app/Notification;->visibility:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v24

    .line 335
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 339
    iget-object v0, v15, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 340
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 342
    const v24, 0x7f0e1011

    .line 341
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 340
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 344
    iget-object v0, v15, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->getTitleString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v24

    .line 340
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 346
    :cond_6
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 347
    const v24, 0x7f0e1012

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 346
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 349
    iget v0, v15, Landroid/app/Notification;->priority:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v24

    .line 346
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 350
    move-object/from16 v0, v18

    if-ne v0, v5, :cond_7

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 353
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 355
    const v24, 0x7f0e1013

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 353
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 357
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v24

    .line 353
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 358
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 359
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 361
    const v24, 0x7f0e1014

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 359
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 363
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v24

    .line 359
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 377
    :cond_7
    :goto_8
    iget-object v0, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 378
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 380
    const v24, 0x7f0e1015

    .line 379
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 378
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 382
    iget-object v0, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v24

    .line 378
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    :cond_8
    iget-object v0, v15, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 385
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 387
    const v24, 0x7f0e1016

    .line 386
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 385
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 389
    iget-object v0, v15, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v24

    .line 385
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    :cond_9
    iget-object v0, v15, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 392
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 394
    const v24, 0x7f0e1017

    .line 393
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 392
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 396
    iget-object v0, v15, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v24

    .line 392
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    :cond_a
    iget-object v0, v15, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move-object/from16 v23, v0

    if-eqz v23, :cond_15

    iget-object v0, v15, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_15

    .line 399
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 400
    const v24, 0x7f0e1018

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 399
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 401
    const/4 v6, 0x0

    .local v6, "ai":I
    :goto_9
    iget-object v0, v15, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_15

    .line 402
    iget-object v0, v15, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move-object/from16 v23, v0

    aget-object v4, v23, v6

    .line 403
    .local v4, "action":Landroid/app/Notification$Action;
    const-string/jumbo v23, "\n  "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 405
    const v24, 0x7f0e1019

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 403
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 407
    iget-object v0, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    .line 403
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 408
    iget-object v0, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 409
    const-string/jumbo v23, "\n    "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 411
    const v24, 0x7f0e1015

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 409
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 413
    iget-object v0, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->formatPendingIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v24

    .line 409
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 415
    :cond_b
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v23

    if-eqz v23, :cond_c

    .line 416
    const-string/jumbo v23, "\n    "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 418
    const v24, 0x7f0e101a

    .line 417
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 416
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 420
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 416
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 401
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 287
    .end local v4    # "action":Landroid/app/Notification$Action;
    .end local v6    # "ai":I
    .end local v8    # "delim":Ljava/lang/String;
    .end local v19    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 317
    .restart local v8    # "delim":Ljava/lang/String;
    .restart local v19    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_e
    iget-object v0, v15, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 318
    iget-object v0, v15, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 466
    .end local v5    # "active":[Landroid/service/notification/StatusBarNotification;
    .end local v8    # "delim":Ljava/lang/String;
    .end local v9    # "dismissed":[Landroid/service/notification/StatusBarNotification;
    .end local v13    # "info":Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    .end local v15    # "n":Landroid/app/Notification;
    .end local v17    # "rank":Landroid/service/notification/NotificationListenerService$Ranking;
    .end local v18    # "resultset":[Landroid/service/notification/StatusBarNotification;
    .end local v19    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v20    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v10

    .line 467
    .local v10, "e":Landroid/os/RemoteException;
    sget-object v23, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "Cannot load Notifications: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    const/16 v23, 0x0

    return-object v23

    .line 320
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v5    # "active":[Landroid/service/notification/StatusBarNotification;
    .restart local v8    # "delim":Ljava/lang/String;
    .restart local v9    # "dismissed":[Landroid/service/notification/StatusBarNotification;
    .restart local v13    # "info":Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    .restart local v15    # "n":Landroid/app/Notification;
    .restart local v17    # "rank":Landroid/service/notification/NotificationListenerService$Ranking;
    .restart local v18    # "resultset":[Landroid/service/notification/StatusBarNotification;
    .restart local v19    # "sb":Landroid/text/SpannableStringBuilder;
    .restart local v20    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_f
    const v23, 0x7f0e1023

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6

    .line 327
    :cond_10
    iget-object v0, v15, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    .line 328
    const/16 v22, 0x0

    .local v22, "vi":I
    :goto_a
    iget-object v0, v15, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 329
    if-lez v22, :cond_11

    const/16 v23, 0x2c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 330
    :cond_11
    iget-object v0, v15, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v23, v0

    aget-wide v30, v23, v22

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 328
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 333
    .end local v22    # "vi":I
    :cond_12
    const v23, 0x7f0e1023

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    .line 366
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationStation;->mRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    move-object/from16 v23, v0

    if-nez v23, :cond_14

    .line 367
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 369
    const v24, 0x7f0e1024

    .line 368
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 367
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_8

    .line 371
    :cond_14
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 373
    const v24, 0x7f0e1025

    .line 372
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 371
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_8

    .line 424
    :cond_15
    iget-object v0, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 425
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 427
    const v24, 0x7f0e101b    # 1.88834E38f

    .line 426
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 425
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 429
    iget-object v0, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->toString()Ljava/lang/String;

    move-result-object v24

    .line 425
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 433
    :cond_16
    iget-object v0, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    iget-object v0, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->size()I

    move-result v23

    if-lez v23, :cond_18

    .line 434
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 436
    const v24, 0x7f0e101c

    .line 435
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 434
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 437
    iget-object v0, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "extraKey$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 438
    .local v11, "extraKey":Ljava/lang/String;
    iget-object v0, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 439
    .local v21, "val":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_17

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v30, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 440
    :cond_17
    const-string/jumbo v23, "\n  "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 445
    .end local v11    # "extraKey":Ljava/lang/String;
    .end local v12    # "extraKey$iterator":Ljava/util/Iterator;
    .end local v21    # "val":Ljava/lang/String;
    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v16

    .line 446
    .local v16, "p":Landroid/os/Parcel;
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 447
    const-string/jumbo v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 448
    const v24, 0x7f0e101e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 447
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 450
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->dataPosition()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 447
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 451
    const/16 v24, 0x20

    .line 447
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 452
    const v24, 0x7f0e101f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 447
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 454
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->getBlobAshmemSize()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 447
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 455
    const-string/jumbo v24, "\n"

    .line 447
    invoke-virtual/range {v23 .. v24}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 458
    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    .line 460
    const-string/jumbo v23, "   [%d] %s: %s"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    iget-wide v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v24, v31

    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aput-object v30, v24, v31

    iget-object v0, v13, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    aput-object v30, v24, v31

    invoke-static/range {v23 .. v24}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 266
    .end local v8    # "delim":Ljava/lang/String;
    .end local v13    # "info":Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;
    .end local v15    # "n":Landroid/app/Notification;
    .end local v16    # "p":Landroid/os/Parcel;
    .end local v19    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v20    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_19
    add-int/lit8 v23, v26, 0x1

    move/from16 v26, v23

    goto/16 :goto_0

    .line 465
    .end local v18    # "resultset":[Landroid/service/notification/StatusBarNotification;
    :cond_1a
    return-object v14
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 494
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 499
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 495
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot get application icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 505
    const/16 v3, 0x2000

    .line 504
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 506
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 507
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Cannot load package name"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 213
    return-void
.end method

.method private refreshList()V
    .locals 7

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    .local v0, "N":I
    const-string/jumbo v3, "adding %d infos"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-nez v3, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationStation;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 208
    new-instance v5, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {v5, v6, v3}, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;)V

    .line 207
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private scheduleRefreshList()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 176
    const-string/jumbo v1, "onActivityCreated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 180
    .local v0, "listView":Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0, v3}, Lcom/android/settings_ex/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 175
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    const-string/jumbo v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 148
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 141
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "onDetach()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation;->mHandler:Landroid/os/Handler;

    .line 156
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDetach()V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 160
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 185
    const-string/jumbo v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationStation;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 188
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationStation;->refreshList()V

    .line 184
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings_ex/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
