.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    .local v0, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 551
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-void
.end method
