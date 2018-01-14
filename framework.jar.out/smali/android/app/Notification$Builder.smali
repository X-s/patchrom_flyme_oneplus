.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final MAX_ACTION_BUTTONS:I = 0x3


# instance fields
.field private mActionIntentOnStatusBar:Landroid/content/Intent;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColorOnStatusBar:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mChronometerBase:J

.field private mChronometerState:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mColorUtilInited:Z

.field private mContext:Landroid/content/Context;

.field private mN:Landroid/app/Notification;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityOnStatusBar:I

.field private mShowChronometerOnStatusBar:Z

.field private mShowOnStatusBar:Z

.field private mStatusBarIcon:I

.field private mStyle:Landroid/app/Notification$Style;

.field private mTextOnStatusBar:I

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2484
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2483
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2439
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 2441
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2442
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 2444
    iput-boolean v8, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    .line 2447
    iput v11, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    .line 2448
    iput-boolean v8, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    .line 2449
    iput-boolean v8, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    .line 2450
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    .line 2451
    iput v8, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 2452
    iput v11, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    .line 2454
    iput v8, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    .line 2455
    iput-object v9, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    .line 2461
    iput v10, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 2462
    iput v10, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 2491
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2493
    if-nez p2, :cond_2

    .line 2494
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2495
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_0

    .line 2496
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.showWhen"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2498
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->priority:I

    .line 2499
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->visibility:I

    .line 2490
    :cond_1
    :goto_0
    return-void

    .line 2501
    :cond_2
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2502
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_3

    .line 2503
    iget-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2506
    :cond_3
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.people"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2507
    iget-object v5, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "android.people"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2510
    :cond_4
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_5

    .line 2511
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2514
    :cond_5
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v5}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    .line 2515
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 2518
    :cond_6
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2519
    .local v4, "templateClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2521
    invoke-static {v4}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2522
    .local v2, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v2, :cond_7

    .line 2523
    const-string/jumbo v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown style class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2527
    :cond_7
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2528
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2529
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Style;

    .line 2530
    .local v1, "style":Landroid/app/Notification$Style;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 2532
    if-eqz v1, :cond_1

    .line 2533
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2535
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v1    # "style":Landroid/app/Notification$Style;
    :catch_0
    move-exception v3

    .line 2536
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notification"

    const-string/jumbo v6, "Could not create Style"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private adaptNotificationHeaderForBigContentView(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3794
    if-eqz p1, :cond_0

    .line 3795
    const-string/jumbo v0, "setExpanded"

    const v1, 0x10203b0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3793
    :cond_0
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 3431
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    .line 3438
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3440
    .local v0, "ex":Landroid/os/Bundle;
    const-string/jumbo v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3441
    .local v2, "title":Ljava/lang/CharSequence;
    const-string/jumbo v3, "android.text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3442
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3
.end method

.method private applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    const v5, 0x1020016

    .line 3450
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3452
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 3454
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3456
    .local v1, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3457
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;)V

    .line 3458
    invoke-direct {p0, p2, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    .line 3459
    .local v2, "showProgress":Z
    if-eqz p3, :cond_0

    .line 3460
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3461
    invoke-virtual {v0, v5, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3462
    if-eqz v2, :cond_2

    .line 3463
    const/4 v4, -0x2

    .line 3462
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    .line 3466
    :cond_0
    if-eqz p4, :cond_1

    .line 3467
    if-eqz v2, :cond_3

    const v3, 0x10203c8

    .line 3469
    .local v3, "textId":I
    :goto_1
    invoke-virtual {v0, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3470
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3473
    .end local v3    # "textId":I
    :cond_1
    if-nez v2, :cond_4

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v4

    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    .line 3475
    return-object v0

    .line 3464
    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    .line 3468
    :cond_3
    const v3, 0x102007e

    goto :goto_1

    .line 3473
    :cond_4
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "layoutId"    # I

    .prologue
    .line 3661
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3663
    .local v0, "ex":Landroid/os/Bundle;
    const-string/jumbo v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3664
    .local v2, "title":Ljava/lang/CharSequence;
    const-string/jumbo v3, "android.text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3665
    .local v1, "text":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3
.end method

.method private applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "layoutId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3670
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 3672
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 3674
    const/4 v7, 0x0

    .line 3676
    .local v7, "validRemoteInput":Z
    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3677
    .local v0, "N":I
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    .line 3678
    .local v4, "emphazisedMode":Z
    :goto_0
    const-string/jumbo v8, "setEmphasizedMode"

    const v9, 0x10203a5

    invoke-virtual {v2, v9, v8, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3679
    if-lez v0, :cond_3

    .line 3680
    const v8, 0x10203aa

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3681
    const v8, 0x10203a5

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3682
    const v8, 0x10203ba

    .line 3683
    const v9, 0x1050045

    .line 3682
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 3684
    const/4 v8, 0x3

    if-le v0, v8, :cond_0

    const/4 v0, 0x3

    .line 3685
    :cond_0
    const/4 v5, 0x0

    .end local v7    # "validRemoteInput":Z
    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 3686
    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 3687
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 3690
    .local v7, "validRemoteInput":Z
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    .line 3689
    :goto_2
    invoke-direct {p0, v1, v4, v8}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 3691
    .local v3, "button":Landroid/widget/RemoteViews;
    const v8, 0x10203a5

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3685
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3677
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "emphazisedMode":Z
    .end local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "emphazisedMode":Z
    goto :goto_0

    .line 3690
    .restart local v1    # "action":Landroid/app/Notification$Action;
    .restart local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 3694
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_3
    const v8, 0x10203aa

    const/16 v9, 0x8

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3697
    .end local v7    # "validRemoteInput":Z
    :cond_4
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "android.remoteInputHistory"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 3698
    .local v6, "replyText":[Ljava/lang/CharSequence;
    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 3699
    array-length v8, v6

    if-lez v8, :cond_5

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3715
    :cond_5
    :goto_3
    return-object v2

    .line 3700
    :cond_6
    const v8, 0x10203ab

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3701
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const v9, 0x10203af

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3703
    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3704
    const v8, 0x10203ae

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3705
    const/4 v8, 0x1

    aget-object v8, v6, v8

    const v9, 0x10203ae

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3707
    array-length v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_5

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3709
    const v8, 0x10203ad

    const/4 v9, 0x0

    .line 3708
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3710
    const/4 v8, 0x2

    aget-object v8, v6, v8

    const v9, 0x10203ad

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 3541
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 3542
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3541
    const v1, 0x10203b6

    const/4 v2, 0x0

    move-object v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3543
    const-string/jumbo v0, "setOriginalNotificationColor"

    .line 3544
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    .line 3543
    const v2, 0x10203b0

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3540
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x10203b1

    .line 3621
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3622
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 3620
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v6, 0x1020095

    const/4 v3, 0x0

    const v8, 0x10203b5

    .line 3548
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3549
    const v1, 0x10203b4

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3550
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.showChronometer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3551
    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3552
    const-string/jumbo v1, "setBase"

    .line 3553
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 3552
    invoke-virtual {p1, v8, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 3554
    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v8, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3555
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3556
    .local v0, "countsDown":Z
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 3547
    .end local v0    # "countsDown":Z
    :goto_0
    return-void

    .line 3558
    :cond_0
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3559
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_0

    .line 3564
    :cond_1
    const-string/jumbo v1, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    :goto_1
    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)J

    move-result-wide v2

    goto :goto_1
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x10203b3

    const/4 v3, 0x0

    .line 3569
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3570
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    .line 3571
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    .line 3570
    if-eqz v1, :cond_0

    .line 3572
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3574
    :cond_0
    if-nez v0, :cond_1

    .line 3575
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 3576
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3577
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3579
    :cond_1
    if-eqz v0, :cond_2

    .line 3581
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3582
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3583
    const v1, 0x10203b2

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3568
    :cond_2
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v3, 0x1020044

    .line 3517
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3518
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification;->-set6(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3520
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3521
    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3522
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3523
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 3524
    const v0, 0x1050043

    .line 3525
    .local v0, "endMargin":I
    const v1, 0x10203c7

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3526
    const v1, 0x102007e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3527
    const v1, 0x102000d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3516
    .end local v0    # "endMargin":I
    :cond_1
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3532
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;)V

    .line 3533
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;)V

    .line 3534
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    .line 3535
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    .line 3536
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    .line 3537
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    .line 3531
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x10203b7

    .line 3386
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3388
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 3389
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3390
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3385
    :cond_0
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v5, 0x0

    const v1, 0x1020006

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3626
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 3627
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/app/Notification;->-set10(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3629
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3631
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v6, v0, Landroid/app/Notification;->iconLevel:I

    move-object v0, p1

    move v4, v3

    .line 3630
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3632
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 3625
    return-void
.end method

.method private clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3909
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object v10, p1

    .line 3910
    check-cast v10, Landroid/text/Spanned;

    .line 3911
    .local v10, "ss":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v10, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 3912
    .local v9, "spans":[Ljava/lang/Object;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3913
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v8, v9, v11

    .line 3914
    .local v8, "span":Ljava/lang/Object;
    move-object v0, v8

    .line 3915
    .local v0, "resultSpan":Ljava/lang/Object;
    instance-of v1, v8, Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_0

    move-object v1, v8

    .line 3916
    check-cast v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v1}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    .line 3918
    :cond_0
    instance-of v1, v0, Landroid/text/style/TextAppearanceSpan;

    if-eqz v1, :cond_3

    move-object v7, v0

    .line 3919
    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 3920
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3921
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 3922
    .end local v0    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    .line 3923
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    .line 3924
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    .line 3926
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 3921
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 3934
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v0    # "resultSpan":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 3935
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 3934
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3913
    :cond_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    .line 3928
    :cond_3
    instance-of v1, v0, Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_2

    .line 3929
    instance-of v1, v0, Landroid/text/style/BackgroundColorSpan;

    .line 3928
    if-nez v1, :cond_2

    .line 3932
    move-object v0, v8

    goto :goto_1

    .line 3937
    .end local v0    # "resultSpan":Ljava/lang/Object;
    .end local v8    # "span":Ljava/lang/Object;
    :cond_4
    return-object v6

    .line 3939
    .end local v6    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v9    # "spans":[Ljava/lang/Object;
    .end local v10    # "ss":Landroid/text/Spanned;
    :cond_5
    return-object p1
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 24
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "background"    # I
    .param p3, "outResultColor"    # [Landroid/content/res/ColorStateList;

    .prologue
    .line 3954
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_7

    move-object/from16 v20, p1

    .line 3955
    check-cast v20, Landroid/text/Spanned;

    .line 3956
    .local v20, "ss":Landroid/text/Spanned;
    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    .line 3957
    .local v19, "spans":[Ljava/lang/Object;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3958
    .local v8, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v22, v3

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    aget-object v16, v19, v22

    .line 3959
    .local v16, "span":Ljava/lang/Object;
    move-object/from16 v2, v16

    .line 3960
    .local v2, "resultSpan":Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 3961
    .local v18, "spanStart":I
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 3962
    .local v17, "spanEnd":I
    sub-int v3, v17, v18

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v11, 0x1

    .line 3963
    .local v11, "fullLength":Z
    :goto_1
    move-object/from16 v0, v16

    instance-of v3, v0, Landroid/text/style/CharacterStyle;

    if-eqz v3, :cond_0

    move-object/from16 v3, v16

    .line 3964
    check-cast v3, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v2

    .line 3966
    :cond_0
    instance-of v3, v2, Landroid/text/style/TextAppearanceSpan;

    if-eqz v3, :cond_4

    move-object v15, v2

    .line 3967
    check-cast v15, Landroid/text/style/TextAppearanceSpan;

    .line 3968
    .local v15, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v21

    .line 3969
    .local v21, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v21, :cond_3

    .line 3970
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v9

    .line 3971
    .local v9, "colors":[I
    array-length v3, v9

    new-array v13, v3, [I

    .line 3972
    .local v13, "newColors":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v3, v13

    if-ge v12, v3, :cond_2

    .line 3974
    aget v3, v9, v12

    .line 3973
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    move-result v3

    aput v3, v13, v12

    .line 3972
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3962
    .end local v9    # "colors":[I
    .end local v11    # "fullLength":Z
    .end local v12    # "i":I
    .end local v13    # "newColors":[I
    .end local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "fullLength":Z
    goto :goto_1

    .line 3976
    .restart local v9    # "colors":[I
    .restart local v12    # "i":I
    .restart local v13    # "newColors":[I
    .restart local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v21    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v6, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 3978
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 3979
    .end local v2    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    .line 3980
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v4

    .line 3981
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v5

    .line 3983
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 3978
    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 3984
    .restart local v2    # "resultSpan":Ljava/lang/Object;
    if-eqz v11, :cond_3

    .line 3985
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 3986
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 3985
    invoke-direct {v4, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    aput-object v4, p3, v3

    .line 4002
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .end local v9    # "colors":[I
    .end local v12    # "i":I
    .end local v13    # "newColors":[I
    .end local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3958
    add-int/lit8 v3, v22, 0x1

    move/from16 v22, v3

    goto/16 :goto_0

    .line 3989
    :cond_4
    instance-of v3, v2, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_5

    move-object v14, v2

    .line 3990
    check-cast v14, Landroid/text/style/ForegroundColorSpan;

    .line 3991
    .local v14, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v14}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    .line 3992
    .local v10, "foregroundColor":I
    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    move-result v10

    .line 3994
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .end local v2    # "resultSpan":Ljava/lang/Object;
    invoke-direct {v2, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3995
    .restart local v2    # "resultSpan":Ljava/lang/Object;
    if-eqz v11, :cond_3

    .line 3996
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p3, v4

    goto :goto_3

    .line 3999
    .end local v10    # "foregroundColor":I
    .end local v14    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_5
    move-object/from16 v2, v16

    goto :goto_3

    .line 4004
    .end local v2    # "resultSpan":Ljava/lang/Object;
    .end local v11    # "fullLength":Z
    .end local v16    # "span":Ljava/lang/Object;
    .end local v17    # "spanEnd":I
    .end local v18    # "spanStart":I
    :cond_6
    return-object v8

    .line 4006
    .end local v8    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v19    # "spans":[Ljava/lang/Object;
    .end local v20    # "ss":Landroid/text/Spanned;
    :cond_7
    return-object p1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;
    .locals 12
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphazisedMode"    # Z
    .param p3, "oddAction"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v11, 0x0

    const v10, 0x10203a6

    .line 3860
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    const/4 v9, 0x1

    .line 3861
    .local v9, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3862
    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v1

    .line 3861
    :goto_1
    invoke-direct {v0, v5, v1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3865
    .local v0, "button":Landroid/widget/RemoteViews;
    if-nez v9, :cond_0

    .line 3866
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3868
    :cond_0
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3869
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3870
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 3872
    :cond_1
    if-eqz p2, :cond_9

    .line 3874
    iget-object v5, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_6

    const v1, 0x1060054

    :goto_2
    invoke-virtual {v5, v1}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 3877
    .local v4, "bgColor":I
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3876
    const v1, 0x10203a9

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3878
    iget-object v8, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 3879
    .local v8, "title":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 3880
    .local v7, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3881
    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3886
    .end local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    :goto_3
    invoke-virtual {v0, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3887
    if-eqz v7, :cond_8

    aget-object v1, v7, v11

    if-eqz v1, :cond_8

    .line 3890
    aget-object v1, v7, v11

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(ILandroid/content/res/ColorStateList;)V

    .line 3900
    .end local v4    # "bgColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_4
    return-object v0

    .line 3860
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v9    # "tombstone":Z
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "tombstone":Z
    goto :goto_0

    .line 3863
    :cond_4
    if-eqz v9, :cond_5

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v1

    goto :goto_1

    .line 3864
    :cond_5
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v1

    goto :goto_1

    .line 3875
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    :cond_6
    const v1, 0x1060055

    goto :goto_2

    .line 3883
    .restart local v4    # "bgColor":I
    .restart local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_7
    new-array v7, v2, [Landroid/content/res/ColorStateList;

    .line 3884
    .local v7, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0, v8, v4, v7}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_3

    .line 3891
    .end local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    :cond_8
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_2

    .line 3892
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    .line 3895
    .end local v4    # "bgColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_9
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3896
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_2

    .line 3897
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4
.end method

.method private getActionLayoutResource()I
    .locals 1

    .prologue
    .line 4284
    const v0, 0x1090086

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 4292
    const v0, 0x1090089

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 3209
    iget-object v1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3210
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3211
    return-object v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .prologue
    .line 4260
    const v0, 0x109008d

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .prologue
    .line 4264
    const v0, 0x109008e

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .prologue
    .line 4268
    const v0, 0x1090090

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .prologue
    .line 4272
    const v0, 0x1090091

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 2

    .prologue
    .line 2545
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    if-nez v0, :cond_0

    .line 2546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    .line 2547
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2548
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 2551
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    .prologue
    .line 4288
    const v0, 0x1090087

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .prologue
    .line 4276
    const v0, 0x1090092

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    .prologue
    .line 4280
    const v0, 0x1090094

    return v0
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4128
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/Class;

    .line 4129
    const-class v3, Landroid/app/Notification$BigTextStyle;

    aput-object v3, v0, v2

    const-class v3, Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$InboxStyle;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MediaStyle;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 4130
    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    const/4 v4, 0x5

    aput-object v3, v0, v4

    .line 4131
    const-class v3, Landroid/app/Notification$MessagingStyle;

    const/4 v4, 0x6

    aput-object v3, v0, v4

    .line 4132
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 4133
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4134
    return-object v1

    .line 4132
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4137
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3372
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3373
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 3374
    return-object v4

    .line 3376
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3377
    const v5, 0x105007b

    .line 3376
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3378
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3379
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3380
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3381
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3382
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3356
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_1

    .line 3363
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3367
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3368
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 3367
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "hasProgress"    # Z
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ex"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x102000d

    const/4 v5, 0x0

    .line 3494
    const-string/jumbo v4, "android.progressMax"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3495
    .local v2, "max":I
    const-string/jumbo v4, "android.progress"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3496
    .local v3, "progress":I
    const-string/jumbo v4, "android.progressIndeterminate"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3497
    .local v1, "ind":Z
    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    .line 3498
    :cond_0
    invoke-virtual {p2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3499
    invoke-virtual {p2, v6, v2, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 3502
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3503
    const v5, 0x1060053

    .line 3502
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 3501
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 3504
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->color:I

    if-eqz v4, :cond_1

    .line 3505
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3506
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 3507
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 3509
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 3511
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3512
    return v5
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v4, 0x0

    .line 3719
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 3721
    :cond_0
    return v4

    .line 3724
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    .line 3725
    .local v2, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v2, :cond_2

    .line 3726
    return v4

    .line 3729
    :cond_2
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v1, v2, v3

    .line 3730
    .local v1, "r":Landroid/app/RemoteInput;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 3731
    .local v0, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_4

    array-length v6, v0

    if-eqz v6, :cond_4

    .line 3732
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 3729
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3735
    .end local v0    # "choices":[Ljava/lang/CharSequence;
    .end local v1    # "r":Landroid/app/RemoteInput;
    :cond_5
    return v4
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3788
    if-eqz p1, :cond_0

    .line 3789
    const v0, 0x10203c8

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3787
    :cond_0
    return-void
.end method

.method private isLegacy()Z
    .locals 1

    .prologue
    .line 4014
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 9
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 4218
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4222
    .local v4, "templateClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4223
    invoke-static {v4}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_0

    .line 4224
    return-object p0

    .line 4228
    :cond_0
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_6

    .line 4229
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4230
    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 4229
    if-ne v5, v6, :cond_5

    const/4 v2, 0x1

    .line 4231
    .local v2, "stripContentView":Z
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_8

    .line 4232
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4233
    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 4232
    if-ne v5, v6, :cond_7

    const/4 v1, 0x1

    .line 4234
    .local v1, "stripBigContentView":Z
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_a

    .line 4235
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4236
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    .line 4235
    if-ne v5, v6, :cond_9

    const/4 v3, 0x1

    .line 4239
    .local v3, "stripHeadsUpContentView":Z
    :goto_2
    if-nez v2, :cond_1

    if-eqz v1, :cond_b

    .line 4243
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    .line 4244
    .local v0, "clone":Landroid/app/Notification;
    if-eqz v2, :cond_2

    .line 4245
    iput-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4246
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4248
    :cond_2
    if-eqz v1, :cond_3

    .line 4249
    iput-object v7, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4250
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4252
    :cond_3
    if-eqz v3, :cond_4

    .line 4253
    iput-object v7, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 4254
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4256
    :cond_4
    return-object v0

    .line 4229
    .end local v0    # "clone":Landroid/app/Notification;
    .end local v1    # "stripBigContentView":Z
    .end local v2    # "stripContentView":Z
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "stripContentView":Z
    goto :goto_0

    .line 4228
    .end local v2    # "stripContentView":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "stripContentView":Z
    goto :goto_0

    .line 4232
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    .line 4231
    .end local v1    # "stripBigContentView":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    .line 4235
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    .line 4234
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    .line 4239
    :cond_b
    if-nez v3, :cond_1

    .line 4240
    return-object p0
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 4045
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4046
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 4045
    if-eqz v0, :cond_0

    .line 4048
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 4049
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4048
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4044
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 4018
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4019
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4021
    :cond_0
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 4029
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v7

    .line 4030
    .local v7, "colorable":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 4031
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v4

    .line 4032
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4031
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4035
    :cond_0
    const-string/jumbo v0, "setOriginalIconColor"

    .line 4036
    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v3

    .line 4035
    :cond_1
    const v1, 0x10203b0

    invoke-virtual {p2, v1, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4028
    return-void

    .line 4029
    .end local v7    # "colorable":Z
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 4109
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4110
    const-string/jumbo v4, "android.appInfo"

    .line 4109
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4112
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 4115
    const/4 v3, 0x4

    .line 4114
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4124
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v3

    .line 4116
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 4117
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApplicationInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    move-object v1, p0

    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0

    .line 4121
    .end local v1    # "builderContext":Landroid/content/Context;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v1, p0

    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private resetContentMargins(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v1, 0x0

    .line 3426
    const v0, 0x10203c7

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3427
    const v0, 0x102007e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 3425
    return-void
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v6, 0x10203b7

    const v5, 0x10203b3

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 3413
    const-string/jumbo v0, "setExpanded"

    const v1, 0x10203b0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3414
    const v0, 0x10203b1

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3415
    const v0, 0x10203b5

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3416
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3417
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3418
    const v0, 0x10203b2

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3419
    const v0, 0x10203b4

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3420
    const v0, 0x1020095

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3421
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3422
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3410
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x10203c8

    const v4, 0x102007e

    const v3, 0x1020016

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 3395
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3396
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetContentMargins(Landroid/widget/RemoteViews;)V

    .line 3397
    const v0, 0x1020044

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3398
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3399
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3400
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3401
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3402
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3403
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3404
    const v0, 0x102000d

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3394
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x10203ae

    const v3, 0x10203ad

    const v0, 0x10203a5

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 3646
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3647
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3649
    const v0, 0x10203ab

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3650
    const v0, 0x10203af

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3652
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3653
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3654
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3655
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3657
    const v0, 0x10203ba

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 3643
    return-void
.end method

.method private sanitizeColor()V
    .locals 3

    .prologue
    .line 4054
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 4055
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 4053
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    .prologue
    .line 3640
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3235
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3236
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 3255
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3256
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3169
    if-eqz p1, :cond_0

    .line 3170
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3172
    :cond_0
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3112
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3113
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 4154
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 4155
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4158
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set0(Landroid/app/Notification;J)J

    .line 4161
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4163
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 4165
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 4166
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 4169
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 4170
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4192
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 4193
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 4196
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0

    .line 4171
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_5

    .line 4172
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4173
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    .line 4174
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 4173
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4176
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_6

    .line 4177
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4178
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6

    .line 4179
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    .line 4180
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 4179
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4183
    :cond_6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 4184
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 4185
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 4186
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    .line 4187
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 4186
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 4205
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 4206
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 4074
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4075
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 4076
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4078
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4079
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.people"

    .line 4080
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4079
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4082
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 4084
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4088
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set12(Landroid/app/Notification;I)I

    .line 4089
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->-set9(Landroid/app/Notification;Z)Z

    .line 4090
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->-set8(Landroid/app/Notification;Z)Z

    .line 4091
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set3(Landroid/app/Notification;J)J

    .line 4092
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set4(Landroid/app/Notification;I)I

    .line 4093
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set13(Landroid/app/Notification;I)I

    .line 4094
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;I)I

    .line 4095
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->-set7(Landroid/app/Notification;I)I

    .line 4096
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Landroid/content/Intent;)Landroid/content/Intent;

    .line 4099
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0

    .line 4083
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 3760
    const/4 v0, 0x0

    .line 3761
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 3762
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3764
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_3

    .line 3765
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3766
    .local v0, "result":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    .line 3770
    .end local v0    # "result":Landroid/widget/RemoteViews;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->adaptNotificationHeaderForBigContentView(Landroid/widget/RemoteViews;)V

    .line 3771
    return-object v0

    .line 3763
    .local v0, "result":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 3767
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3768
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .local v0, "result":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 3745
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3747
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3748
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3749
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_2

    .line 3750
    return-object v0

    .line 3746
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 3753
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3803
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 3804
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3806
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3807
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3808
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3

    .line 3809
    return-object v0

    .line 3805
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 3811
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 3812
    return-object v2

    .line 3815
    :cond_3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .prologue
    .line 3326
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 3327
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4145
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3591
    const/4 v0, 0x0

    .line 3592
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3593
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3598
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3599
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.substName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3601
    .local v3, "subName":Ljava/lang/String;
    const-string/jumbo v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 3600
    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 3602
    move-object v0, v3

    .line 3610
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3611
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3613
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3615
    const/4 v4, 0x0

    return-object v4

    .line 3604
    .restart local v0    # "name":Ljava/lang/CharSequence;
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "subName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3605
    const-string/jumbo v6, " attempting to substitute app name \'"

    .line 3604
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3606
    const-string/jumbo v6, "\' without holding perm "

    .line 3604
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3607
    const-string/jumbo v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 3604
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3618
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public makeNotificationHeader()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 3780
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3781
    const v2, 0x109008c

    .line 3780
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3782
    .local v0, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3783
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 3784
    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 3824
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v7, :cond_0

    .line 3825
    iget-object v7, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v7, v8}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3826
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v7

    return-object v7

    .line 3828
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3829
    .local v5, "savedBundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3830
    .local v6, "style":Landroid/app/Notification$Style;
    iput-object v8, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3831
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v7}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 3832
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v7, v8}, Landroid/app/Notification;->-set6(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3833
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3834
    .local v2, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v8, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3835
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3836
    .local v3, "publicExtras":Landroid/os/Bundle;
    const-string/jumbo v7, "android.showWhen"

    .line 3837
    const-string/jumbo v8, "android.showWhen"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3836
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3838
    const-string/jumbo v7, "android.showChronometer"

    .line 3839
    const-string/jumbo v8, "android.showChronometer"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3838
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3840
    const-string/jumbo v7, "android.chronometerCountDown"

    .line 3841
    const-string/jumbo v8, "android.chronometerCountDown"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 3840
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3842
    const-string/jumbo v7, "android.title"

    .line 3845
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/high16 v10, 0x50b0000

    invoke-virtual {v8, v10, v12, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3842
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3847
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v3, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3848
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 3849
    .local v4, "publicView":Landroid/widget/RemoteViews;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3850
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v7, v1}, Landroid/app/Notification;->-set6(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3851
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3852
    iput-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3853
    return-object v4
.end method

.method resolveContrastColor()I
    .locals 3

    .prologue
    .line 4060
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4061
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1

    .line 4063
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;I)I

    move-result v0

    .line 4065
    .local v0, "contrasted":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 4066
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v0
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .prologue
    .line 3267
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3269
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3271
    :cond_0
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 3040
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3041
    return-object p0
.end method

.method public setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 4358
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    .line 4359
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 3085
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3086
    return-object p0
.end method

.method public setChronometerBase(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "base"    # J

    .prologue
    .line 4316
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    .line 4317
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    .prologue
    .line 2608
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2609
    return-object p0
.end method

.method public setChronometerState(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 4324
    packed-switch p1, :pswitch_data_0

    .line 4332
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 4335
    :goto_0
    return-object p0

    .line 4326
    :pswitch_0
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    .line 4329
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    .line 4324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 3350
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 3351
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 3352
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2777
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 2754
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2755
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2825
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2826
    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "hasMinHeight"    # Z

    .prologue
    .line 3484
    const/4 v0, 0x0

    .line 3485
    .local v0, "minHeight":I
    if-eqz p2, :cond_0

    .line 3487
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3488
    const v2, 0x105004b

    .line 3487
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3490
    :cond_0
    const-string/jumbo v1, "setMinimumHeight"

    const v2, 0x10203b9

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3483
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2676
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2677
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2668
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2669
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2798
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2799
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2787
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2788
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2809
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2810
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I

    .prologue
    .line 3065
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 3066
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2835
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 2836
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3188
    if-eqz p1, :cond_0

    .line 3189
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 3191
    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 3334
    if-eqz p2, :cond_0

    .line 3335
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3339
    :goto_0
    return-object p0

    .line 3337
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2860
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 2861
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 2862
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 3128
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set5(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3129
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 3140
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3141
    return-object p0
.end method

.method public setIconOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 4342
    iput p1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    .line 4343
    return-object p0
.end method

.method public setIntentOnStatusBar(Landroid/content/Intent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4374
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    .line 4375
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 2894
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2905
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set6(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 2906
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2907
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 2993
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 2994
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 2995
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2996
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2998
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .prologue
    .line 3051
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3052
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 2739
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 2740
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 3018
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3019
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 3029
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3030
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I

    .prologue
    .line 3075
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 3076
    return-object p0
.end method

.method public setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 4366
    iput p1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    .line 4367
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 2764
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2765
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2766
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2767
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x0

    .line 3312
    if-eqz p1, :cond_0

    .line 3313
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3314
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3318
    :goto_0
    return-object p0

    .line 3316
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    goto :goto_0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 6
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 2718
    if-nez p1, :cond_0

    .line 2719
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 2728
    :goto_0
    return-object p0

    .line 2721
    :cond_0
    array-length v3, p1

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2722
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 2723
    .local v2, "safe":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2724
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2723
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2726
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.remoteInputHistory"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setShowOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "showOnStatusBar"    # Z

    .prologue
    .line 4300
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    .line 4301
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2575
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2576
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 2627
    if-eqz p1, :cond_0

    .line 2628
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 2627
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    .line 2629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 2644
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 2645
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2657
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 2658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2659
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2661
    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 3157
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-set11(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3158
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 2923
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2924
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2925
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2941
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2942
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 2943
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 2957
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2958
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2959
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 3280
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 3281
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 3282
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 3283
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 3284
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {p1}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    :cond_0
    :goto_0
    return-object p0

    .line 3286
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2699
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2700
    return-object p0
.end method

.method public setTextOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "textId"    # I

    .prologue
    .line 4350
    iput p1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    .line 4351
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2871
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2872
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2881
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2883
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 2595
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2596
    return-object p0
.end method

.method public setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "useChronometer"    # Z

    .prologue
    .line 4308
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    .line 4309
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 2975
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 2976
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 3301
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 3302
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 2564
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 2565
    return-object p0
.end method
