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
    .line 7072
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7083
    return-void
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 7087
    sget-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7088
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    if-nez v1, :cond_0

    .line 7089
    new-instance v0, Landroid/view/ViewGroup$HoverTarget;

    invoke-direct {v0}, Landroid/view/ViewGroup$HoverTarget;-><init>()V

    .line 7096
    .local v0, "target":Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7097
    iput-object p0, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 7098
    return-object v0

    .line 7091
    .end local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 7092
    .restart local v0    # "target":Landroid/view/ViewGroup$HoverTarget;
    iget-object v1, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    sput-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 7093
    sget v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    .line 7094
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_0

    .line 7096
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
    .line 7102
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7103
    :try_start_0
    sget v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 7104
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7105
    sput-object p0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 7106
    sget v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    .line 7110
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 7111
    monitor-exit v1

    .line 7112
    return-void

    .line 7108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_0

    .line 7111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
