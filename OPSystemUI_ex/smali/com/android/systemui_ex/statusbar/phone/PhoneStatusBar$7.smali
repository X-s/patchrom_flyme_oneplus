.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 644
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J
    invoke-static {v8, v10, v11}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$1902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;J)J

    .line 654
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui_ex/statusbar/NotificationData;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/NotificationData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 655
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui_ex/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 657
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .line 658
    .local v3, "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    iget-object v8, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 660
    .local v7, "previouslyVisible":Z
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v8

    iget-object v9, v3, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->row:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8, v9}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v8

    and-int/lit8 v8, v8, 0x1d

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    .line 662
    .local v2, "currentlyVisible":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 664
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    .line 667
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "currentlyVisible":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 670
    .end local v3    # "entry":Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "previouslyVisible":Z
    :cond_3
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v6

    .line 671
    .local v6, "noLongerVisibleNotifications":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 673
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v8, v9, v6}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 676
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    .line 677
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 679
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 681
    return-void
.end method
