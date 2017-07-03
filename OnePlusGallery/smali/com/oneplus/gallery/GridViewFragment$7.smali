.class Lcom/oneplus/gallery/GridViewFragment$7;
.super Landroid/content/BroadcastReceiver;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$1500(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$4100(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver onReceive() - MediaList is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->clearSectionHeaderInfo()V
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$4200(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$4300(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver onReceive() - time changed"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    # setter for: Lcom/oneplus/gallery/GridViewFragment;->m_TimeZoneOffset:I
    invoke-static {v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->access$4402(Lcom/oneplus/gallery/GridViewFragment;I)I

    .line 674
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_TODAY_DATE_MILLIES:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->convertToLocalTime(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 675
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$7;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->reBuildDateHeaders()V
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$4500(Lcom/oneplus/gallery/GridViewFragment;)V

    goto :goto_0
.end method
