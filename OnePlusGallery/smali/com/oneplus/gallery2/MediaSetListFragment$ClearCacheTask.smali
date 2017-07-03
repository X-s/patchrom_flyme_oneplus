.class Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;
.super Landroid/os/AsyncTask;
.source "MediaSetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;
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
    .line 2152
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/MediaSetListFragment$1;

    .prologue
    .line 2152
    invoke-direct {p0}, Lcom/oneplus/gallery2/MediaSetListFragment$ClearCacheTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 2157
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 2158
    .local v0, "mediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->clearUselessImageCache(Lcom/oneplus/gallery2/media/MediaSetList;)V
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$5600(Lcom/oneplus/gallery2/media/MediaSetList;)V

    .line 2160
    const/4 v1, 0x0

    return-object v1
.end method
