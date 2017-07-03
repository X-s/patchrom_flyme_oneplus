.class Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;
.super Landroid/os/AsyncTask;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaSetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2635
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery/MediaSetListFragment$1;

    .prologue
    .line 2635
    invoke-direct {p0}, Lcom/oneplus/gallery/MediaSetListFragment$ClearCacheTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 2640
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/oneplus/gallery/media/MediaSetList;

    .line 2641
    .local v0, "mediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->clearUselessImageCache(Lcom/oneplus/gallery/media/MediaSetList;)V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$6700(Lcom/oneplus/gallery/media/MediaSetList;)V

    .line 2643
    const/4 v1, 0x0

    return-object v1
.end method
