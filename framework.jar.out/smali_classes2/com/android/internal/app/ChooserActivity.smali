.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$RowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$RowScale;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    }
.end annotation


# static fields
.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final THEMES:[I

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mChooserHandler:Landroid/os/Handler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/ChooserActivity;->THEMES:[I

    return-void

    :array_0
    .array-data 4
        0x1030223
        0x4050000
        0x4050001
        0x4050002
        0x4050003
        0x4050004
        0x4050005
        0x4050006
        0x4050007
        0x4050008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    .line 1421
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    .line 470
    :cond_0
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    .line 473
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 475
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0

    .line 477
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getThemeResource()I
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getDarkModeTheme()I

    move-result v1

    .line 155
    .local v1, "value":I
    sget-object v2, Lcom/android/internal/app/ChooserActivity;->THEMES:[I

    array-length v0, v2

    .line 156
    .local v0, "length":I
    if-lt v1, v0, :cond_0

    .line 157
    sget-object v2, Lcom/android/internal/app/ChooserActivity;->THEMES:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 159
    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/android/internal/app/ChooserActivity;->THEMES:[I

    aget v2, v2, v1

    goto :goto_0
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    :cond_1
    return-void
.end method


# virtual methods
.method checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .prologue
    .line 527
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v3

    .line 528
    .local v3, "targetIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 529
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 530
    .local v2, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    const/4 v4, 0x1

    .line 534
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :goto_1
    return v4

    .line 528
    .restart local v2    # "targetIntent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 571
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 574
    .local v0, "adapter":Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity;->queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    .line 575
    return-object v0
.end method

.method filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const/4 v7, 0x0

    .line 538
    if-nez p2, :cond_1

    .line 565
    :cond_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 543
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 544
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/chooser/ChooserTarget;

    .line 545
    .local v5, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v5}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 546
    .local v6, "targetName":Landroid/content/ComponentName;
    if-eqz p1, :cond_3

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 543
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 553
    :cond_3
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 554
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 561
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "remove":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 562
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "remove":Z
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_5
    move v4, v7

    .line 554
    goto :goto_2

    .line 555
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ChooserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Target "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " returned by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " component not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v4, 0x1

    .restart local v4    # "remove":Z
    goto :goto_2
.end method

.method getLayoutResource()I
    .locals 1

    .prologue
    .line 298
    const v0, 0x1090042

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 251
    move-object v1, p2

    .line 252
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 254
    .local v0, "replExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 256
    .restart local v1    # "result":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    .end local v0    # "replExtras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 264
    :cond_2
    return-object v1
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 8
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 271
    .local v7, "target":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 274
    .local v3, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v7    # "target":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 275
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v7    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 276
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 165
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .line 166
    .local v16, "targetParcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 167
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target is not an intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 169
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    :goto_0
    return-void

    :cond_0
    move-object/from16 v3, v16

    .line 172
    check-cast v3, Landroid/content/Intent;

    .line 173
    .local v3, "target":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 176
    :cond_1
    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v17

    .line 178
    .local v17, "targetsParcelable":[Landroid/os/Parcelable;
    if-eqz v17, :cond_8

    .line 179
    if-nez v3, :cond_2

    const/4 v14, 0x1

    .line 180
    .local v14, "offset":Z
    :goto_1
    if-eqz v14, :cond_3

    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_2
    new-array v10, v1, [Landroid/content/Intent;

    .line 182
    .local v10, "additionalTargets":[Landroid/content/Intent;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v11, v1, :cond_7

    .line 183
    aget-object v1, v17, v11

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_4

    .line 184
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " is not an Intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v17, v11

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 187
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 179
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v11    # "i":I
    .end local v14    # "offset":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 180
    .restart local v14    # "offset":Z
    :cond_3
    move-object/from16 v0, v17

    array-length v1, v0

    goto :goto_2

    .line 190
    .restart local v10    # "additionalTargets":[Landroid/content/Intent;
    .restart local v11    # "i":I
    :cond_4
    aget-object v9, v17, v11

    check-cast v9, Landroid/content/Intent;

    .line 191
    .local v9, "additionalTarget":Landroid/content/Intent;
    if-nez v11, :cond_5

    if-nez v3, :cond_5

    .line 192
    move-object v3, v9

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 182
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 195
    :cond_5
    if-eqz v14, :cond_6

    add-int/lit8 v1, v11, -0x1

    :goto_5
    aput-object v9, v10, v1

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_4

    :cond_6
    move v1, v11

    .line 195
    goto :goto_5

    .line 199
    .end local v9    # "additionalTarget":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    .line 202
    .end local v10    # "additionalTargets":[Landroid/content/Intent;
    .end local v11    # "i":I
    .end local v14    # "offset":Z
    :cond_8
    const-string v1, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    .line 203
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 204
    .local v4, "title":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 205
    .local v5, "defaultTitleRes":I
    if-nez v4, :cond_9

    .line 206
    const v5, 0x1040391

    .line 208
    :cond_9
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v15

    .line 209
    .local v15, "pa":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 210
    .local v6, "initialIntents":[Landroid/content/Intent;
    if-eqz v15, :cond_b

    .line 211
    array-length v1, v15

    new-array v6, v1, [Landroid/content/Intent;

    .line 212
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    array-length v1, v15

    if-ge v11, v1, :cond_b

    .line 213
    aget-object v1, v15, v11

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_a

    .line 214
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initial intent #"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " not an Intent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v15, v11

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 216
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 219
    :cond_a
    aget-object v12, v15, v11

    check-cast v12, Landroid/content/Intent;

    .line 220
    .local v12, "in":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    .line 221
    aput-object v12, v6, v11

    .line 212
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 225
    .end local v11    # "i":I
    .end local v12    # "in":Landroid/content/Intent;
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    .line 227
    const-string v1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 229
    const-string v1, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    .line 231
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    .line 232
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 235
    const/16 v1, 0xd6

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    .line 246
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 3
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    .line 286
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, v1

    .line 287
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    check-cast p2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .end local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 288
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 289
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 290
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    if-eqz v0, :cond_0

    .line 292
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 294
    :cond_0
    return-void

    .line 286
    .end local v0    # "listView":Landroid/widget/ListView;
    .restart local p2    # "adapter":Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onRefinementCanceled()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 524
    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "selectedTarget"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "matchingIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 506
    :cond_0
    if-nez p1, :cond_2

    .line 507
    const-string v0, "ChooserActivity"

    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 516
    :goto_1
    return-void

    .line 508
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_3
    invoke-interface {p1, p2, v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-super {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_1
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 12
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_3

    .line 336
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v10

    .line 338
    .local v10, "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    const-string v1, "android.intent.extra.INTENT"

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 341
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [Landroid/content/Intent;

    .line 342
    .local v7, "alts":[Landroid/content/Intent;
    const/4 v9, 0x1

    .local v9, "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "N":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 343
    add-int/lit8 v1, v9, -0x1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v7, v1

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 345
    :cond_0
    const-string v0, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    .end local v6    # "N":I
    .end local v7    # "alts":[Landroid/content/Intent;
    .end local v9    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    .line 350
    :cond_2
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    .line 351
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 361
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :goto_1
    return v0

    .line 356
    .restart local v3    # "fillIn":Landroid/content/Intent;
    .restart local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v8

    .line 357
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ChooserActivity"

    const-string v1, "Refinement IntentSender failed to send"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v10    # "sourceIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    goto :goto_1
.end method

.method queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 22
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .prologue
    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 396
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 397
    .local v16, "targetsToQuery":I
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v4

    .local v4, "N":I
    :goto_0
    if-ge v9, v4, :cond_5

    .line 398
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v7

    .line 399
    .local v7, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 405
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 406
    .local v10, "md":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.service.chooser.chooser_target_service"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 408
    .local v15, "serviceName":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_4

    .line 409
    new-instance v13, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v13, "serviceComponent":Landroid/content/ComponentName;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.service.chooser.ChooserTargetService"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 419
    .local v14, "serviceIntent":Landroid/content/Intent;
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 420
    .local v11, "perm":Ljava/lang/String;
    const-string v17, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 421
    const-string v17, "ChooserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ChooserTargetService "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not require"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - this service will not be queried for ChooserTargets."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " add android:permission=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to the <service> tag for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in the manifest."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 430
    .end local v11    # "perm":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 431
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "ChooserActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not look up service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 406
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 435
    .restart local v11    # "perm":Ljava/lang/String;
    .restart local v13    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v14    # "serviceIntent":Landroid/content/Intent;
    .restart local v15    # "serviceName":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 437
    .local v6, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    const/16 v17, 0x5

    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v6, v1, v2}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v16, v16, 0x1

    .line 447
    .end local v6    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    .end local v11    # "perm":Ljava/lang/String;
    .end local v13    # "serviceComponent":Landroid/content/ComponentName;
    .end local v14    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 454
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v10    # "md":Landroid/os/Bundle;
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const-wide/16 v20, 0x1388

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    :goto_3
    return-void

    .line 460
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    goto :goto_3
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 4
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 308
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 314
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    const-string v2, "com.android.documentsui"

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const/4 v2, 0x1

    .line 321
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method startSelected(IZZ)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 368
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v2, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "cat":I
    move v1, p1

    .line 373
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 388
    :goto_0
    if-eqz v0, :cond_0

    .line 389
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 392
    .end local v0    # "cat":I
    .end local v1    # "value":I
    :cond_0
    return-void

    .line 375
    .restart local v0    # "cat":I
    .restart local v1    # "value":I
    :pswitch_0
    const/16 v0, 0xd7

    .line 376
    goto :goto_0

    .line 378
    :pswitch_1
    const/16 v0, 0xd8

    .line 379
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 380
    goto :goto_0

    .line 382
    :pswitch_2
    const/16 v0, 0xd9

    .line 383
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method unbindRemainingServices()V
    .locals 5

    .prologue
    .line 486
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 487
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .line 489
    .local v1, "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 490
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "conn":Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 493
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    return-void
.end method
