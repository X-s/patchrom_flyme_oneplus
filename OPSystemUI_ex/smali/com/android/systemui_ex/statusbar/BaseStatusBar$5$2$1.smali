.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2$1;->this$2:Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 609
    return-void
.end method
