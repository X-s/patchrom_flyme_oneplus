.class final Landroid/view/ViewGroup$HoverTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoverTarget"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public child:Landroid/view/View;

.field public next:Landroid/view/ViewGroup$HoverTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7518
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7529
    return-void
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 7533
    sget-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7534
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    if-nez v1, :cond_0

    .line 7535
    new-instance v0, Landroid/view/ViewGroup$HoverTarget;

    invoke-direct {v0}, Landroid/view/ViewGroup$HoverTarget;-><init>()V

    .line 7542
    .local v0, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7543
    iput-object p0, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 7544
    return-object v0

    .line 7537
    .end local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 7538
    .restart local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    sput-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 7539
    sget v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    .line 7540
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_0

    .line 7542
    .end local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 7548
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7549
    :try_start_0
    sget v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 7550
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7551
    sput-object p0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 7552
    sget v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    .line 7556
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 7557
    monitor-exit v1

    .line 7558
    return-void

    .line 7554
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_0

    .line 7557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
