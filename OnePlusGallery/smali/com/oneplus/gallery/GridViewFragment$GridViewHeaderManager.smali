.class public Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
.super Ljava/lang/Object;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewHeaderManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    }
.end annotation


# instance fields
.field private ascSortedDateGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheHeaderPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheHeaderTimeIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groupedMedia:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;>;"
        }
    .end annotation
.end field

.field private headerDateItemMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 1

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    .line 1248
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    .line 1249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->groupedMedia:Ljava/util/HashMap;

    .line 1250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderTimeIndexMap:Ljava/util/HashMap;

    .line 1251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    .line 1254
    return-void
.end method

.method static synthetic access$5800(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # I

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;I)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # I

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderInfo(I)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findPreviousHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # I

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->isHeaderPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Lcom/oneplus/gallery/media/Media;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findHeaderIndex(Lcom/oneplus/gallery/media/Media;)I

    move-result v0

    return v0
.end method

.method private findHeaderIndex(I)I
    .locals 7
    .param p1, "uiposition"    # I

    .prologue
    const/4 v3, -0x1

    .line 1557
    move v2, p1

    .line 1558
    .local v2, "position":I
    if-gez v2, :cond_1

    .line 1560
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/GridViewFragment;->access$7100(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findHeaderIndex() - uiposition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :cond_0
    :goto_0
    return v3

    .line 1564
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1566
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/GridViewFragment;->access$7200(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "findHeaderIndex(uiposition) - Error, headerDateItemMap is empty, return -1"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1570
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1572
    .local v1, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget v4, v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    if-gt v4, p1, :cond_3

    .line 1573
    iget v3, v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    goto :goto_0
.end method

.method private findHeaderIndex(Lcom/oneplus/gallery/media/Media;)I
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v1, -0x1

    .line 1582
    if-nez p1, :cond_1

    .line 1584
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/GridViewFragment;->access$7300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "findHeaderIndex() - Media is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_0
    :goto_0
    return v1

    .line 1588
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1590
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/GridViewFragment;->access$7400(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "findHeaderIndex(media) - headerDateItemMap is empty"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v2

    .line 1594
    .local v2, "time":J
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1595
    .local v0, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v0, :cond_0

    .line 1596
    iget v1, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    goto :goto_0
.end method

.method private findHeaderInfo(I)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 5
    .param p1, "uiposition"    # I

    .prologue
    const/4 v2, 0x0

    .line 1494
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1509
    :goto_0
    return-object v1

    .line 1500
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1503
    .local v1, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget v3, v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    if-gt v3, p1, :cond_1

    goto :goto_0

    .line 1508
    .end local v1    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewFragment;->access$6800(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "findHeaderIndex() - Error not matching Header Index return null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1509
    goto :goto_0
.end method

.method private findHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 1
    .param p1, "datemillies"    # Ljava/lang/Long;

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    return-object v0
.end method

.method private findNextHeaderItem(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 4
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    .line 1542
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1544
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$7000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "findHeaderIndex() - Error, headerDateItemMap is empty, return null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_0
    :goto_0
    return-object v1

    .line 1548
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1549
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;>;"
    if-eqz v0, :cond_0

    .line 1550
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    goto :goto_0
.end method

.method private findPreviousHeaderInfo(Ljava/lang/Long;)Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 4
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    .line 1520
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1522
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$6900(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "findHeaderIndex() - Error, headerDateItemMap is empty, return null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :cond_0
    :goto_0
    return-object v1

    .line 1526
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1527
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;>;"
    if-eqz v0, :cond_0

    .line 1528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    goto :goto_0
.end method

.method private isHeaderPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1617
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1619
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$7600(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isPositionHeader size not matching"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1623
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1625
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1626
    .local v1, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    iget v3, v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1629
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addMediaIntoGroup(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v2, 0x1

    .line 1316
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->flushMapping()V

    .line 1317
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1318
    .local v0, "dateGroupCounts":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 1318
    goto :goto_0
.end method

.method public addMediaIntoGroup(Lcom/oneplus/gallery/media/Media;)Z
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1290
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v2

    .line 1291
    .local v2, "time":J
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->groupedMedia:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1292
    .local v1, "medialist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    if-nez v1, :cond_0

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "medialist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .restart local v1    # "medialist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1295
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->groupedMedia:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->addMediaIntoGroup(J)Z

    move-result v4

    return v4

    .line 1298
    :cond_2
    sget-object v4, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v1, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1299
    .local v0, "mediaindex":I
    if-gez v0, :cond_1

    .line 1301
    xor-int/lit8 v0, v0, -0x1

    .line 1302
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public calculateViewOffsetY(I)I
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v7, -0x1

    .line 1444
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1445
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;>;"
    const/4 v0, 0x0

    .line 1446
    .local v0, "headerItem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    const/4 v1, 0x0

    .line 1447
    .local v1, "isHeader":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1449
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "headerItem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1450
    .restart local v0    # "headerItem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget v8, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    if-gt v8, p1, :cond_2

    .line 1452
    iget v8, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    if-ne v8, p1, :cond_1

    const/4 v1, 0x1

    .line 1457
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .line 1459
    const/4 v4, 0x0

    .line 1460
    .local v4, "offset":I
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1462
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1463
    .local v5, "prevHeaderItem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget v2, v5, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    .line 1464
    .local v2, "itemCount":I
    int-to-double v8, v2

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 1465
    .local v6, "rowCount":I
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_HeaderHeight:I
    invoke-static {v8}, Lcom/oneplus/gallery/GridViewFragment;->access$6500(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v8

    add-int/2addr v4, v8

    .line 1466
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ItemHeight:I
    invoke-static {v8}, Lcom/oneplus/gallery/GridViewFragment;->access$6600(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v4, v8

    .line 1467
    add-int/lit8 v8, v2, 0x1

    sub-int/2addr p1, v8

    .line 1468
    goto :goto_2

    .line 1452
    .end local v2    # "itemCount":I
    .end local v4    # "offset":I
    .end local v5    # "prevHeaderItem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .end local v6    # "rowCount":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1455
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1469
    .restart local v4    # "offset":I
    :cond_3
    if-nez v1, :cond_4

    .line 1471
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_HeaderHeight:I
    invoke-static {v8}, Lcom/oneplus/gallery/GridViewFragment;->access$6500(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v8

    add-int/2addr v4, v8

    .line 1472
    add-int/lit8 p1, p1, -0x1

    .line 1473
    if-ltz p1, :cond_5

    .line 1474
    div-int/lit8 v7, p1, 0x4

    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ItemHeight:I
    invoke-static {v8}, Lcom/oneplus/gallery/GridViewFragment;->access$6600(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 1483
    .end local v4    # "offset":I
    :cond_4
    :goto_3
    return v4

    .line 1477
    .restart local v4    # "offset":I
    :cond_5
    iget-object v8, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/gallery/GridViewFragment;->access$6700(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculateViewOffsetY() - Incorrect position in group : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v7

    .line 1478
    goto :goto_3

    .end local v4    # "offset":I
    :cond_6
    move v4, v7

    .line 1483
    goto :goto_3
.end method

.method public clearAllHeaderInfo()V
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1341
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1342
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->groupedMedia:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1343
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->flushMapping()V

    .line 1344
    return-void
.end method

.method public findHeaderView(I)Landroid/view/View;
    .locals 3
    .param p1, "headerposition"    # I

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1604
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$5300(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1606
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_GridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$5300(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1612
    :goto_0
    return-object v0

    .line 1610
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$7500(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "findHeaderView() - m_GridLayoutManager is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findMediaForGroupPosition(Lcom/oneplus/gallery/media/Media;)I
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1720
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v2

    .line 1721
    .local v2, "time":J
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->groupedMedia:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1722
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    sget-object v1, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    return v1
.end method

.method public findMediaForUIPosition(Lcom/oneplus/gallery/media/Media;)I
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1698
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v0

    .line 1699
    .local v0, "time":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->findMediaForUIPosition(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public findMediaForUIPosition(Ljava/lang/Long;)I
    .locals 2
    .param p1, "time"    # Ljava/lang/Long;

    .prologue
    .line 1704
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1705
    .local v0, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v0, :cond_1

    .line 1707
    iget-boolean v1, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->isTodayHeader:Z

    if-eqz v1, :cond_0

    .line 1708
    iget v1, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 1710
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    goto :goto_0

    .line 1713
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public findTodayHeaderItem()Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .locals 4

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1678
    .local v0, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v0, :cond_0

    .line 1680
    .end local v0    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :goto_0
    return-object v0

    .restart local v0    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flushMapping()V
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderPosition:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1350
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->cacheHeaderTimeIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1351
    return-void
.end method

.method public getCameraItemForMediaPosition()I
    .locals 4

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1328
    .local v0, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->getCameraItemForMediaPosition()I

    move-result v1

    .line 1331
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupedandMediaCountMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    return-object v0
.end method

.method public getHeaderMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderTitleText(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1634
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1636
    .local v1, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget v2, v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    if-ne p1, v2, :cond_0

    .line 1637
    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->getHeaderDateText()Ljava/lang/String;

    move-result-object v2

    .line 1640
    .end local v1    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertCameraItem()V
    .locals 8

    .prologue
    .line 1685
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 1686
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->checkDate()V
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewFragment;->access$7900(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 1688
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1691
    .local v0, "datemillie":J
    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1692
    .local v2, "manualAddDate":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    return-void

    .line 1692
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public removeItem(Lcom/oneplus/gallery/media/Media;)I
    .locals 10
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 1652
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v4

    .line 1654
    .local v4, "time":J
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1655
    .local v2, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-nez v2, :cond_0

    .line 1657
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/gallery/GridViewFragment;->access$7700(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "removeItem() - can\'t get headeritem"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const/4 v1, 0x0

    .line 1672
    :goto_0
    return v1

    .line 1660
    :cond_0
    iget v1, v2, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    .line 1662
    .local v1, "headerIndex":I
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1664
    .local v0, "dateGroupCounts":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/oneplus/gallery/GridViewFragment;->access$7800(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeItem() - date key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1667
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->groupedMedia:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1670
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/gallery/media/Media;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setupHeaderInfo()Z
    .locals 18

    .prologue
    .line 1359
    const/4 v12, 0x0

    .line 1360
    .local v12, "previsousHeaderInfo":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    const/4 v11, 0x0

    .line 1361
    .local v11, "previsousHeaderGroupItemCounts":I
    const/4 v2, 0x0

    .line 1362
    .local v2, "dateTobeRemoved":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 1363
    .local v5, "headerIndex":I
    const/4 v9, 0x0

    .line 1364
    .local v9, "isNewGroup":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-virtual {v13}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1366
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    .line 1367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1369
    .local v6, "headeritem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    if-nez v6, :cond_5

    .line 1373
    new-instance v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .end local v6    # "headeritem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v14}, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;-><init>(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 1374
    .restart local v6    # "headeritem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iput v5, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    .line 1375
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    .line 1376
    const/4 v13, 0x0

    iput v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    .line 1381
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v15, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v14, v15}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1382
    const/4 v13, 0x1

    iput-boolean v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->isTodayHeader:Z

    .line 1384
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    iget v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    add-int/2addr v11, v13

    .line 1386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1388
    .local v10, "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget-object v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->dateInMilliSec:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_1

    .line 1390
    iget v14, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v14

    iput v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    .line 1391
    iget v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    goto :goto_2

    .line 1378
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :cond_2
    add-int v13, v5, v11

    add-int/lit8 v13, v13, -0x1

    iput v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    goto :goto_1

    .line 1395
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v9, 0x1

    .line 1427
    :cond_4
    move-object v12, v6

    .line 1428
    goto/16 :goto_0

    .line 1398
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v14, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v14, v13, :cond_6

    .line 1399
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v11, v13

    .line 1401
    goto/16 :goto_0

    .line 1404
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v14, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    sub-int v3, v13, v14

    .line 1405
    .local v3, "diff":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_7

    .line 1406
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "dateTobeRemoved":Ljava/lang/Long;
    check-cast v2, Ljava/lang/Long;

    .line 1407
    .restart local v2    # "dateTobeRemoved":Ljava/lang/Long;
    add-int/lit8 v3, v3, -0x1

    .line 1410
    :cond_7
    if-eqz v12, :cond_8

    .line 1411
    iget v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    add-int/2addr v13, v11

    add-int/lit8 v13, v13, -0x1

    iput v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    .line 1413
    :cond_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v6, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    .line 1415
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v11, v13

    .line 1416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;

    .line 1418
    .restart local v10    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    iget-object v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->dateInMilliSec:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_9

    .line 1419
    iget v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    add-int/2addr v13, v3

    iput v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    .line 1420
    if-eqz v2, :cond_9

    .line 1421
    iget v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    add-int/lit8 v13, v13, -0x1

    iput v13, v10, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    goto :goto_3

    .line 1430
    .end local v3    # "diff":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6    # "headeritem":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
    :cond_a
    if-eqz v2, :cond_b

    .line 1432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-virtual {v13, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->headerDateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v13, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v14, Lcom/oneplus/gallery/GridViewFragment;->PROP_CAMERA_ITEM_MEDIALIST_POSITION:Lcom/oneplus/base/PropertyKey;

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v13, v14, v15}, Lcom/oneplus/gallery/GridViewFragment;->access$6400(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;
    invoke-static {v13}, Lcom/oneplus/gallery/GridViewFragment;->access$2700(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/widget/FastScrollBar;

    move-result-object v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v14, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v13, v14}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1438
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery/widget/FastScrollBar;
    invoke-static {v13}, Lcom/oneplus/gallery/GridViewFragment;->access$2700(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/widget/FastScrollBar;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->ascSortedDateGroups:Ljava/util/TreeMap;

    invoke-virtual {v13, v14}, Lcom/oneplus/gallery/widget/FastScrollBar;->prepareGroupRowsAndHeight(Ljava/util/TreeMap;)V

    .line 1439
    :cond_c
    if-nez v2, :cond_d

    if-eqz v9, :cond_e

    :cond_d
    const/4 v13, 0x1

    :goto_4
    return v13

    :cond_e
    const/4 v13, 0x0

    goto :goto_4
.end method
