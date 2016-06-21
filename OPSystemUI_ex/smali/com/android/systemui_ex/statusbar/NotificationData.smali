.class public Lcom/android/systemui_ex/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;,
        Lcom/android/systemui_ex/statusbar/NotificationData$Environment;,
        Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private final PACKAGE_NAME_CLOUD_MUSIC:Ljava/lang/String;

.field private final PACKAGE_NAME_INCALLUI:Ljava/lang/String;

.field private final PACKAGE_NAME_SOUNDRECORDER:Ljava/lang/String;

.field private PACKAGE_NAME_SYSTEMUI:Ljava/lang/String;

.field private final PACKAGE_NAME_TELECOM:Ljava/lang/String;

.field private final PRIORITY_FOR_CLOUD_MUSIC:I

.field private final PRIORITY_FOR_RECORDER:I

.field private final PRIORITY_FOR_TELECOM:I

.field private mChronometerStopTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerIndex:I

.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui_ex/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/android/systemui_ex/statusbar/NotificationData$Environment;

.field private mGroupsWithSummaries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private mINM:Landroid/app/INotificationManager;

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui_ex/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mShowNotificationOnStatusBar:Z

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/NotificationData$Environment;)V
    .locals 1
    .param p1, "environment"    # Lcom/android/systemui_ex/statusbar/NotificationData$Environment;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "com.netease.cloudmusic"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PACKAGE_NAME_CLOUD_MUSIC:Ljava/lang/String;

    .line 48
    const-string v0, "com.oneplus.soundrecorder"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PACKAGE_NAME_SOUNDRECORDER:Ljava/lang/String;

    .line 49
    const-string v0, "com.android.server.telecom"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PACKAGE_NAME_TELECOM:Ljava/lang/String;

    .line 50
    const-string v0, "com.android.incallui"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PACKAGE_NAME_INCALLUI:Ljava/lang/String;

    .line 51
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PACKAGE_NAME_SYSTEMUI:Ljava/lang/String;

    .line 58
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PRIORITY_FOR_RECORDER:I

    .line 59
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PRIORITY_FOR_CLOUD_MUSIC:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PRIORITY_FOR_TELECOM:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mINM:Landroid/app/INotificationManager;

    .line 144
    new-instance v0, Lcom/android/systemui_ex/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/NotificationData$1;-><init>(Lcom/android/systemui_ex/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 201
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui_ex/statusbar/NotificationData$Environment;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/NotificationData;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationData;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationData;->isPrioritizedNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/systemui_ex/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/NotificationData;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui_ex/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "e"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    .line 473
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    iget-object v0, p4, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 476
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      tickerText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private isPrioritizedNotification(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 507
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 505
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "sbnPackage":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCustomizedPriority()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 349
    iput v4, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    .line 352
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 353
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 368
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-virtual {p0, v6, v3}, Lcom/android/systemui_ex/statusbar/NotificationData;->findPriority(Ljava/lang/String;I)I

    move-result v2

    .line 369
    .local v2, "priority":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->setPriority(I)V

    .line 370
    if-ne v2, v5, :cond_1

    .line 371
    iget v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    .line 352
    .end local v2    # "priority":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 354
    :sswitch_0
    const-string v6, "com.oneplus.soundrecorder"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v6, "com.netease.cloudmusic"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "com.android.server.telecom"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_1

    .line 356
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->setPriority(I)V

    .line 357
    iget v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    goto :goto_2

    .line 360
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->setPriority(I)V

    .line 361
    iget v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    goto :goto_2

    .line 364
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->setPriority(I)V

    .line 365
    iget v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    goto :goto_2

    .line 376
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ac9764e -> :sswitch_0
        0xbf12e58 -> :sswitch_2
        0x75fd0160 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 445
    const-string v0, "android"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationData;->filterAndSort()V

    .line 258
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 224
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 451
    .local v1, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active notifications: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x0

    .local v2, "active":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 455
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 456
    .local v3, "e":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui_ex/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui_ex/statusbar/NotificationData$Entry;)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v3    # "e":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 460
    .local v0, "M":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inactive notifications: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    const/4 v6, 0x0

    .line 463
    .local v6, "inactiveCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 464
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 465
    .local v4, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 466
    invoke-direct {p0, p1, p2, v6, v4}, Lcom/android/systemui_ex/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui_ex/statusbar/NotificationData$Entry;)V

    .line 467
    add-int/lit8 v6, v6, 0x1

    .line 463
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 470
    .end local v4    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_2
    return-void
.end method

.method public filterAndSort()V
    .locals 18

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 265
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mShowNotificationOnStatusBar:Z

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 268
    .local v3, "N":I
    const/4 v10, 0x0

    .line 269
    .local v10, "maxPriorityOnStatusBar":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_8

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 271
    .local v6, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v13, v6, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 272
    .local v13, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 274
    .local v11, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui_ex/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 269
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_1
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->showOnStatusBar()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 283
    const-string v14, "NotificationData"

    const-string v15, "filterAndSort: show hightlight hint on status bar "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mShowNotificationOnStatusBar:Z

    .line 288
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.incallui"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 289
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 290
    const v10, 0x7fffffff

    .line 293
    :cond_2
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->getPriorityOnStatusBar()I

    move-result v12

    .line 294
    .local v12, "priority":I
    if-le v12, v10, :cond_3

    .line 295
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 296
    move v10, v12

    .line 299
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 301
    invoke-virtual {v11}, Landroid/app/Notification;->getChronometerState()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 303
    new-instance v4, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;-><init>(Lcom/android/systemui_ex/statusbar/NotificationData;Lcom/android/systemui_ex/statusbar/NotificationData$1;)V

    .line 304
    .local v4, "chState":Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;
    invoke-virtual {v11}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v14

    iput-wide v14, v4, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->mBaseTime:J

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v4, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->mStopTime:J

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v4    # "chState":Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "priority":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 309
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v12    # "priority":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;

    .line 310
    .local v9, "lastState":Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;
    iget-wide v14, v9, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->mBaseTime:J

    invoke-virtual {v11}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 311
    invoke-virtual {v11}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->mBaseTime:J

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->mStopTime:J

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 317
    .end local v9    # "lastState":Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 320
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 327
    .end local v6    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v12    # "priority":I
    .end local v13    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mShowNotificationOnStatusBar:Z

    if-nez v14, :cond_9

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 332
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 334
    .local v2, "M":I
    add-int/lit8 v7, v2, -0x1

    :goto_3
    if-ltz v7, :cond_b

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 336
    .local v5, "ent":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v13, v5, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 337
    .restart local v13    # "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupChild()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 343
    .end local v2    # "M":I
    .end local v5    # "ent":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v13    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/NotificationData;->setCustomizedPriority()V

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 346
    return-void
.end method

.method public findPriority(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 382
    .local v1, "priority":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mINM:Landroid/app/INotificationManager;

    if-nez v2, :cond_0

    .line 383
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mINM:Landroid/app/INotificationManager;

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mINM:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->PACKAGE_NAME_SYSTEMUI:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Landroid/app/INotificationManager;->getPackagePriorityBySystemUI(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 392
    :goto_0
    return v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChronomterStopTime(Ljava/lang/String;)J
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mChronometerStopTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;

    iget-wide v0, v0, Lcom/android/systemui_ex/statusbar/NotificationData$ChronomterState;->mStopTime:J

    .line 539
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDividerIndex()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    return v0
.end method

.method public getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 248
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public hasActiveClearableNotifications()Z
    .locals 3

    .prologue
    .line 420
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 421
    .local v0, "e":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const/4 v2, 0x1

    .line 427
    .end local v0    # "e":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGroupWithSummary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mGroupsWithSummaries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 228
    .local v0, "removed":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 230
    .end local v0    # "removed":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :goto_0
    return-object v0

    .line 229
    .restart local v0    # "removed":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0
.end method

.method shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    .line 400
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui_ex/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui_ex/statusbar/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui_ex/statusbar/NotificationData$Environment;

    invoke-interface {v1, p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui_ex/statusbar/NotificationData$Environment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui_ex/statusbar/NotificationData$Environment;->shouldHideSensitiveContents(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDivider()Z
    .locals 2

    .prologue
    .line 511
    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mDividerIndex:I

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 512
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNotificationOnStatusBar()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData;->mShowNotificationOnStatusBar:Z

    return v0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 235
    return-void
.end method
