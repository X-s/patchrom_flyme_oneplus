.class public Lcom/oppo/tribune/ui/pullview/ListScrollHandler;
.super Ljava/lang/Object;
.source "ListScrollHandler.java"


# instance fields
.field private mScrollListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oppo/tribune/ui/pullview/ListScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->mScrollListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/ui/pullview/ListScrollHandler;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->mScrollListeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addScrollListener(Lcom/oppo/tribune/ui/pullview/ListScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->mScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    return-void
.end method

.method public getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler$1;-><init>(Lcom/oppo/tribune/ui/pullview/ListScrollHandler;)V

    return-object v0
.end method

.method public removeScrollListener(Lcom/oppo/tribune/ui/pullview/ListScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->mScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method
