.class public Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;
.super Ljava/lang/Object;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderInfo"
.end annotation


# instance fields
.field public childCounts:I

.field public dateInMilliSec:Ljava/lang/Long;

.field public index:I

.field public isTodayHeader:Z

.field final synthetic this$1:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

.field public uiPosition:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "millisec"    # Ljava/lang/Long;
    .param p3, "counts"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 1262
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->this$1:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    .line 1258
    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    .line 1259
    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    .line 1260
    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->isTodayHeader:Z

    .line 1263
    iput-object p2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->dateInMilliSec:Ljava/lang/Long;

    .line 1264
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->childCounts:I

    .line 1265
    return-void
.end method


# virtual methods
.method public getCameraItemForMediaPosition()I
    .locals 2

    .prologue
    .line 1284
    iget v0, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->uiPosition:I

    iget v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHeaderDateText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->dateInMilliSec:Ljava/lang/Long;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->this$1:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    iget-object v2, v2, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->this$1:Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;

    iget-object v1, v1, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_HeaderToday:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$6300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    .line 1278
    :goto_0
    return-object v1

    .line 1275
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 1277
    .local v0, "format":Ljava/text/DateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1278
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$GridViewHeaderManager$HeaderInfo;->dateInMilliSec:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
